CoDeSys+k  �                   @        @   2.3.9.41�    @   ConfigExtension�          CommConfigEx7             CommConfigExEnd   ME�                  IB                    % QB                    %   ME_End   CM�      CM_End   CT�   ��������   CT_End   ConfigExtensionEnd/    @                             v��b +    @      ��������             �B�a        Jg   @   ,   A:\CODESYS\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �9BC  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��	           Load Start Value    PV           ��
           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �9BC  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��	           Reset Counter to 0    PV           ��
           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �9BC  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��
       
    Count Up    CD            ��           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �9BC  �   ����           DELETE               STR               ��              LEN           ��	              POS           ��
                 DELETE                                         �9BC  �   ����           F_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �9BC  �   ����           FIND               STR1               ��	              STR2               ��
                 FIND                                     �9BC  �   ����           INSERT               STR1               ��	              STR2               ��
              POS           ��                 INSERT                                         �9BC  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �9BC  �   ����           LEN               STR               ��                 LEN                                     �9BC  �   ����           MID               STR               ��              LEN           ��	              POS           ��
                 MID                                         �9BC  �   ����           R_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �9BC  �   ����           REPLACE               STR1               ��	              STR2               ��
              L           ��              P           ��                 REPLACE                                         �9BC  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �9BC  �   ����           RS               SET            ��              RESET1            ��	                 Q1            ��                       �9BC  �   ����           RTC           M             ��              DiffTime            ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��                       �9BC  �   ����           SEMA           X             ��                 CLAIM            ��
              RELEASE            ��                 BUSY            ��                       �9BC  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��                       �9BC  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��       2    is FALSE, PT seconds after IN had a falling edge    ET           ��           elapsed time             �9BC  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��       0    is TRUE, PT seconds after IN had a rising edge    ET           ��           elapsed time             �9BC  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��           The pulse    ET           ��       &    The current phase of the High-Signal             �9BC  �   ����    R   C:\PROGRAM FILES (X86)\COMMON FILES\CAA-TARGETS\3S\LIB_PLCWINNT\SYSLIBCALLBACK.LIB          SYSCALLBACKREGISTER            	   iPOUIndex           ��       !    POU Index of callback function.    Event            	   RTS_EVENT   ��           Event to register       SysCallbackRegister                                      ��H  �   ����           SYSCALLBACKUNREGISTER            	   iPOUIndex           ��       !    POU Index of callback function.    Event            	   RTS_EVENT   ��           Event to register       SysCallbackUnregister                                      ��H  �   ����    (   A:\CODESYS\CODESYS V2.3\LIBRARY\UTIL.LIB       
   BCD_TO_INT               B           ��           byte containing the BCD value    
   BCD_TO_INT                                     ���K  �    ����           BLINK           CLOCK                   TP    ��                 ENABLE            ��       +    TRUE:run Blink, FALSE: OUT keeps its value   TIMELOW           ��           Time for OUT=FALSE    TIMEHIGH           ��           Time for OUT=TRUE       OUT            ��	       &    output variable, starting with FALSE             ���K  �    ����        	   CHARCURVE           I            ��                 IN           ��           input signal    N           ��       @    number of  points defining the characteristic curve : 2<=N<=11       OUT           ��           output variable    ERR           ��       �    error :
												0 : 	no error
												1 :	error in ARRAY: wrong sequence ( completely tested, only if IN is equal to largest X-value of P)
												2 :	IN outside of limits of P
												4 :	number of POINTS (N) invalid       P    	  
                    POINT          ��       8    ARRAY of N points to describe the characteristic curve         ���K  �    ����        
   DERIVATIVE           X3             ��              X2             ��              X1             ��              T2            ��              T1            ��              INIT            ��                 IN            ��           input variable    TM           ��           time since last call in msec    RESET            ��           reset: set OUT to zero       OUT            ��
           derivative             ���K  �    ����           EXTRACT               X           ��           value    N           ��           number of bit to be extracted       EXTRACT                                      ���K  �    ����           FREQ_MEASURE           OLDIN             ��              INIT             ��              OLDT            ��              DIFF            ��              ADIFF   	  	                        ��              V            ��              B            ��              I            ��                 IN            ��           input signal    PERIODS           
              ��       A    out is the average frequency during PERIODS (number of periods)    RESET            ��           reset measurement       OUT            ��	           frequency [Hz]   VALID            ��
       \    FALSE: not yet PERIODS measurements done OR time distance between two rising edges > 3*OUT             ���K  �    ����           GEN           CET            ��              PER            ��              COUNTER            ��              CLOCK                    TON    ��              help             ��                 MODE               GEN_MODE   ��       p   define type :
								TRIANGLE				triangular	from - AMPL. to + AMPL.
								TRIANGLE_POS		triangular	from 0 to AMPL. 
								SAWTOOTH_RISE	sawtooth increasing from -AMPL. to +AMPL.
								SAWTOOTH_FALL	sawtooth decreasing from AMPL to -AMPL
								RECTANGLE			rectangular switching from  -AMPL. to +AMPL 
								SINUS					sinus
								COSINUS				cosinus    BASE            ��       A    FALSE: period referring to call; TRUE: period referring to time    PERIOD    �     ��       )    period time, only relevant if BASE=TRUE    CYCLES    �     ��       9    number of calls per period, only relevant if BASE=FALSE 	   AMPLITUDE           ��           amplitude    RESET            ��           reset       OUT           ��           generated function variable             ���K  �    ����        
   HYSTERESIS               IN           ��           input value    HIGH           ��           upper threshold value    LOW           ��           lower threshold value       OUT            ��	           hysteresis value             ���K  �    ����        
   INT_TO_BCD               I           ��       !    INT value to be converted to BCD   
   INT_TO_BCD                                     ���K  �    ����           INTEGRAL               IN            ��           input variable    TM           ��           time since last call in msec    RESET            ��       1    reset: OUT is set to zero and OVERFLOW to false       OUT            ��	           value of the integral    OVERFLOW            ��
       
    overflow             ���K  �    ����        
   LIMITALARM               IN           ��           INPUT value    HIGH           ��           upper threshold value    LOW           ��           lower threshold value       O            ��	            TRUE, if IN > HIGH, else FALSE    U            ��
           TRUE, if IN < LOW, else FALSE    IL            ��           neither O nor U             ���K  �    ����        	   LIN_TRAFO           Diff             ��                 IN            ��           input value   IN_MIN            ��           minimum input value    IN_MAX            ��           maximum input value    OUT_MIN            ��       $    corresponding minimum output value    OUT_MAX            ��       $    corresponding maximum output value       OUT            ��           output value    ERROR            ��       .    error: IN_MIN = IN_MAX or IN out of interval             ���K  �    ����           PACK               B0            ��           value of bit 0    B1            ��           value of bit 1    B2            ��           value of bit 2    B3            ��           value of bit 3    B4            ��           value of bit 4    B5            ��	           value of bit 5    B6            ��
           value of bit 6    B7            ��           value of bit 7       PACK                                     ���K  �    ����           PD           CLOCK                    TON    ��              D        
             
   DERIVATIVE    ��              TMDIFF            ��              ERROR             ��              INIT            ��              Y_ADDOFFSET             ��              KPcopy             ��              TVcopy             ��           
      ACTUAL            ��            actual value, process variable 	   SET_POINT            ��           desired value, set point    KP            ��           proportionality const. (P)   TV            ��       '    rate time, derivative time (D) in sec    Y_MANUAL            ��       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ��	       !    offset for manipulated variable    Y_MIN            ��
       (    minimum value for manipulated variable    Y_MAX            ��       (    maximum value for manipulated variable    MANUAL            ��       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ��       !    reset: set Y output to Y_OFFSET       Y            ��            manipulated variable, set value   LIMITS_ACTIVE            ��       1    true set value would exceed limits Y_MIN, Y_MAX             ���K  �    ����           PID     
      CLOCK                    TON    ��              I                   INTEGRAL    ��              D        
             
   DERIVATIVE    ��              TMDIFF            ��              ERROR             ��              INIT            ��              Y_ADDOFFSET             ��              KPcopy             ��              TNcopy             ��              TVcopy             ��                  ACTUAL            ��            actual value, process variable 	   SET_POINT            ��           desired value, set point    KP            ��           proportionality const. (P)   TN            ��           reset time (I) in sec    TV            ��       &    rate time, derivative time (D) in sec   Y_MANUAL            ��	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ��
       !    offset for manipulated variable    Y_MIN            ��       (    minimum value for manipulated variable    Y_MAX            ��       (    maximum value for manipulated variable    MANUAL            ��       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ��       9    reset: set Y output to Y_OFFSET and reset integral part       Y            ��            manipulated variable, set value   LIMITS_ACTIVE            ��       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ��           overflow in integral part             ���K  �    ����           PID_FIXCYCLE     	      I                   INTEGRAL    ��              D        
             
   DERIVATIVE    ��              TMDIFF            ��              ERROR             ��              INIT            ��              Y_ADDOFFSET             ��              KPcopy             ��              TNcopy             ��              TVcopy             ��                  ACTUAL            ��            actual value, process variable 	   SET_POINT            ��           desired value, set point    KP            ��           proportionality const. (P)   TN            ��           reset time (I) in sec    TV            ��       &    rate time, derivative time (D) in sec   Y_MANUAL            ��	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ��
       !    offset for manipulated variable    Y_MIN            ��       (    minimum value for manipulated variable    Y_MAX            ��       (    maximum value for manipulated variable    MANUAL            ��       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ��       9    reset: set Y output to Y_OFFSET and reset integral part    CYCLE            ��           time in s between two calls       Y            ��            manipulated variable, set value   LIMITS_ACTIVE            ��       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ��           overflow in integral part             ���K  �    ����           PUTBIT               X           ��           value to be manipulated    N           ��           position of bit to be changed    B            ��           value of specified bit       PUTBIT                                     ���K  �    ����           RAMP_INT           DIFF            ��              OLD_IN            ��              TB            ��              CET            ��              CH            ��              CLOCK                    TON    ��                 IN           ��           input variable    ASCEND           ��           maximum positive slope    DESCEND           ��       )    maximum negative slope (non-negative!!)    TIMEBASE           ��       �    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ��
           reset       OUT           ��       &    value of function with limited slope             ���K  �    ����        	   RAMP_REAL           DIFF             ��              OLD_IN             ��              TB            ��              CET            ��              CLOCK                    TON    ��              probe             ��                 IN            ��           input variable    ASCEND            ��           maximum positive slope    DESCEND            ��       )    maximum negative slope (non-negative!!)    TIMEBASE           ��       �    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ��
           reset       OUT            ��       &    value of function with limited slope             ���K  �    ����           STATISTICS_INT           SUM            ��              COUNTER            ��                 IN           ��           input value   RESET            ��       J    reset: average set to 0, min and max to minimum and maximum possible INTs      MN    �     ��           minimum value   MX     ���   ��	           maximum value   AVG           ��
           average value            ���K  �    ����           STATISTICS_REAL           COUNTER            ��              SUM             ��                 IN            ��           input value   RESET            ��       K    reset: average set to 0, min and max to minimum and maximum possible REALs      MN    �a   3E+38   ��           minimum value   MX    �   1E-37   ��	           maximum value   AVG            ��
           average value            ���K  �    ����           UNPACK               B           ��           byte to be unpacked       B0            ��           value of bit 0    B1            ��           value of bit 1    B2            ��	           value of bit 2    B3            ��
           value of bit 3    B4            ��           value of bit 4    B5            ��           value of bit 5    B6            ��           value of bit 6    B7            ��           value of bit 7             ���K  �    ����           VARIANCE           Z            ��              A             ��              B             ��                 IN            ��           input variable    RESET            ��           reset       OUT            ��       
    variance             ���K  �    ����           VERSION_UTIL               B            ��                 Version_Util                                     ���K  �    ����    N   C:\PROGRAM FILES (X86)\COMMON FILES\CAA-TARGETS\3S\LIB_PLCWINNT\SYSLIBFILE.LIB          SYSFILECLOSE               File           ��                 SysFileClose                                      ��RA  �   ����           SYSFILECOPY               FileDest    Q       Q    ��           
   FileSource    Q       Q    ��                 SysFileCopy                                     ��RA  �   ����           SYSFILEDELETE               FileName    Q       Q    ��                 SysFileDelete                                      ��RA  �   ����        
   SYSFILEEOF               File           ��              
   SysFileEOF                                      ��RA  �   ����           SYSFILEGETPOS               File           ��                 SysFileGetPos                                     ��RA  �   ����           SYSFILEGETSIZE               FileName    Q       Q    ��                 SysFileGetSize                                     ��RA  �   ����           SYSFILEGETTIME               FileName    Q       Q    ��           
   ftFileTime                  FILETIME        ��                 SysFileGetTime                                      ��RA  �   ����           SYSFILEOPEN               FileName    Q       Q    ��              Mode               ��       6    Use 'w' (write), 'r' (read) or 'rw' (read and write)       SysFileOpen                                     ��RA  �   ����           SYSFILEREAD               File           ��              Buffer           ��           Address (ADR) to Buffer    Size           ��                 SysFileRead                                     ��RA  �   ����           SYSFILERENAME               FileOldName    Q       Q    ��              FileNewName    Q       Q    ��                 SysFileRename                                      ��RA  �   ����           SYSFILESETPOS               File           ��              Pos           ��                 SysFileSetPos                                      ��RA  �   ����           SYSFILEWRITE               File           ��              Buffer           ��           Address (ADR) to Buffer    Size           ��                 SysFileWrite                                     ��RA  �   ����                  DERIV           X3             `               X2             `               X1             `               T2            `               T1            `               init            `                  in            `            input variable    tm           `            time since last call in msec    reset            `            reset: set OUT to zero       out            ` 
           derivative             c��b  @    ����           INTEG               in            _            input variable    tm           _            time since last call in msec    reset            _        1    reset: OUT is set to zero and OVERFLOW to false       out            _ 	           value of the integral    overflow            _ 
       
    overflow             t��b  @    ����           MYPID           clock                    TON    ]               I                   Integ    ]               D        
                Deriv    ]               tmDiff            ]               error             ]               init            ]                  actual            ]           ������� ��������   sp            ]           �������   spShift            ]        ]   ����� ������� ��� ���������� �������� ��� �� ������� ���������, ���� SPShift<DeadZone �� ����   KP            ]           ���������������� �����������   TN            ]           ������������ �����������   TV            ]           ����� �������������� �    yManual            ] 	       (   Y ����� ����� �������� ����� MANUAL=TRUE   yOffset            ] 
          �������� ������ �� ������   yMin            ]           ������� ������   yMax            ]           �������� ������   manual            ]           Y=YManual ����� MANUAL=TRUE    reset            ]           ����� ���������� Y=YOffset   deadZone            ]           ������ ���� ������������������      Y            ]           �������� ��������   limitsActive            ]        $   ���������� ������ ������ YMin, YMax    overflow            ]           ������������ ������������ �����            ��b  @    ����           PLC_PRG                             ���b  @    ����           SAVELOADPARAMFILE           file            Y            	   optBoiler                  OptionsBoiler    Y               optionSaveFT                 F_TRIG    Y               loadTON                    TON    Y               optionsLoadFT                 F_TRIG    Y            	   startLoad            Y 	                               ̤�b  @    ����        	   SENSERROR               value            F               errorValueMax            F               errorValueMin            F                  errorOut            F                        H�b  @    ����            
 o   j  A   C   D      F   I   ����Y   Z   	   ]   _   `   a   ( Ji      K   Xi     K   fi     K   ti     K   �i                 �i         +     ��localhost   0>P�X� M�u��/��/�� ��/��/       �                       ���/�  *����   �*  � A>E    ��*?   <^�� �� ��� ߔ�   S�� `^�        � A>E 4       u  @^� �� ��  �� 	   `^4� Ɯ�                  @^EZ�     ,   ,                                                        K        @   �B�a��      , � � u�                     CoDeSys 1-2.2   ����  ��������                     �   
       �      
   �         �         �          �                    "          $                                                   '          (          �          �          �          �          �         �          �          �          �         �          �          �          �          �         �      �   �       P  �          �         �       �  �                    ~          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �       @  �       @  �       @  �       @  �       @  �       @  �         �         �          �       �  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         �          �         �      
   �         �         �         �         �         �          �          �         �      �����          �          �      (                                                                        "         !          #          $         �          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          �          �          l          o          p          q          r          s         u          �          v         �          �      ����|         ~         �         x          z      (   �          �         %         �          �          �         @         �          �          �         &          �          	                   �          �          �         �          �         �          �          �          �          �          �          �          �          �          �          �          �                            I         J         K          	          L         M          �                             �          P         Q          S          )          	          	          �           	          +	       @  ,	       @  -	      ���������   �         �         �          �                    "          $                                                   '          (          �          �          �          �          �         �          �          �          �         �          �          �          �          �         �      �   �       P  �          �         �       �  �          �         �          �          �          �          �         �          �          �          �       �  �       �  �       �  �       �  �         �          a          t          y          z          b         c         X          d         e         _          Q          \         R          K          U         X         Z         �          �         �      
   �         �         �         �         �         �          �          �         �      �����          �          �      (                                                                        "         !          #          $         �          ^          f          g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          �         �          l          o          p          q          r          s         u          �          v         �          w          x          �      ����|         ~         �         x          z      (   �          �         %         �          �          �         @         �          �          �      �  �      �  �         �          �         &          �          	                   �          �          �         �          �         �          �          �          �          �          �          �          �          �          �          �          �          �          �          �                                                 I         J         K          	          L         M          �                             �          P         Q          S          )          	          	          �           	          +	       @  ,	       @  -	      ������������������������������������������������  ��������                                                   �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ����   Index-Offset                 ��         SubIndex-Offset                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����   Member    	             ����
   Value                Member    
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable                         ����  ��������               �   _Dummy@    @   @@    @   @             ��@             ��@@   @     �v@@   ; @+   ����  ��������                                  �v@      4@   �             �v@      D@   �                       �       @                           �f@      4@     �f@                �v@     �f@     @u@     �f@        ���           Module.Root-1__not_found__    Steuerungskonfiguration���� IB          % QB          % MB          %    �B�a	��b     ��������           VAR_GLOBAL
END_VAR
                                                                                  "     ��������              �B�a             %      start   Called when program starts    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      stop   Called when program stops    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      before_reset   Called before reset takes place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      after_reset   Called after reset took place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      shutdown#   Called before shutdown is performed    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_cycletime_overflow)   Called when a cycletime overflow happened    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_watchdog%   Software watchdog OF IEC-task expired    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fieldbus   Fieldbus error occurred    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 	   �      excpt_ioupdate   IO-update error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 
   �      excpt_illegal_instruction   Illegal instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_access_violation   Access violation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_priv_instruction   Privileged instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_dividebyzero   Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fpu_error   FPU: Unspecified error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fpu_denormal_operand   FPU: Denormal operand    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fpu_dividebyzero   FPU: Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fpu_invalid_operation   FPU: Invalid operation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fpu_overflow   FPU: Overflow    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      excpt_fpu_stack_check   FPU: Stack check    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      after_reading_inputs   Called after reading of inputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      before_writing_outputs    Called before writing of outputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �   
   debug_loop   Debug loop at breakpoint    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    �      interrupt_1   Interrupt 1    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 $   �      interrupt_2   Interrupt 2    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 %   �      interrupt_3   Interrupt 3    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 &   �      interrupt_4   Interrupt 4    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 '   �      interrupt_5   Interrupt 5    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 (   �      interrupt_6   Interrupt 6    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 )   �      interrupt_7   Interrupt 7    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 *   �      interrupt_8   Interrupt 8    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 +   �      interrupt_9   Interrupt 9    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 ,   �      interrupt_10   Interrupt 10    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 -   �      interrupt_11   Interrupt 11    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 .   �      interrupt_12   Interrupt 12    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 /   �      interrupt_13   Interrupt 13    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 0   �      interrupt_14   Interrupt 14    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 1   �      interrupt_15   Interrupt 15    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 2   �   $����  ��������               ��������           Standard �B�a	�B�a      ��������                         	ݢ�b     ��������           VAR_CONFIG
END_VAR
                                                                                   '              , � � �           Global_Variables �B�a	��b     ��������        �  VAR_GLOBAL

	(*������ *)
	Error:BOOL;
	codeError:WORD;

	(*�������*)
	stopTrig: F_TRIG;
	startTrig: F_TRIG;

	(*������� ����*)
	tempSpOut:REAL;

	(*state*)
	start:BOOL;
	stop:BOOL;
	gasMode:BOOL;
	oilMode:BOOL;


	(*������� *)
	gasConsum:REAL;
	oilConsum:REAL;
	waterInTemp:REAL;
	waterOutTemp:REAL;
	waterOutPressure:REAL;
	waterOutConsum:REAL;
	flameSensor:REAL;
	conceCO2Sensor:REAL;
	oilPressureSensor:REAL;
	gasPressureSensor:REAL;

	(*���� ������*)
	gasConsumError:SensError;
	oilConsumError:SensError;
	waterInTempError:SensError;
	waterOutTempError:SensError;
	waterOutPressureError:SensError;
	waterOutConsumError:SensError;
	flameSensorError:SensError;
	conceCO2SensorError:SensError;

	(*�������*)
	valveWaterTempIn:REAL;
	valveWaterTempOut:REAL;
	valveErrorOil:BOOL;
	valveErrorGas:BOOL;
	valveOilIn:REAL;
	valveGasIn:REAL;
	valveStartFlameOil:REAL;
	valveStartFlameGas:REAL;
	valveMainFlameOil:BOOL;
	valveMainFlameGas:BOOL;
	valveAeratorIn:BOOL;
	valveAeratorOut:BOOL;

	(*�����������*)
	fanFlame:REAL;
	fanOut:REAL;


	(*PID*)
	pidReg:myPid;
	spMinPidOut:WORD;
	spMaxPidOut:WORD;
	pidOffset, pidOffsetOld: WORD;
	(*������*)
	saveParamTimer:TON;
	waterStartTON:TON;
END_VAR
                                                                                               '           	   , � � ��           Variable_Configuration �B�a	�B�a	     ��������           VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����              �                -     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             �������      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����              �       )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   Z   , � � �Y           OptionsBoiler ���b	���b      ��������        m   TYPE OptionsBoiler :
STRUCT
	gasMode:BOOL;
	oilMode:BOOL;
	start:BOOL;
	stop:BOOL;
END_STRUCT
END_TYPE              `   , 4 4 v           Deriv f��b	c��b      ��������        �  (* function block to approximate the derivative of a value *)
(* to calculate this, always four values are used in order to be as exact as possible *)
FUNCTION_BLOCK Deriv
VAR_INPUT
	in:REAL;		(* input variable *)
	tm:DWORD;		(* time since last call in msec *)
	reset:BOOL;		(* reset: set OUT to zero *)
END_VAR
VAR_OUTPUT
	out:REAL;		(* derivative *)
END_VAR
VAR
	X3,X2,X1:REAL;
	T2,T1:DWORD;
	init:BOOL:=TRUE;
END_VAR�   IF init OR reset THEN
	X1:=in;
	X2:=in;
	X3:=in;
	out:=0;
	init:=FALSE;
ELSE
	IF tm>0 THEN
		out:=(3*(in-X3)+X1-X2)/((3*T2+4*T1+3*tm))*1000;
		X3:=X2;
		X2:=X1;
		X1:=in;
		T2:=T1;
		T1:=tm;
	END_IF;
END_IF;               _   ,   \�           Integ x��b	t��b      ��������          (* function block to approximate the integral of IN over the time *)
FUNCTION_BLOCK Integ
VAR_INPUT
	in:REAL;				(* input variable *)
	tm:DWORD;				(* time since last call in msec *)
	reset:BOOL;				(* reset: OUT is set to zero and OVERFLOW to false *)
END_VAR
VAR_OUTPUT
	out:REAL;				(* value of the integral *)
	overflow:BOOL:=FALSE;	(* overflow *)
END_VAR
VAR
END_VAR�   IF reset THEN
	out:=0;
	overflow:=FALSE;
ELSIF NOT overflow  THEN
	IF 1E38 - in*tm < out OR -1E38 - in*tm > out THEN
		overflow:=TRUE;
	ELSE
		out:=out+in*tm/1000;
	END_IF;
END_IF;               ]   , � � �           myPid ��b	��b      ��������        �  FUNCTION_BLOCK myPid
VAR_INPUT
	actual:		REAL;	(*������� ��������*)
	sp:			REAL;	(*�������*)
	spShift:	REAL;	(*����� ������� ��� ���������� �������� ��� �� ������� ���������, ���� SPShift<DeadZone �� ����*)
	KP:			REAL;	(*���������������� �����������*)
	TN:			REAL;	(*������������ �����������*)
	TV:			REAL;	(*����� �������������� � *)
	yManual:	REAL;	(*Y ����� ����� �������� ����� MANUAL=TRUE*)
	yOffset:	REAL;	(*�������� ������ �� ������*)
	yMin:		REAL;	(*������� ������*)
	yMax:		REAL;	(*�������� ������*)
	manual:		BOOL;	(*Y=YManual ����� MANUAL=TRUE *)
	reset:		BOOL;	(*����� ���������� Y=YOffset*)
	deadZone:	REAL;	(*������ ���� ������������������*)
END_VAR
VAR_OUTPUT
	Y:				REAL;			(*�������� ��������*)
	limitsActive:	BOOL:=FALSE;	(*���������� ������ ������ YMin, YMax *)
	overflow:		BOOL:=FALSE;	(*������������ ������������ �����*)
END_VAR
VAR
	clock:			TON;
	I: 				Integ;
	D: 				Deriv;
	tmDiff: 		DWORD;
	error: 			REAL;
	init: 			BOOL:=TRUE;
END_VAR
�  IF TN>0 AND KP<> 0 AND (NOT overflow OR reset OR manual) THEN
	sp:=SEL(spShift>DeadZone, sp, SEL(sp-spShift>actual, sp, actual+spShift));
	error := SEL( ABS(sp-actual)<deadZone, sp-actual, 0);			(* Regeldifferenz *)

	IF reset OR init OR manual THEN	(* Reset oder Handbetrieb *)
		I(Reset:=TRUE);
		D(Reset:=TRUE);
		overflow:=FALSE;
		limitsActive:=FALSE;
		IF reset OR init THEN
			Y := yOffset;
			init:=FALSE;
			ELSIF manual THEN
				Y := yManual;
		END_IF
		tmDiff:=0;
		clock(IN:=FALSE);									(* Timer neu starten *)
		clock(PT:=t#1h, IN:=TRUE);
		ELSE
			clock;											(* Timer abfragen *)
			tmDiff:=TIME_TO_DWORD(Clock.ET);				(* Zeitdifferenz seit letztem Aufruf *)
	END_IF;

	IF tmDiff>0 THEN
		clock(IN:=FALSE);									(* Timer neu starten *)
		clock(PT:=t#1h, IN:=TRUE);

		D(IN:=error, TM:=tmDiff, reset:=FALSE);				(* Differential absch�tzen *)
		I(IN:=error, TM:=SEL(limitsActive, tmDiff, 0), reset:=FALSE);				(* Integral absch�tzen *)

		overflow := I.overflow;
		IF NOT overflow THEN
			Y:=yOffset+KP*(error+I.out/TN+D.out*TV);
			IF Y>1E30 OR Y<-1E30 THEN					(* Overflow steht bevor, darf aber eigentlich nicht passieren *)
				overflow:=TRUE;
			END_IF;

			limitsActive:=FALSE;
			IF yMax>yMin AND Y>=yMax  THEN				(* Stellwert-Obergrenze �berschritten *)
				limitsActive:=TRUE;
				IF KP<>0 THEN
					I(IN:=(yMax-Y)*TN/KP, TM:=1000, Reset:=FALSE);	(* Integral korrigieren *)
				END_IF
				Y:=yMax;
			END_IF;

			IF yMax>yMin AND Y<=yMin THEN					(* Stellwert-Untergrenze unterschritten *)
				limitsActive:=TRUE;
				IF KP<>0 THEN
					I(IN:=(yMin-Y)*TN/KP, TM:=1000, Reset:=FALSE);	(* Integral korrigieren *)
				END_IF
				Y:=yMin;
			END_IF;
		END_IF;
	END_IF;

END_IF;               A   , � N ?           PLC_PRG v��b	���b      ��������           PROGRAM PLC_PRG
VAR
END_VAR=   stopStart();
sensControl();
waterControl();
errorHandle(); D   , � � �s           errorHandle ��b	  

Error := gasConsumError.errorOut OR
	oilConsumError.errorOut OR
	waterInTempError.errorOut OR
	waterOutTempError.errorOut OR
	waterOutPressureError.errorOut OR
	waterOutConsumError.errorOut OR
	flameSensorError.errorOut OR
	conceCO2SensorError.errorOut ;I   , 4 4 v           sensControl ��b;  
	gasConsumError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.7
	);
(*_______________________________________________________________*)
	oilConsumError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.0
	);
(*_______________________________________________________________*)
	waterInTempError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.1
	);
(*_______________________________________________________________*)
	waterOutTempError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.2
	);
(*_______________________________________________________________*)
	waterOutPressureError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.3
	);
(*_______________________________________________________________*)
	waterOutConsumError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.4
	);
(*_______________________________________________________________*)
	flameSensorError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.5
	);
(*_______________________________________________________________*)
	conceCO2SensorError(
	value :=  ,
	errorValueMax:=0,
	errorValueMin:=10,
	errorOut => codeError.6
	);a   , � �C        	   stopStart v��b�   
startTrig(CLK:=start);
IF startTrig.Q THEN start := TRUE;
stop:=FALSE;
startTrig.CLK :=FALSE;
END_IF

stopTrig(CLK:=stop);
IF stopTrig.Q THEN stop := TRUE;
	start:=FALSE;
	stopTrig.CLK :=FALSE;
 END_IFC   , � � �Y           waterControl <��b�  

waterStartTON(IN:= Start, PT:= T#10s);

IF  NOT(waterStartTON.ET = T#0s ) THEN
	valveWaterTempIn := 100;
	valveAeratorIn:= TRUE;
	valveAeratorOut:=TRUE;
	ELSE

	valveWaterTempIn := 0;
	valveAeratorIn:= FALSE;
	valveAeratorOut:=FALSE;
END_IF


IF NOT Error AND NOT stop AND  NOT(waterStartTON.ET = T#0s )    THEN

	IF spMinPidOut>=spMaxPidOut THEN spMaxPidOut:=spMinPidOut+1; END_IF

	IF PidReg.Y<=spMinPidOut THEN
		pidOffset:=spMinPidOut;
		ELSIF PidReg.Y>=spMaxPidOut THEN
			pidOffset:=spMaxPidOut;
			ELSE
				pidOffset:=pidOffsetOld;
	END_IF
	PidReg(
		actual:=waterOutTemp,
		sp:=tempSpOut,
		spShift:=4,
		KP:=10/100,(*����� ������*)
		TN:=10,(*��*)
		TV:=,
		yManual:=0,
		yOffset:=pidOffset,
		yMin:=50,
		yMax:=165,
		manual:= FALSE,(*pid mode*)
		deadZone:=0.25,
		reset:=PidReg.overflow OR  Error AND  stop AND  waterStartTON.ET = T#0s  ,
		(*������*)
		Y=>);

END_IF;             Y   , h h �?           saveLoadParamFile ���b	̤�b      ��������        �   PROGRAM saveLoadParamFile
VAR
	file:				DWORD;
	optBoiler:			OptionsBoiler;

	optionSaveFT: F_TRIG;
	loadTON: TON;
	optionsLoadFT: F_TRIG;
	startLoad: BOOL:=TRUE;
END_VAR�  loadTON(IN:=startLoad, PT:=T#50ms);
IF loadTON.Q THEN startLoad:=FALSE; END_IF

optionsLoadFT(CLK:= startLoad);


saveParamTimer(IN:= NOT saveParamTimer.Q , PT:=T#10s);

optionSaveFT(CLK:=saveParamTimer.Q);

IF optionSaveFT.Q THEN
	optBoiler.gasMode := gasMode;
	optBoiler.oilMode := oilMode;
	optBoiler.start := start;
	optBoiler.stop := stop;

	file:=SysFileOpen('options', 'w');
	SysFileWrite(file, ADR(optBoiler), SIZEOF(optBoiler));
	SysFileClose(file);
END_IF

IF optionsLoadFT.Q THEN
	file:=SysFileOpen('options', 'r');
	SysFileRead(file, ADR(optBoiler), SIZEOF(optBoiler));
	SysFileClose(file);

	gasMode:= optBoiler.gasMode;
	oilMode:= optBoiler.oilMode;
	start:=optBoiler.start ;
	stop := optBoiler.stop;
END_IF               F   , � � ,�        	   SensError ��b	H�b      ��������        �   FUNCTION_BLOCK SensError
VAR_INPUT
	value:REAL;
	errorValueMax:REAL;
	errorValueMin:REAL;
END_VAR
VAR_OUTPUT
	errorOut:BOOL;
END_VAR
VAR
END_VARW   
IF value > errorValueMax AND value < errorValueMin THEN
	 errorOut := TRUE;
 END_IF                j  , ������           ignition r��a
    @���͒��b�   P   �                                                                                                      
    @         �p�p\pRp  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         �p�p�f�z�p�p  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        �����  ���     ��                                     PLC_PRG.valveNormalFeed        @                          ���   �    @	                       @                                                                                                           
    @         �������������  ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @         f�h�r�^�h�r^^  ���     ���                           @                             ���   �    @	                                                                                                                              
    @         ��������  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         P�h�J�@�  ���     ���                           @                         ���� ���   �    @	                                                                                                                         0   100
    @        �A,�  ���     ��                                     PLC_PRG.valveIndicator   PLC_PRG.valveLowFeed
   =%3.0i @                          ���   �    @	                      @                                                                                                           
    @          p*pRfRz*pffzz  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         5Yhhppp  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         �R��p�p  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        b*�Sv>  ���     ���                                             @                          ���   �    @	                       @                                                                                                          
    @         |fvRvp�p  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        ��;O  ���     ���                                             @                          ���   �    @	                       @                                                                                                          
    @         �S���:��  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         ��h�h�����  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        �'  ���     ��                                     PLC_PRG.igniter        @                      	    ���   �    @	                       @                                                                                                          
    @         T:bb  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        b�1v  ���     ��                                     PLC_PRG.flameSensor        @                          ���   �    @	                       @                                                                                                          
    @        *?S*>  ���      �@                                    PLC_PRG.valveGeneralFeed        @                          ���   �    @	                       @                                                                                                          
    @         *f*R*p*p  ���     ���                           @                             ���   �    @	                                                                                                                               
    @        N����  ���     ���                                            ������ ������� @                          ���   �    @	                       @                                                                                                           
    @        � �A�	�  ���     ���                                            ������ ������� @                          ���   �    @	                       @                                                                                                           
    @        |�����  ���     ���                                            ������ �������� @                          ���   �    @	                       @                                                                                                          
    @         b{N�����  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        �v!��  ���     ���                                             @                          ���   �    @	                       @                                                                                                          
    @         ��v�v������  ���     ���                           @                         ���� ���   �    @	                                                                                                                             
    @        P � � � � �     @                    ����� @���     ���             @        ���   �	   Arial @        start             @       �                                                                                                     
    @        P � � � �     @                    ���� @���     ���             @        ���   �	   Arial @    PLC_PRG.stop   stop             @       �                                                                                                      
    @        �0YD  ���     ��                                     PLC_PRG.ventWork   PLC_PRG.vent
   =%3.0i @                          ���   �    @	                       @                                                                                                          
    @         lXvv  ���     ���                           @                             ���   �    @	                                                                                                                             
    @        X:�OqD    @                    On @���     ���             @        ���   �    @	    PLC_PRG.flameButton                 @       �                                                                                                  0   1000
    @        N�!�  ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                          ���   �    @	                      @                                                                                                      0   1000
    @        *OI59  ���     ���                                        PLC_PRG.consFuelSensor
   =%3.0i @                          ���   �    @	                      @                                                                                                           
    @         �p�p�f�z�p�f�f�z�z  ���     ���                           @                         #    ���   �    @	                                                                                                                              
    @        �*�S�>  ���      �@                                    PLC_PRG.valveAlertStop        @                      $    ���   �    @	                       @                                                                                                          
    @         �f�R�p�p  ���     ���                           @                         %    ���   �    @	                                                                                                                               
    @        �n ui�   ���     ���                                             @                      &    ���   �    @	                       @                                                                                                          
    @         �� �TjT�t� �� N� D�   ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @         �T�T�J�^�T�J�J�^�^  ���     ���                           @                         '    ���   �    @	                                                                                                                              
    @        ��7�"  ���      �@                                    PLC_PRG.valveGeneralFeed        @                      (    ���   �    @	                       @                                                                                                          
    @         �J�6�T�T  ���     ���                           @                         )    ���   �    @	                                                                                                                               
    @         � � D� D� � �� �� �� ��   ���     ���                           @                         *    ���   �    @	                                                                                                                              
    @        F 1o Z   ���      �@                                    PLC_PRG.valveGeneralFeed        @                      +    ���   �    @	                       @                                                                                                          
    @         � n � �   ���     ���                           @                         ,    ���   �    @	                                                                                                                              
    @        �F �o �Z   ���     ���                                             @                      -    ���   �    @	                       @                                                                                                          
    @         �� �n �� ��   ���     ���                           @                         .    ���   �    @	                                                                                                                               
    @        v
 � �   ���     ���                                            ������ ������� @                      /    ���   �    @	                       @                                                                                                      0   1000
    @        v( �= �2   ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      0    ���   �    @	                      @                                                                                                          
    @         t�h�����  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        ��)
�  ���     ���                                             @                      1    ���   �    @	                       @                                                                                                          
    @         2�
�P�P�(�(�  ���     ���                           @                         2    ���   �    @	                                                                                                                              
    @        ���
�  ���     ��                                     PLC_PRG.ventWork   PLC_PRG.vent
   =%3.0i @                      3    ���   �    @	                       @                                                                                                          
    @         
�
�
�
�  ���     ���                           @                         4    ���   �    @	                                                                                                                              
    @         ��P�������  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         ������������  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         �����  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         ����,�  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         ������  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         T�T,T,T  ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @         3V,T6J6^6^          ���                           @                         ���� ���   �    @	                                                                                                                              
    @         �� �� �� ��   ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @         D����� �� �� ��           ���                           @                         5    ���   �    @	                                                                                                                               
    @         .�,�,�6�,�,�  ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @          *RR$*$$  ���     ���                           @                         9    ���   �    @	                                                                                                                              
    @         �Z �Z ��  ���     ���                           @                         :    ���   �    @	                                                                                                                              
    @        b���v�  ���     ���                                             @                      ;    ���   �    @	                       @                                                                                                          
    @         |v�v�  ���     ���                           @                         <    ���   �    @	                                                                                                                              
    @        �?�*�  ���      �@                                    PLC_PRG.valveGeneralFeed        @                      =    ���   �    @	                       @                                                                                                          
    @         **�**  ���     ���                           @                         >    ���   �    @	                                                                                                                               
    @        N�����  ���     ���                                            ������ ������� @                      ?    ���   �    @	                       @                                                                                                      0   1000
    @        N�����  ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      @    ���   �    @	                      @                                                                                                           
    @         ����$����$�$  ���     ���                           @                         A    ���   �    @	                                                                                                                              
    @        ������  ���      �@                                    PLC_PRG.valveAlertStop        @                      B    ���   �    @	                       @                                                                                                          
    @         �����  ���     ���                           @                         C    ���   �    @	                                                                                                                              
    @        x �� �� �  ���     ��                                     PLC_PRG.valveNormalFeed        @                      D    ���   �    @	                       @                                                                                                           
    @         � �� �� �� �� �� �� �� �  ���     ���                           @                         E    ���   �    @	                                                                                                                               
    @         X �Z �d �P �Z �d �P �P �  ���     ���                           @                         F    ���   �    @	                                                                                                                              
    @         � �� �� �� �  ���     ���                           @                         G    ���   �    @	                                                                                                                              
    @         B �Z �< �2 �  ���     ���                           @                         H    ���   �    @	                                                                                                                         0   100
    @        
 �3 � �  ���     ��                                     PLC_PRG.valveIndicator   PLC_PRG.valveLowFeed
   =%3.0i @                      I    ���   �    @	                      @                                                                                                          
    @         � �Z �Z 4Z D�D  ���     ���                           @                         J    ���   �    @	                                                                                                                               
    @        ��f) {��p  ���     ���                                            ������ ������� @                      K    ���   �    @	                       @                                                                                                           
    @        � �7��  ���     ���                                            ������ �������� @                      L    ���   �    @	                       @                                                                                                          
    @         � �� �� �   ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         � �� �� D� D  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         R��D��X��X��  ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @         D� D�� �� ��  ���     ���                           @                         M    ���   �    @	                                                                                                                              
    @        � 1� �   ���      �@                                    PLC_PRG.valveGeneralFeed        @                      N    ���   �    @	                       @                                                                                                          
    @         � �   ���     ���                           @                         O    ���   �    @	                                                                                                                               
    @         �� �� �� �� �� �� �� �� ��   ���     ���                           @                         P    ���   �    @	                                                                                                                              
    @        �� �� ��   ���      �@                                    PLC_PRG.valveGeneralFeed        @                      Q    ���   �    @	                       @                                                                                                          
    @         �� �� �� ��   ���     ���                           @                         R    ���   �    @	                                                                                                                              
    @         � �� �� � �   ���     ���                           @                         U    ���   �    @	                                                                                                                               
    @         ,� � � "� � �   ���     ���                           @                         V    ���   �    @	                                                                                                                              
    @         �B���� ���  ���     ���                           @                         W    ���   �    @	                                                                                                                              
    @         ����  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         q� D��� ��   ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         M�� 2� 2T2T  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @        F ?o *Z   ���     ���                                             @                      `    ���   �    @	                       @                                                                                                          
    @         0� *n *� >�   ���     ���                           @                         a    ���   �    @	                                                                                                                               
    @        ���]  
   ���     ���                                            ������ �����������  @                      b    ���   �    @	                       @                                                                                                      0   1000
    @        �( S=  2   ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      c    ���   �    @	                      @                                                                                                          
    @        pF �o �Z   ���     ���                                             @                      d    ���   �    @	                       @                                                                                                          
    @         �� �n �� ��   ���     ���                           @                         e    ���   �    @	                                                                                                                               
    @        f
 � �   ���     ���                                            ������ �������� @                      f    ���   �    @	                       @                                                                                                      0   1000
    @        \( �= �2   ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      g    ���   �    @	                      @                                                                                                          
    @        ��7�"  ���     ���                                             @                      h    ���   �    @	                       @                                                                                                          
    @         �J�6�T�T  ���     ���                           @                         i    ���   �    @	                                                                                                                               
    @        �� � ��   ���     ���                                            ������ ����������� @                      j    ���   �    @	                       @                                                                                                      0   1000
    @        �� ���   ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      k    ���   �    @	                      @                                                                                                          
    @        ~�����  ���     ���                                             @                      l    ���   �    @	                       @                                                                                                          
    @         ��������  ���     ���                           @                         m    ���   �    @	                                                                                                                               
    @        j|3��h  ���     ���                                            ������ ������������ CO2  @                      n    ���   �    @	                       @                                                                                                      0   1000
    @        j�����  ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      o    ���   �    @	                      @                                                                                                          
    @         ��  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         �R��  ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @         �t���$�$          ���                           @                         �    ���   �    @	                                                                                                                             
    @        Z h� }} r    @                    ��� @���     ���             @    �    ���   �    @	                       @       �                                                                                                     
    @        Z �� �} �    @                    ����� @���     ���             @    �    ���   �    @	                      @       �                                                                                                       
    @        l��	��  ���     ���                                            ������ ������� @                      �    ���   �    @	                       @                                                                                                           
    @        l��	��  ���     ���                                            ������ ������� @                      �    ���   �    @	                       @                                                                                                           
    @        P J� _� T  ���     ���                                            ����� ������� @                      �    ���   �    @	                       @                                                                                                           
    @        � JK_	T  ���     ���                                            ��������� ������� @                      �    ���   �    @	                       @                                                                                                          
    @         
r,r� rr  ���     ���                           @                         �    ���   �    @	                                                                                                                               
    @         |�� � r� h� |� |          �                             @                         �    ���   �    @	                                                                                                                              
    @         
�,�� ��  ���     ���                           @                         �    ���   �    @	                                                                                                                               
    @         |�� � �� �� �� �          �                             @                         �    ���   �    @	                                                                                                                              
    @        	 � �P ^P �� �� J� JJJJ�� �� �  ���     ���                           @                         ���� ���   �    @	                                                                                                                              
    @         � �P |P �J�J�  ���     ���                           @                         ���� ���   �    @	                                                                                                                               
    @        ��� = � ���   ���     �                                      Error    
   ������ @                      �    ���   �    @	                       @                                                                                                          
    @        �-'  ���     ���                                             @                      �    ���   �    @	                       @                                                                                                          
    @         :&D,D  ���     ���                           @                         �    ���   �    @	                                                                                                                               
    @        � �s�"�  ���     ���                                            ������ �������� ������ @                      �    ���   �    @	                       @                                                                                                      0   1000
    @        � �U�"�  ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      �    ���   �    @	                      @                                                                                                          
    @        "�K�6�  ���     ���                                             @                      �    ���   �    @	                       @                                                                                                          
    @         W�J�T�h�  ���     ���                           @                         �    ���   �    @	                                                                                                                               
    @        � NKc	X  ���     ���                                            ������ �������� ���� @                      �    ���   �    @	                       @                                                                                                      0   1000
    @        � l-�� v  ���     ���                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                      �    ���   �    @	                      @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����,   4�         #   Standard.lib 4.10.05 11:14:46 @�9BC)   SYSLIBCALLBACK.LIB 26.9.08 16:43:52 @��H   Util.lib 18.5.10 15:14:28 @���K%   SysLibFile.lib 23.9.04 10:11:36 @(wRA      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @               b   SysCallbackRegister @   	   RTS_EVENT       RTS_EVENT_FILTER       RTS_EVENT_SOURCE                   SysCallbackUnregister @               5   BCD_TO_INT @      GEN_MODE       POINT                  BLINK @          CHARCURVE @          DERIVATIVE @          EXTRACT @          FREQ_MEASURE @       	   GEN @          HYSTERESIS @          INT_TO_BCD @          INTEGRAL @          LIMITALARM @          LIN_TRAFO @       
   PACK @          PD @       	   PID @          PID_FIXCYCLE @          PUTBIT @          RAMP_INT @          RAMP_REAL @          STATISTICS_INT @          STATISTICS_REAL @          UNPACK @          VARIANCE @          Version_Util @             Globale_Variablen @           *   SysFileClose @      FILETIME                   SysFileCopy @           SysFileDelete @           SysFileEOF @           SysFileGetPos @           SysFileGetSize @           SysFileGetTime @           SysFileOpen @           SysFileRead @           SysFileRename @           SysFileSetPos @           SysFileWrite @              Globale_Variablen @                          ��������           2 �  �           ����������������  
             ����  ��������        ����  ��������                      POU                 Deriv  `                   Integ  _                   myPid  ]                  PLC_PRG                errorHandle  D                  sensControl  I              	   stopStart  a                  waterControl  C   A                   saveLoadParamFile  Y                	   SensError  F   ����              ���� ������                OptionsBoiler  Z   ����              ������������                ignition  j  ����              ���������� ����������                Global_Variables                     Variable_Configuration  	   ����                                         ��������             �B�a�              �                 	   localhost            P      	   localhost            P      	   localhost            P     C�a  +�Cv