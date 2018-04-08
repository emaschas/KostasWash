#include <avr/pgmspace.h>

// Washing programs definitions
// ----------------------------

// Structures definitions
// ----------------------
typedef struct PROGMEM
{
  uint32_t duration;   // Duration of this step
  uint8_t  rotation:1; // step with rotation 
  uint8_t  end:1;      // end of this program 
  uint8_t  text:4;     // index of text for display
  uint16_t mask;       // mask for PORTA (LSB) and PORTC (MSB)
} step;

typedef struct
{
  char Text[16];
  step Step[];
} program;

// Definition of Texts to display during Washing
// ---------------------------------------------
char* WashText[] =
{
  "Debut     ", // 0
  "Prelavage ", // 1
  "Lavage    ", // 2
  "Vidange   ", // 3
  "Essorage  ", // 4
  "Rincage   ", // 5
  "Fin       ", // 6
  "Pause     "  // 7
};
#define wSTART     0
#define wPRE       1
#define wWASH      2
#define wDRAIN     3
#define wSPIN      4
#define wRINSE     5
#define wFINISH    6
#define wPAUSE     7

// Definition of Washing Programs
// ------------------------------
program P1 =
{
  "Programme long ",
  {
    // Duration    rot. end      txt   mask
    { seconds( 3),   0,   0,  wSTART,  LOCK },                          //  Start
    { seconds( 2),   1,   0,    wPRE,  LOCK|LEV1|EVCOLD },              //  Prewash  Cold Fill
    { seconds(10),   1,   0,    wPRE,  LOCK|LEV2|EVCOLD|EVHOT|HEAT },   //           Hot wash
    { seconds( 4),   0,   0,  wPAUSE,  LOCK },                          //  Pause
    { seconds( 1),   0,   0,  wDRAIN,  LOCK|DRAIN },                    //           Drain
    { seconds( 4),   0,   0,  wPAUSE,  LOCK },                          //  Pause
    { seconds( 2),   1,   0,   wWASH,  LOCK|LEV1|EVCOLD },              //  Wash  Cold Fill
    { seconds(25),   1,   0,   wWASH,  LOCK|LEV2|EVCOLD|EVHOT|HEAT },   //           Hot wash
    { seconds( 4),   0,   0,  wPAUSE,  LOCK },                          //  Pause
    { seconds( 1),   0,   0,  wDRAIN,  LOCK|DRAIN },                    //           Drain
    { seconds( 4),   0,   0,  wPAUSE,  LOCK },                          //  Pause
    { seconds( 2),   0,   0,  wRINSE,  LOCK|LEV1|EVCOLD },              //  Rinse    Cold fill
    { seconds( 2),   0,   0,  wRINSE,  LOCK|DRAIN },                    //           Drain
    { seconds( 2),   0,   0,  wRINSE,  LOCK|LEV1|EVCOLD },              //           Cold fill
    { seconds( 2),   0,   0,  wRINSE,  LOCK|DRAIN },                    //           Drain
    { seconds( 2),   0,   0,  wRINSE,  LOCK|LEV1|EVCOLD },              //           Cold fill
    { seconds( 2),   0,   0,  wRINSE,  LOCK|DRAIN },                    //           Drain
    { seconds( 4),   0,   0,  wPAUSE,  LOCK },                          //  Pause
    { seconds( 4),   0,   0,   wSPIN,  LOCK|MOTOR|SPIN|DRAIN },         //  Spin     Direct
    { seconds(15),   0,   0,  wPAUSE,  LOCK|R15 },                      //           Pause
    { seconds( 4),   0,   0,   wSPIN,  LOCK|MOTOR|REV|SPIN|DRAIN },     //           Reveres
    { seconds(15),   0,   0,  wPAUSE,  LOCK|R15 },                      //  Pause
    { seconds( 0),   0,   1, wFINISH,  0 }                              //  End of Program
  }
};

program P2 =
{
  "Programme court",
  {
    // Duration    rot. end      txt   mask
    { seconds( 3),   0,   0,  wSTART,  LOCK },    //  Start
    { seconds( 2),   0,   0,  wPAUSE,  LOCK },    //  Pause
    { seconds( 0),   0,   1, wFINISH,  0       }  //  End of Program
  }
};

program P3 = 
{
  "Vidange        ",
  {
    // Duration    rot. end      txt   mask
    { seconds( 3),   0,   0,  wSTART,  LOCK },    //  Start
    { seconds( 5),   0,   0,  wDRAIN,  LOCK },    //  Drain
    { seconds( 2),   0,   0,  wPAUSE,  LOCK },    //  Pause
    { seconds( 0),   0,   1, wFINISH,  0       }  //  End of Program
  }
};

program* Programs[] = { &P1, &P2, &P3 };

#define PROGRAM_COUNT (sizeof(Programs) / sizeof(Programs[0]))
