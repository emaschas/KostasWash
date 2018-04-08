//-----------------------------------------------------------------------------------
// State machine for Washing Cycles
//-----------------------------------------------------------------------------------

#include "Hardware.h"
#include "Washing.h"
#include <stdlib.h>

#define NO_WASH 0xFF

enum RotationStatus 
{
  NO_ROTATION,
  RUN1_ROTATION,
  RUN2_ROTATION,
  PAUSE_ROTATION,
  STOP_ROTATION
};

// Washing programs definitions
// ----------------------------
#include "Programs.h"

// Shared Variables
// ----------------
volatile uint8_t  WashStep = NO_WASH;
volatile uint8_t  RotationState = NO_ROTATION;
volatile uint8_t  SelectedProgram = 0;
volatile uint16_t CurrentMask;

void SelectProgram(uint8_t programme)
{
  SelectedProgram = (programme % PROGRAM_COUNT);
  DisplayProgram();
}


//-----------------------------------------------------------------------------------
// Rotation State Machine
//-----------------------------------------------------------------------------------

void StartRotation(void) { RotationState = RUN1_ROTATION; }
void  StopRotation(void) { RotationState = STOP_ROTATION; }

void RotationControl(void)
{
  static uint8_t   AfterPause;
  if((CountDown2 == 0 && RotationState != NO_ROTATION) || RotationState == STOP_ROTATION) 
  {
    DisplayRotationStatus();
    switch(RotationState)
    {
      case RUN1_ROTATION:
        PORTA = ~((CurrentMask | MOTOR) & 0xFF);       // Motor forward
        PORTC = ~((CurrentMask | MOTOR) >> 8);
        CountDown2 = seconds(3);                       // Duration : 3 sec.
        RotationState = PAUSE_ROTATION;
        AfterPause    = RUN2_ROTATION;
      break;
      case RUN2_ROTATION:
        PORTA = ~((CurrentMask | MOTOR | REV) & 0xFF); // Motor reverse
        PORTC = ~((CurrentMask | MOTOR | REV) >> 8);
        CountDown2 = seconds(3);                       // Duration : 3 sec.
        RotationState = PAUSE_ROTATION;
        AfterPause    = RUN1_ROTATION;
      break;
      case PAUSE_ROTATION:
        PORTA = ~(CurrentMask & 0xFF);                 // Stop motor
        PORTC = ~(CurrentMask >> 8);
        CountDown2 = seconds(1);                       // Duration : 1 sec.
        RotationState = AfterPause;
      break;
      case STOP_ROTATION:
        PORTA = ~(CurrentMask & 0xFF);                 // Stop motor
        PORTC = ~(CurrentMask >> 8);
        RotationState = NO_ROTATION;
        DisplayRotationStatus();
      break;
    }
  }
}


//-----------------------------------------------------------------------------------
// Washing State Machine
//-----------------------------------------------------------------------------------

uint8_t NoWash(void) { return WashStep == NO_WASH; }

void StartWash(void) 
{ 
  LCD_cls();
  WashStep = 0; // First step of the program
}

void AbortWash(void) 
{ 
  WashStep = NO_WASH;
  StopRotation();
  PORTA = 0xFF;
  PORTC = 0xFF;
  CountDown1 = 0;
  DisplayProgram();
}

void WashControl(void)
{
  if(CountDown1 == 0 && WashStep != NO_WASH)
  {
    if( Programs[SelectedProgram]->Step[WashStep].end != 0 )
    {
      WashStep = NO_WASH;
      DisplayProgram();
      return;
    }
    DisplayWashStatus();
    if( Programs[SelectedProgram]->Step[WashStep].rotation != 0 ) StartRotation(); else StopRotation();
    CurrentMask = pgm_read_word(Programs[SelectedProgram]->Step[WashStep].mask);
    PORTA = ~(CurrentMask & 0xFF);
    PORTC = ~(CurrentMask >> 8);
    CountDown1 = pgm_read_dword(Programs[SelectedProgram]->Step[WashStep].duration);
    WashStep++;
  }
}

//-----------------------------------------------------------------------------------
// Display Status
//-----------------------------------------------------------------------------------

char RotationText[] =
{
  ' ',
  '<',
  '>',
  '-',
  '='
};

void DisplayRotationStatus(void)
{
  LCD_move(0,15);
  LCD_putc(RotationText[RotationState]);
}

void DisplayWashStatus(void)
{
  char txt[10];
  if(WashStep != NO_WASH )
  {
    LCD_move(0,0);
    sprintf(txt, "%02u", WashStep);
    LCD_puts(txt);
    LCD_move(0,3);
    LCD_puts(WashText[(WashStep==NO_WASH ? 0 : Programs[SelectedProgram]->Step[WashStep].text)]);
  }
}

void DisplayProgram(void)
{
  LCD_move(0,0);
  LCD_puts(Programs[SelectedProgram]->Text);
}
