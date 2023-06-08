/PROG  FHOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 790;
CREATE		= DATE 23-05-29  TIME 21:02:52;
MODIFIED	= DATE 23-05-30  TIME 11:19:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1170;
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
   1:   ;
   2:  R[7]=0    ;
   3:  IF (R[6]=1) THEN ;
   4:  MESSAGE[RejectPallet] ;
   5:  ENDIF ;
   6:  MESSAGE[Start ] ;
   7:  OVERRIDE=50% ;
   8:  R[6]=0    ;
   9:  DO[1]=OFF ;
  10:  DO[2]=OFF ;
  11:  DO[3]=OFF ;
  12:  DO[4]=OFF ;
  13:  UFRAME_NUM=1 ;
  14:  UTOOL_NUM=1 ;
  15:   ;
  16:  PR[5]=LPOS    ;
  17:  WAIT   1.00(sec) ;
  18:  R[1]=PR[5,3]    ;
  19:  IF (R[1]<=0 OR R[1]>500) THEN ;
  20:  PR[5,3]=R[2]    ;
  21:  PR[5,4]=0    ;
  22:  PR[5,5]=0    ;
  23:  PR[5,6]=0    ;
  24:L PR[5] 2000mm/sec FINE DB  100.0mm,CALL OPEN_GRIPPER    ;
  25:  WAIT    .50(sec) ;
  26:  CALL OPEN_GRIPPER    ;
  27:  CALL OPEN_GRIPPER1    ;
  28:  PR[5,1]=1600    ;
  29:L PR[5] 1000mm/sec CNT100 DB  100.0mm,CALL OPEN_GRIPPER1    ;
  30:  PR[5,2]=PR[1,2]    ;
  31:L PR[5] 2000mm/sec CNT100    ;
  32:   ;
  33:  ENDIF ;
  34:L PR[1] 1500mm/sec FINE DB    0.0mm,CALL CHECKGRIPPEROPEN    ;
  35:   ;
  36:  R[7]=1    ;
/POS
/END
