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
//-----------------------------------------------------------------------------------
//   PA1 : Relay R01
//   PA0 : Relay R02
//   PA3 : Relay R03
//   PA2 : Relay R04
//   PA5 : Relay R05
//   PA4 : Relay R06
//   PA7 : Relay R07
//   PA6 : Relay R08
//   PC7 : Relay R09
//   PC3 : Relay R10
//   PC6 : Relay R11
//   PC2 : Relay R12
//   PC5 : Relay R13
//   PC1 : Relay R14
//   PC4 : Relay R15
//   PC0 : Relay R16
//-----------------------------------------------------------------------------------

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

