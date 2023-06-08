/PROG  FSENDFINISH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 354;
CREATE		= DATE 23-05-30  TIME 10:43:10;
MODIFIED	= DATE 23-05-30  TIME 10:43:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 674;
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
   2:  !Place Finish_L1 ;
   3:  DO[3]=PULSE,1.0sec ;
   4:  GO[9]=1 ;
   5:  GO[10]=1 ;
   6:  MESSAGE[Finish_L1] ;
   7:  ELSE ;
   8:  !Place Finish_L2 ;
   9:  GO[11]=1 ;
  10:  GO[12]=1 ;
  11:  DO[4]=PULSE,1.0sec ;
  12:  MESSAGE[Finish_L2] ;
  13:  ENDIF ;
/POS
/END
