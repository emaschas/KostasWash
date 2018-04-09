//-----------------------------------------------------------------------------------
// State machine for Washing Cycles
//-----------------------------------------------------------------------------------

#include "Hardware.h"
#include "Test.h"
#include <stdlib.h>
#include <avr/pgmspace.h>

//-----------------------------------------------------------------------------------
// MASKS DEFINITIONS
//-----------------------------------------------------------------------------------


#define NB_MASKS 15

typedef struct 
{
  uint16_t Mask;
  char     Text[16];
} 
MaskStruct;

MaskStruct Masks[NB_MASKS] PROGMEM =
{
  { LOCK,     "LOCK   " },
  { LEV2,     "LEV2   " },
  { LEV3,     "LEV3   " },
  { EVCOLD,   "EVCOLD " },
  { EVHOT,    "EVHOT  " },
  { HEAT,     "HEAT   " },
  { DRAIN,    "DRAIN  " },
  { MOTOR,    "MOTOR  " },
  { REV,      "REV    " },
  { SPIN,     "SPIN   " },
  { R12,      "R12    " },
  { R13,      "R13    " },
  { R14,      "R14    " },
  { R15,      "R15    " },
  { R16,      "R16    " } 
};

//-----------------------------------------------------------------------------------
// TOGGLE RELAYS
//-----------------------------------------------------------------------------------

void ToggleRelay(uint8_t relay)
{
  uint16_t Mask = pgm_read_word(&Masks[relay % NB_MASKS].Mask);
  PORTA ^= (Mask & 0xFF); // Xor = Toggle bits
  PORTC ^= (Mask >> 8);
}

//-----------------------------------------------------------------------------------
// DISPLAY CHOICE AND STATUS
//-----------------------------------------------------------------------------------

void DisplayChoice(uint8_t relay)
{
  char txt[10];
  LCD_move(0,0);
  LCD_puts_P(Masks[relay % NB_MASKS].Text);
  if(pgm_read_word(&Masks[relay % NB_MASKS].Mask) & ( PORTA | PORTC << 8)) 
    LCD_puts("OFF "); // Inverted logic : 1=Off
  else
    LCD_puts("ON  "); // Inverted logic : 0=On
  sprintf(txt, "%04X", ~(PORTA | PORTC << 8));
  LCD_puts(txt);
}
