// Washing programs definitions
// ----------------------------

// Structures definitions
// ----------------------
typedef struct
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
  "Fin       ", // 5
  "Pause     "  // 6
};
#define wSTART     0
#define wPRE       1
#define wWASH      2
#define wDRAIN     3
#define wSPIN      4
#define wFINISH    5
#define wPAUSE     6

// Definition of Washing Programs
// ------------------------------
program P1 =
{
  "Programme long ",
  {
    // Duration    rot. end      txt   mask
    { seconds( 3),   0,   0,  wSTART,  R03|R09 }, //  Start
    { seconds(16),   1,   0,    wPRE,  R04|R10 }, //  Prewash
    { seconds( 2),   0,   0,  wPAUSE,  R05|R11 }, //  Pause
    { seconds(16),   1,   0,   wWASH,  R06|R12 }, //  Wash
    { seconds( 2),   0,   0,  wPAUSE,  R07|R13 }, //  Pause
    { seconds( 5),   0,   0,  wDRAIN,  R08|R14 }, //  Drain
    { seconds( 2),   0,   0,  wPAUSE,  R09|R15 }, //  Pause
    { seconds( 5),   0,   0,   wSPIN,  R10|R16 }, //  Spin
    { seconds( 2),   0,   0,  wPAUSE,  R09|R15 }, //  Pause
    { seconds( 0),   0,   1, wFINISH,  0       }  //  End of Program
  }
};

program P2 =
{
  "Programme court",
  {
    // Duration    rot. end      txt   mask
    { seconds( 3),   0,   0,  wSTART,  R03|R09 }, //  Start
    { seconds(16),   1,   0,   wWASH,  R06|R12 }, //  Wash
    { seconds( 2),   0,   0,  wPAUSE,  R07|R13 }, //  Pause
    { seconds( 5),   0,   0,  wDRAIN,  R08|R14 }, //  Drain
    { seconds( 2),   0,   0,  wPAUSE,  R09|R15 }, //  Pause
    { seconds( 5),   0,   0,   wSPIN,  R10|R16 }, //  Spin
    { seconds( 2),   0,   0,  wPAUSE,  R09|R15 }, //  Pause
    { seconds( 0),   0,   1, wFINISH,  0       }  //  End of Program
  }
};

program P3 = 
{
  "Vidange        ",
  {
    // Duration    rot. end      txt   mask
    { seconds( 3),   0,   0,  wSTART,  R03|R09 }, //  Start
    { seconds( 5),   0,   0,  wDRAIN,  R08|R14 }, //  Drain
    { seconds( 2),   0,   0,  wPAUSE,  0       }, //  Pause
    { seconds( 0),   0,   1, wFINISH,  0       }  //  End of Program
  }
};

program* Programs[] = { &P1, &P2, &P3 };

#define PROGRAM_COUNT (sizeof(Programs) / sizeof(Programs[0]))
