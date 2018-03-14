//-----------------------------------------------------------------------------------
// State machine for Washing Cycles
//-----------------------------------------------------------------------------------

#include "KostasWash.h"
#include "Washing.h"

//-----------------------------------------------------------------------------------
// Rotation State Machine
//-----------------------------------------------------------------------------------
void RotationControl(void)
{
  static uint32_t  NextTime = 0;
  if(millis() > NextTime && RotationState != NO_ROTATION)
  {
    switch(RotationState)
    {
      case RUN1_ROTATION:
        RELAY01_OFF();                    // Rotation direction 1
        RELAY02_ON();                     // Start Motor
        NextTime = millis()+seconds(3);   // Duration : 3 sec.
        LCD_move(0,15);
        LCD_putc('+');
        RotationState = PAUSE1_ROTATION;
      break;
      case PAUSE1_ROTATION:
        RELAY02_OFF();                    // Stop Motor
        NextTime = millis()+seconds(1);   // Duration : 1 sec.
        RotationState = RUN2_ROTATION;
        LCD_move(0,15);
        LCD_putc('o');
      break;
      case RUN2_ROTATION:
        RELAY01_ON();                      // Rotation direction 2
        RELAY02_ON();                      // Start Motor
        NextTime = millis()+seconds(3);    // Duration : 3 sec.
        RotationState = PAUSE2_ROTATION;
        LCD_move(0,15);
        LCD_putc('-');
      break;
      case PAUSE2_ROTATION:
        RELAY02_OFF();                     // Stop Motor
        NextTime = millis()+seconds(1);    // Duration : 1 sec.
        RotationState = RUN1_ROTATION;
        LCD_move(0,15);
        LCD_putc('o');
      break;
      case STOP_ROTATION:
        RELAY01_OFF();                     // Rotation direction off
        RELAY02_OFF();                     // Stop Motor
        RotationState = NO_ROTATION;
        LCD_move(0,15);
        LCD_putc('x');      
      break;
    }
  }
}

//-----------------------------------------------------------------------------------
// Washing State Machine
//-----------------------------------------------------------------------------------
void WashControl(void)
{
  static uint32_t  NextTime = 0;
  if(millis() > NextTime && WashState != NO_WASH)
  {
    switch(WashState)
    {
      case START_WASH:
        NextTime = millis()+seconds(2);
        WashState = PRE_WASH;
        LCD_move(0,0);
        LCD_puts("Start   ");
      break;
      case PRE_WASH:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = MAIN_WASH;
        RotationState = RUN1_ROTATION;
        LCD_move(0,0);
        LCD_puts("PreWash ");
      break;
      case MAIN_WASH:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = RINCE;
        RotationState = STOP_ROTATION;
        LCD_move(0,0);
        LCD_puts("Wash    ");
      break;
      case RINCE:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = DRY;
        LCD_move(0,0);
        LCD_puts("Rince   ");
      break;
      case DRY:
        NextTime = millis()+minutes(1);  // Duration : 1 min.
        WashState = END_WASH;
        LCD_move(0,0);
        LCD_puts("Dry     ");
      break;
      case END_WASH:
        WashState = NO_WASH;
        LCD_move(0,0);
        LCD_puts("Waiting ");
      break;
    }
  }
}

