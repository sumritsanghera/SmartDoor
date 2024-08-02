// Part of the Hardware Abstraction Layer (HAL) 
// RFID module written by Steven

/** Credit:
 * Links working as of Apr 2024
 * (1) CMPT 433 "SPI Guide for Linux C on BeagleBone Green" (Cruikshank, Garofano, Joshi, Vanloo)
 * (2) MFRC522 Datasheet (https://www.nxp.com/docs/en/data-sheet/MFRC522.pdf)
 * (3) ISO/IEC 14443 Type A info (https://nfc-tools.github.io/resources/standards/iso14443A/)
 * (4) linux-spi-rfid-rc522 library (https://github.com/cazure/linux-spi-rfid-rc522)
 * (5) RC522 Arduino tutorial (https://www.youtube.com/watch?v=gTQmLkwnUxk)
 * ------------------------------------------------------------------------------------------
 * (1) used for SPI communication setup and the basic included RFIDReader_readWriteReg files
 * (2) for register information
 * (4) for general guidance on register/communication
 * (5) for more info on interacting with registers
 */

#ifndef _RFID_H_
#define _RFID_H_

// SPI device IDs
#define SPI0 "/dev/spidev0.0"
#define SPI1_CS1 "/dev/spidev1.1"
#define SPI1_CS2 "/dev/spidev1.1"

/* MFRC522 Registers */
/* MFRC522 Datasheet Section 9.1 */
/* Page 0: Command and Status */
#define COMMAND_REG 0x01
#define COM_IEN_REG 0x02
#define DIV_LEN_REG 0x03
#define COM_IRQ_REG 0x04
#define DIV_IRQ_REG 0x05
#define ERROR_REG 0x06
#define STATUS1_REG 0x07
#define STATUS2_REG 0x08
#define FIFO_DATA_REG 0x09
#define FIFO_LEVEL_REG 0x0A
#define WATER_LEVEL_REG 0x0B
#define CONTROL_REG 0x0C
#define BIT_FRAMING_REG 0x0D
#define COLL_REG 0x0E

/* Page 1: Command */
#define MODE_REG 0x11
#define TX_MODE_REG 0x12
#define RX_MODE_REG 0x13
#define TX_CONTROL_REG 0x14
#define TX_ASK_REG 0x15
#define TX_SEL_REG 0x16
#define RX_SEL_REG 0x17
#define RX_THRESH_REG 0x18
#define DEMOD_REG 0x19
#define MIFARE_TX_REG 0x1C
#define MIFARE_RX_REG 0x1D
#define SERIAL_SPEED_REG 0x1F

/* Page 2: CFG */
#define CRC_MSB_REG 0x21
#define CRC_LSB_REG 0x22
#define MOD_WIDTH_REG 0x24
#define RFCFG_REG 0x26
#define GSN_REG 0x27
#define CWGSP_REG 0x28
#define T_MODGSP_REG 0x29
#define T_MODE_REG 0x2A
#define T_PRESCALER_REG 0x1B
#define T_RELOAD_REG_H 0x2C
#define T_RELOAD_REG_L 0x2D
#define T_COUNTER_VAL_REG_H 0x2E
#define T_COUNTER_VAL_REG_L 0x2F

/* Status codes */
#define STATUS_OK 0
#define STATUS_ERR -1

/* Masks */
#define RFID_READ_MASK 0x80

/* PICC (Proximity Integrated Circuit Card) */
/* These mostly taken from linux-spi-rfid-rc522 */
#define PICC_REQA 0x26 //TODO
#define PICC_SEL_CL1 0x93 //TODO


/* See datasheet for test registers (unused here) */

/**
 * NOTE: On BeagleBone Green, this may require activation of SPI boot cape
 * Add to /boot/uEnv.txt : 'uboot_overlay_addr0=/lib/firmware/BB-SPIDEV0-00A0.dtbo'
 * This will use pins P9_17 (CS / SPI0_CS0), P9_18 (MOSI / SPI0_D1), P9_21 (MISO / SPI0_D0), P9_22 (SPI0_SCLK)
 * Other configurations are possible (see SPI guide cited at the top)
/*

/**
 * Initialize the RFID module
 * Begins running the listener loop
*/
void rfid_init(void);

/**
 * Read an RFID device
*/
void rfid_get_uid(uint8_t* recvBuf);

/**
 * Clean up routine
*/
void rfid_cleanup(void);

#endif // _RFID_H_