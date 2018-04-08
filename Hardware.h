/////////////////////////////////////////////
// KostasWash v1.1                         //
// ---------------                         //
// Target CPU : Atmega8535 at 8MHz (int.)  //
/////////////////////////////////////////////

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include "TIMER.h"
#include "LCD.h"

//-----------------------------------------------------------------------------------
// WIRING
//-----------------------------------------------------------------------------------
// Human Interface
//-----------------------------------------------------------------------------------
// Encoder:
//   PD2 : Switch 
//   PD3 : Clock
//   PD4 : Data
// LCD Display
//   PD7 : LCD_EN
//   PB0 : LCD_RS
//   PB3 : LCD_DB4
//   PB2 : LCD_DB5
//   PD6 : LCD_DB6
//   PD5 : LCD_DB7
//-----------------------------------------------------------------------------------
// Washing machine 
//-----------------------------------------------------------------------------------------------------------------------------
// PA1 : Relay R01 Verrou porte      COM : (6E)                        NO : (5E) Verrou electrique        NC : (??) STOP light
// PA0 : Relay R02 Vanne froid       COM : COM.R03+R10+R11 Hydrostat   NO : (4E) Electrovanne froid       NC : -
// PA3 : Relay R03 vanne chaud       COM : COM.R02+R10+R11 Hydrostat   NO : (3D)                          NC : -
// PA2 : Relay R04 Chauffe           COM : (6E)                        NO : (12C) Résistance chauffante   NC : -
// PA5 : Relay R05 Vidange           COM : (6E)                        NO : (11C) Pompe de vidange        NC : -
// PA4 : Relay R06 Marche moteur     COM : (6E)                        NO : COM.R07 Inversion moteur      NC : -
// PA7 : Relay R07 Inversion moteur  COM : NO.R06                      NO : (6D) + COM.R08 Vitesse lavage NC : (2E)
// PA6 : Relay R08 Vitesse lavage    COM : NO.R06                      NO : (2C)                          NC : (2D)
// PC7 : Relay R09 Vitesse essorage  COM : NO.R06                      NO : (6C)                          NC : (4D)
// PC3 : Relay R10 Niveau d'eau A    COM : COM.R02+R03 Electrovannes   NO : (8C)                          NC : (7C) Hydrostat A
// PC6 : Relay R11 Niveau d'eau B    COM : COM.R02+R03 Electrovannes   NO : (8C)                          NC : (7C) Hydrostat B
// PC2 : Relay R12 nc
// PC5 : Relay R13 nc
// PC1 : Relay R14 nc
// PC4 : Relay R15 nc
// PC0 : Relay R16 nc
//-----------------------------------------------------------------------------------------------------------------------------

#define false   0
#define true  (!0)
#define off     0
#define on      1

// Shared Enumerations
// -------------------
enum SwitchStatus 
{ 
  NO_PRESS,
  SHORT_PRESS,
  LONG_PRESS
};

// Macros for Encoder
// ------------------
#define SWITCH     (PIND  &  _BV(PIND2))
#define ENCODER_A  (PIND  &  _BV(PIND3))
#define ENCODER_B  (PIND  &  _BV(PIND4))

// Masks definition for "step"
// ---------------------------
// PORTA : MSB - PORTC : LSB
#define LOCK   (_BV(1))            // R01 - PINA1 - DOOR LOCK
#define LEV1   0                   // Level 1 is always available
#define LEV2   (_BV(0))            // R02 - PINA0 - WATER LEVEL 2
#define LEV3   (_BV(3))            // R03 - PINA3 - WATER LEVEL 3
#define EVCOLD (_BV(2))            // R04 - PINA2 - ELECTROVALVE COLD WATER
#define EVHOT  (_BV(5))            // R05 - PINA5 - ELECTROVALVE HOT WATER
#define HEAT   (_BV(4))            // R06 - PINA4 - HEATER ON
#define DRAIN  (_BV(7))            // R07 - PINA7 - DRAIN PUMP
#define MOTOR  (_BV(6))            // R08 - PINA6 - WASH/SPIN MOTOR ON
#define REV    (_BV(7+8))          // R09 - PINC7 - REVERSE MOTOR DIRECTION
#define SPIN   (_BV(3+8)|_BV(6+8)) // R10+R11 - PINC3+PINC6 - SPIN SPEED (ELSE WASH SPEED)
#define R12    (_BV(2+8))          // R12 - PINC2 - NOT USED
#define R13    (_BV(5+8))          // R13 - PINC5 - NOT USED
#define R14    (_BV(1+8))          // R14 - PINC1 - NOT USED
#define R15    (_BV(4+8))          // R15 - PINC4 - NOT USED
#define R16    (_BV(0+8))          // R16 - PINC0 - NOT USED


// TEMPORARY
#define R03  0
#define R06  0
#define R07  0
#define R08  0
#define R09  0
#define R10  0
#define RELAY01_ON()
#define RELAY01_OFF()
#define RELAY02_ON()
#define RELAY02_OFF()





