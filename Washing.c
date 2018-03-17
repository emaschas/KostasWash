//-----------------------------------------------------------------------------------
// State machine for Washing Cycles
//-----------------------------------------------------------------------------------

#include "KostasWash.h"
#include "Washing.h"
#include <stdlib.h>

char* WashText[] =
{
  "Ready  ", // 0
  "Start  ", // 1
  "Prewash", // 2
  "Wash   ", // 3
  "Drain  ", // 4
  "Spin   ", // 5
  "Finish ", // 6
  "Pause  ", // 7
  "Abort  "  // 8
};
#define wREADY  0
#define wSTART  1
#define wPRE    2
#define wWASH   3
#define wDRAIN  4
#define wSPIN   5
#define wFINISH 6
#define wPAUSE  7
#define wABORT  8

//---TEST---------
step prog[] =
{
  // Duration    rot. end      txt   mask
  { seconds( 3),   0,   0,  wSTART,  R03|R09 }, // Wash Program 1
  { seconds(15),   1,   0,    wPRE,  R04|R10 }, // Prewash
  { seconds( 2),   0,   0,  wPAUSE,  R05|R11 }, // Pause
  { seconds(15),   1,   0,   wWASH,  R06|R12 }, // Wash
  { seconds( 2),   0,   0,  wPAUSE,  R07|R13 }, // Pause
  { seconds( 5),   0,   0,  wDRAIN,  R08|R14 }, // 
  { seconds( 2),   0,   0,  wPAUSE,  R09|R15 }, // Pause
  { seconds( 5),   0,   0,   wSPIN,  R10|R16 },
  { seconds( 2),   0,   0,  wPAUSE,  R09|R15 }, // Pause
  { seconds( 0),   0,   1, wFINISH,  0       } // End of Program 1
};


// Shared Variables
// ----------------
volatile uint8_t  WashState = NO_WASH;
volatile uint8_t  RotationState = NO_ROTATION;

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
        RELAY01_OFF();             // Rotation direction 1
        RELAY02_ON();              // Start Motor
        CountDown2 = seconds(3);   // Duration : 3 sec.
        RotationState = PAUSE_ROTATION;
        AfterPause    = RUN2_ROTATION;
      break;
      case RUN2_ROTATION:
        RELAY01_ON();               // Rotation direction 2
        RELAY02_ON();               // Start Motor
        CountDown2 = seconds(3);    // Duration : 3 sec.
        RotationState = PAUSE_ROTATION;
        AfterPause    = RUN1_ROTATION;
      break;
      case PAUSE_ROTATION:
        RELAY02_OFF();              // Stop Motor
        CountDown2 = seconds(1);    // Duration : 1 sec.
        RotationState = AfterPause;
      break;
      case STOP_ROTATION:
        RELAY01_OFF();              // Rotation direction off
        RELAY02_OFF();              // Stop Motor
        RotationState = NO_ROTATION;
        DisplayRotationStatus();
      break;
    }
  }
}


//-----------------------------------------------------------------------------------
// Washing State Machine
//-----------------------------------------------------------------------------------

uint8_t NoWash(void) { return WashState == NO_WASH; }
void StartWash(void) { WashState = 0; }

void AbortWash(void) 
{ 
  WashState = NO_WASH;
  StopRotation();
  PORTA = 0xFF;
  PORTC = 0xFF;
  DisplayWashStatus();
  CountDown1 = 0;
}

void WashControl(void)
{
  if(CountDown1 == 0 && WashState != NO_WASH)
  {
    if( prog[WashState].end != 0 )
    {
      WashState = NO_WASH;
      DisplayWashStatus();
      return;
    }
    if( prog[WashState].text != 0 ) DisplayWashStatus();
    if( prog[WashState].rotation != 0 ) StartRotation(); else StopRotation();
    PORTA = ~(prog[WashState].mask & 0xFF);
    PORTC = ~(prog[WashState].mask >> 8);
    CountDown1 = prog[WashState].duration;
    WashState++;
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
  LCD_move(0,0);
  sprintf(txt, "%02X", WashState);
  LCD_puts(txt);
  LCD_move(0,3);
  LCD_puts(WashText[(WashState==NO_WASH?0:prog[WashState].text)]);
}
