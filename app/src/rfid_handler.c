#include <stdlib.h> 
#include <stdio.h> 
#include <pthread.h> 
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include "../include/utils.h"
#include "../include/pru.h"
#include "../include/rfid_handler.h"
#include "../include/rfid_logger.h"
#include "../include/shared_data_struct.h"
#include "../../hal/include/hal/display.h"

#include "hal/RFIDReader.h"
#include "hal/joystick.h"

// static bool is_initialized = false;
static bool cancel_thread = false;

static pthread_t thread_id;

#define MAXIMUM_RFID_TAGS 256
static rfid_tag tags[MAXIMUM_RFID_TAGS];
static int num_tags = 0;

/* Function prototypes */
static void* rfid_handler_start();
static void printTags();
static bool tagExists(uint32_t uid);
static void addTag(uint32_t uid, int permission);
static void removeTag(uint32_t uid);


/* Initialization */
void rfid_handler_init(){
 
    printf("rfid_handler - initializing\n");

    // Initialize the RFID reader
    // Using /dev/spidev1.0 and GPIO P9_23
    RFIDReader_init(1, 0, "p9_23", 49);

    // Initialize storage
    // memset(tags, 0, sizeof(tags)); //TODO idk if needed

    // assert(!is_initialized);
    // is_initialized = true; //TODO ?

    pthread_create(&thread_id, NULL, rfid_handler_start, NULL);
    
}


/* Running the main loop */
static void* rfid_handler_start() {

    while (!cancel_thread) {
        uint64_t uid = 0;
        enum MFRC522_StatusCode status = RFIDReader_requestPiccAndGetUID(&uid);

        // Bit shift correction
        uint32_t uid_shift = (uint32_t)(uid >> 8);

        // If something was read, store it
        if (uid != 0) {
            // if (joystick_get_input())
            addTag(uid_shift, joystick_get_input() == LEFT ? 1 : 0);
        }

        // Read in 1s intervals (reduce buzzer noise)
        // Sleep depends on whether or not a tag was found
        if (uid != 0) {
            sleep_for_ms(50);
        } else {
            sleep_for_ms(1000);
        }
    }
}


/* Print all stored tags */
static void printTags() {

    // Header
    printf("UID\tPERM\tLAST\n");

    for (int i = 0; i < num_tags; i++) {
        printf("0x%08x\t%d\t%d\n", tags[i].uid, tags[i].allowed, tags[i].last_seen);
    }
}


/* Add an RFID tag to storage */
static void addTag(uint32_t uid, int permission) {

    if (tagExists(uid)) {
        rfid_tag tag = getTag(uid);

        // Update the 'last seen' time
        tag.last_seen = time(NULL);

        // Log entry stuff
        char log_msg[256];
        char time_buff[80];
        strftime(time_buff, sizeof(time_buff), "%Y-%m-%d %H:%M:%S", localtime(&(tag.last_seen)));
        sprintf(log_msg, "%s [KNOWN TAG] UID 0x%08x (allowed=%d)\n", time_buff, tag.uid, tag.allowed);
        enqueueLog(log_msg);

        // Print statement
        const char* accessStatus = tag.allowed ? "\033[32mACCESS GRANTED\033[0m" : "\033[31mACCESS DENIED\033[0m"; // 32: green, 31: red
        printf("rfid addTag() : Tag 0x%08x (allowed=%d) [%s]\n", tag.uid, tag.allowed, accessStatus);
        return;
    }

    if (num_tags < MAXIMUM_RFID_TAGS) { 
        tags[num_tags].uid = uid;
        tags[num_tags].allowed = permission;
        tags[num_tags].last_seen = time(NULL);
        num_tags++;

        // Log entry stuff
        char log_msg[256];
        char time_buff[80];
        struct tm *tm_now = localtime(&(tags[num_tags-1].last_seen));
        strftime(time_buff, sizeof(time_buff), "%Y-%m-%d %H:%M:%S", tm_now);
        sprintf(log_msg, "%s [NEW TAG] UID 0x%08x (allowed=%d)\n", time_buff, tags[num_tags-1].uid, tags[num_tags-1].allowed);
        enqueueLog(log_msg);

        printf("rfid addTag() : Added tag 0x%08x\n", uid);
    } else {
        printf("ERROR rfid addTag() : Array is full\n");
    }
}


/* Remove an RFID tag from storage */
static void removeTag(uint32_t uid) {
    int found = 0;
    for (int i = 0; i < num_tags; i++) {
        if (tags[i].uid == uid) {
            found = 1;
        }
        if (found && i < num_tags-1) {
            // Shifting tags to fill gap
            tags[i] = tags[i+1];
        }
    }

    if (found) {
        num_tags--;

        // Log entry stuff
        char log_msg[256];
        char time_buff[80];
        time_t now = time(NULL);
        struct tm *tm_now = localtime(&now);
        strftime(time_buff, sizeof(time_buff), "%Y-%m-%d %H:%M:%S", tm_now);
        sprintf(log_msg, "%s [TAG REMOVED] UID 0x%08x (allowed=%d)\n", time_buff, uid);
        enqueueLog(log_msg);
    } else {
        printf("rfid removeTag() : Tag 0x%08x not found\n", uid); //TODO remove
    }
}


/* Check if a tag is already stored */
static bool tagExists(uint32_t uid) {
    for (int i = 0; i < num_tags; i++) {
        if (tags[i].uid == uid) {
            return true;
        }
    }
    return false;
}


/* Get a tag given its uid */
rfid_tag getTag(uint32_t uid) {
    for (int i = 0; i < num_tags; i++) {
        if (tags[i].uid == uid) {
            return tags[i];
        }
    }

    printf("ERROR rfid getTag() : tag 0x%08x not found\n", uid);

    return tags[0]; //TODO return something else
}


/* Get all tags (pointer) */
rfid_tag* rfid_get_all_tags() {
    return tags;
}


/* Getter to get number of tags */
int rfid_get_num_tags(){
    return num_tags;
}


/* Get thread for cleanup */
pthread_t rfid_handler_get_pthread_id(){
    return thread_id;
}


/* Cleanup function */
void rfid_handler_cleanup(){

    // is_initialized = false;
    cancel_thread = true;
    printf("rfid_handler - cleanup\n");

}