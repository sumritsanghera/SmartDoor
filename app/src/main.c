#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>
#include <pthread.h>

#include "hal/buzzer.h"
#include "hal/display.h"
#include "hal/motion_sensor.h"
#include "hal/servo.h"
<<<<<<< HEAD
#include "../../hal/include/hal/neopixel.h"

int main() {

    printf("works\n");
    neopixel_init();
    neopixel_is_door_locked(1);
    sleep(10);
    neopixel_is_door_locked(0);
    sleep(10);
    neopixel_cleanup();

    // buzzer_init();
    // display_init();
    // motion_sensor_init();
    // servo_init();
    // udp_init();

    // display_handler_init();
    // door_handler_init();
=======
#include "hal/RFIDReader.h"

#include "display_handler.h"
#include "rfid_handler.h"
#include "door_handler.h"
#include "udp_listener.h"
#include "rfid_logger.h"
#include "utils.h"

int main() {


    buzzer_init();
    display_init();
    motion_sensor_init();
    servo_init();
    udp_init();
    rfid_handler_init();
    rfid_logger_init();
    display_handler_init();  
    door_handler_init();

    // will wait because door handler has acquired the thread beforehand
    pthread_mutex_lock(door_handler_get_mutex_cleanup_lock());
>>>>>>> main

    // // //will wait because door handler has acquired the thread beforehand
    // pthread_mutex_lock(door_handler_get_mutex_cleanup_lock());

<<<<<<< HEAD
    // door_handler_cleanup();
    // display_handler_cleanup();

    // pthread_join(display_handler_get_pthread_id(), NULL);
    // pthread_join(door_handler_get_pthread_id(), NULL);
    // pthread_join(udp_get_pthread_id(), NULL);
=======
    pthread_join(display_handler_get_pthread_id(), NULL);
    pthread_join(door_handler_get_pthread_id(), NULL);
    pthread_join(udp_get_pthread_id(), NULL);
    pthread_join(rfid_handler_get_pthread_id(), NULL);
    pthread_join(rfid_logger_get_pthread_id(), NULL);

    printf("done pthread join\n");

    servo_cleanup();
    motion_sensor_cleanup();
    display_cleanup();
    buzzer_cleanup();
    rfid_handler_cleanup();
    rfid_logger_cleanup();
>>>>>>> main

    // servo_cleanup();
    // motion_sensor_cleanup();
    // display_cleanup();
    // buzzer_init();

    // pthread_mutex_unlock(door_handler_get_mutex_cleanup_lock());
    // pthread_mutex_destroy(door_handler_get_mutex_cleanup_lock());

}