/PROG  FSENDCUT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 316;
CREATE		= DATE 23-05-30  TIME 10:34:52;
MODIFIED	= DATE 23-05-30  TIME 14:53:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 648;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  IF (DI[2]=ON) THEN ;
   2:  !L1 SendCountBag + 1 ;
   3:  GO[9]=(GO[9]+1) ;
   4:  ELSE ;
   5:  !L2 SendCountBag + 1 ;
   6:  GO[11]=(GO[11]+1) ;
   7:  ENDIF ;
   8:   ;
   9:  DO[1]=OFF ;
  10:  R[7]=8    ;
/POS
/END
