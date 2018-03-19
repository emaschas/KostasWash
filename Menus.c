#include "KostasWash.h"
#include "Menus.h"
#include <stdlib.h>

char* menuText[] =
{
  "Programme Long  ",
  "Programme Court ",
  "Vidange         "
};

volatile uint8_t  ChoixProgramme = 0;

void displayMenu(void)
{
  LCD_move(0,0);
  LCD_puts(menuText[ChoixProgramme]);
}
