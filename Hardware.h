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

// Macros for Relays
// -----------------
// Inverted logic : 1=relay off 0=relay on
#define RELAY01_OFF()  PORTA |=  _BV(PINA1)
#define RELAY01_ON()   PORTA &= ~_BV(PINA1)
#define RELAY02_OFF()  PORTA |=  _BV(PINA0)
#define RELAY02_ON()   PORTA &= ~_BV(PINA0)
#define RELAY03_OFF()  PORTA |=  _BV(PINA3)
#define RELAY03_ON()   PORTA &= ~_BV(PINA3)
#define RELAY04_OFF()  PORTA |=  _BV(PINA2)
#define RELAY04_ON()   PORTA &= ~_BV(PINA2)
#define RELAY05_OFF()  PORTA |=  _BV(PINA5)
#define RELAY05_ON()   PORTA &= ~_BV(PINA5)
#define RELAY06_OFF()  PORTA |=  _BV(PINA4)
#define RELAY06_ON()   PORTA &= ~_BV(PINA4)
#define RELAY07_OFF()  PORTA |=  _BV(PINA7)
#define RELAY07_ON()   PORTA &= ~_BV(PINA7)
#define RELAY08_OFF()  PORTA |=  _BV(PINA6)
#define RELAY08_ON()   PORTA &= ~_BV(PINA6)
#define RELAY09_OFF()  PORTC |=  _BV(PINC7)
#define RELAY09_ON()   PORTC &= ~_BV(PINC7)
#define RELAY10_OFF()  PORTC |=  _BV(PINC3)
#define RELAY10_ON()   PORTC &= ~_BV(PINC3)
#define RELAY11_OFF()  PORTC |=  _BV(PINC6)
#define RELAY11_ON()   PORTC &= ~_BV(PINC6)
#define RELAY12_OFF()  PORTC |=  _BV(PINC2)
#define RELAY12_ON()   PORTC &= ~_BV(PINC2)
#define RELAY13_OFF()  PORTC |=  _BV(PINC5)
#define RELAY13_ON()   PORTC &= ~_BV(PINC5)
#define RELAY14_OFF()  PORTC |=  _BV(PINC1)
#define RELAY14_ON()   PORTC &= ~_BV(PINC1)
#define RELAY15_OFF()  PORTC |=  _BV(PINC4)
#define RELAY15_ON()   PORTC &= ~_BV(PINC4)
#define RELAY16_OFF()  PORTC |=  _BV(PINC0)
#define RELAY16_ON()   PORTC &= ~_BV(PINC0)

// Masks definition for "step"
// ---------------------------
// PORTA : MSB - PORTC : LSB
#define R01 _BV(1)   // PINA1
#define R02 _BV(0)   // PINA0
#define R03 _BV(3)   // PINA3
#define R04 _BV(2)   // PINA2
#define R05 _BV(5)   // PINA5
#define R06 _BV(4)   // PINA4
#define R07 _BV(7)   // PINA7
#define R08 _BV(6)   // PINA6
#define R09 _BV(7+8) // PINC7
#define R10 _BV(3+8) // PINC3
#define R11 _BV(6+8) // PINC6
#define R12 _BV(2+8) // PINC2
#define R13 _BV(5+8) // PINC5
#define R14 _BV(1+8) // PINC1
#define R15 _BV(4+8) // PINC4
#define R16 _BV(0+8) // PINC0

