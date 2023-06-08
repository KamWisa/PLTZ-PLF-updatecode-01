/PROG  FSENCUTLVE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 330;
CREATE		= DATE 23-05-30  TIME 10:40:08;
MODIFIED	= DATE 23-05-30  TIME 14:55:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 662;
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
   2:  !L1 SendCountLevel + 1 ;
   3:  GO[9]=1 ;
   4:  GO[10]=(GO[10]+1) ;
   5:  ELSE ;
   6:  !L2 SendCountLevel + 1 ;
   7:  GO[11]=1 ;
   8:  GO[12]=(GO[12]+1) ;
   9:  ENDIF ;
  10:  R[7]=9    ;
/POS
/END
