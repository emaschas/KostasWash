//-----------------------------------------------------------------------------------
// State machine for Washing Cycles
//-----------------------------------------------------------------------------------

#include "KostasWash.h"
#include "Washing.h"


//---TEST---------
step prog[] =
{
  { seconds(1), R01|R09 },
  { seconds(1), R02|R10 },
  { seconds(1), R03|R11 },
  { seconds(1), R04|R12 },
  { seconds(1), R05|R13 },
  { seconds(1), R06|R14 },
  { seconds(1), R07|R15 },
  { seconds(1), R08|R16 },
  {          0,       0 } // End of programe
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
  PORTA = 0xFF;
  PORTC = 0xFF;
  WashState = NO_WASH;
  CountDown1 = 0;
}

void WashControl(void)
{
  static uint8_t  AfterPause;
  if(CountDown1 == 0 && WashState != NO_WASH)
  {
    if( prog[WashState] != 0 ) DisplayWashStatus();
    PORTA = ~(prog[WashState].mask & 0xFF);
    PORTC = ~(prog[WashState].mask >> 8);
    CountDown1 = seconds(prog[WashState].duration);
  }
}

//-----------------------------------------------------------------------------------
// Display Status
//-----------------------------------------------------------------------------------

char* RotationText[] =
{
  "No    ",
  "Turn +",
  "Turn -",
  "Pause ",
  "Stop  "
};

void DisplayRotationStatus(void)
{
  LCD_move(0,9);
  LCD_puts(RotationText[RotationState]);
}

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

void DisplayWashStatus(void)
{
  LCD_move(0,0);
  LCD_puts(WashText[prog[WashState].text]);
}
