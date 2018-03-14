//-----------------------------------------------------------------------------------
// State machine for Washing Cycles
//-----------------------------------------------------------------------------------

#include "KostasWash.h"
#include "Washing.h"

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
  if((countDown2() == 0 && RotationState != NO_ROTATION) || RotationState == STOP_ROTATION) 
  {
    DisplayStatus();
    switch(RotationState)
    {
      case RUN1_ROTATION:
        RELAY01_OFF();             // Rotation direction 1
        RELAY02_ON();              // Start Motor
        startTimer2(seconds(3));   // Duration : 3 sec.
        RotationState = PAUSE_ROTATION;
        AfterPause    = RUN2_ROTATION;
      break;
      case RUN2_ROTATION:
        RELAY01_ON();               // Rotation direction 2
        RELAY02_ON();               // Start Motor
        startTimer2(seconds(3));    // Duration : 3 sec.
        RotationState = PAUSE_ROTATION;
        AfterPause    = RUN1_ROTATION;
      break;
      case PAUSE_ROTATION:
        RELAY02_OFF();              // Stop Motor
        startTimer2(seconds(1));    // Duration : 1 sec.
        RotationState = AfterPause;
      break;
      case STOP_ROTATION:
        RELAY01_OFF();              // Rotation direction off
        RELAY02_OFF();              // Stop Motor
        RotationState = NO_ROTATION;
      break;
    }
  }
}


//-----------------------------------------------------------------------------------
// Washing State Machine
//-----------------------------------------------------------------------------------

uint8_t NoWash(void) { return WashState == NO_WASH; }
void StartWash(void) { WashState = START_WASH; }
void AbortWash(void) { WashState = ABORT_WASH; }

void WashControl(void)
{
  static uint8_t  AfterPause;
  if((countDown1() == 0 && WashState != NO_WASH) || WashState == ABORT_WASH)
  {
    DisplayStatus();
    switch(WashState)
    {
      case START_WASH:
        startTimer1(seconds(2));
        WashState = PRE_WASH;
      break;
      case PRE_WASH:
        StartRotation();
        startTimer1(minutes(1));
        WashState = PAUSE_WASH;
        AfterPause = MAIN_WASH;
      break;
      case MAIN_WASH:
        startTimer1(minutes(1));
        WashState = PAUSE_WASH;
        AfterPause = RINCE;
        StopRotation();
      break;
      case RINCE:
        startTimer1(minutes(1));
        WashState = DRY;
      break;
      case DRY:
        startTimer1(minutes(1));
        WashState = END_WASH;
      break;
      case PAUSE_WASH:
        startTimer1(seconds(2));
        WashState = AfterPause;
      break;
      case END_WASH:
      case ABORT_WASH:
        WashState = NO_WASH;
      break;
    }
  }
}

//-----------------------------------------------------------------------------------
// Display Status
//-----------------------------------------------------------------------------------

void DisplayStatus(void)
{
  char* WashText[] =
  {
    "No     ",
    "Start  ",
    "Prewash",
    "Wash   ",
    "Rince  ",
    "Dry    ",
    "Finish ",
    "Pause  ",
    "Abort  "
  };
  char* RotationText[] =
  {
    "No    ",
    "Turn +",
    "Turn -",
    "Pause ",
    "Stop  "
  };
  LCD_move(0,0);
  LCD_puts(RotationText[RotationState]);
  LCD_move(0,9);
  LCD_puts(WashText[WashState]);
}
