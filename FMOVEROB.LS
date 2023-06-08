/PROG  FMOVEROB
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 898;
CREATE		= DATE 23-05-30  TIME 10:32:08;
MODIFIED	= DATE 23-05-30  TIME 14:52:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1298;
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
   3:  DO[1]=ON ;
   4:  !MoveToPickPosBag ;
   5:  //CALL CLOSE_GRIPPER    ;
   6:L PR[9] 1500mm/sec FINE DB    0.0mm,CALL CLOSE_GRIPPER    ;
   7:  //DO[13]=ON ;
   8:  !MoveToAfterPickPos ;
   9:L PR[9] 1500mm/sec CNT10 Tool_Offset,PR[6] DO[13]=ON    ;
  10:  !SendPickBag OK ;
  11:  DO[2]=PULSE,0.5sec ;
  12:  !MoveToBefterPosEsc ;
  13:L PR[31] 4000mm/sec CNT50    ;
  14:   ;
  15:  !MoveToBefterDropPos ;
  16:L PR[R[36]] 4000mm/sec CNT10 Tool_Offset,PR[3]    ;
  17:   ;
  18:  !MoveToDropPos ;
  19:L PR[R[36]] 4000mm/sec FINE Tool_Offset,PR[30] DB  100.0mm,CALL OPEN_GRIPPER    ;
  20:  !MoveToAfterDropPos ;
  21:L PR[R[36]] 4000mm/sec CNT10 Tool_Offset,PR[7] DB    0.0mm,CALL OPEN_GRIPPER1    ;
  22:  !MoveToAfterPosEsc ;
  23:L PR[31] 4000mm/sec CNT50    ;
  24:  !MoveToBefterPickPos ;
  25:L PR[9] 4000mm/sec CNT10 Tool_Offset,PR[6] DB    0.0mm,CALL CHECKGRIPPEROPEN    ;
  26:  !CounterDropBag +1 ;
  27:  R[39]=R[39]+1    ;
  28:   ;
  29:   ;
  30:  !SendCountBag ;
  31:  CALL FSENDCUT    ;
  32:  WAIT R[7]=8    ;
  33:   ;
  34:   ;
  35:  R[7]=7    ;
/POS
/END
