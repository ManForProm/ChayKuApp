CoDeSys+k                     @        @   2.3.9.41ч    @   ConfigExtensionЯ          CommConfigEx7             CommConfigExEnd   ME                  IB                    % QB                    %   ME_End   CMЉ      CM_End   CTХ   џџџџџџџџ   CT_End   ConfigExtensionEnd/    @                             2)Ъa +    @      ЭЭЭЭЭЭЭЭ             ђBШa        _   @   ,   A:\CODESYS\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         h§н=     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ	           Load Start Value    PV           §џ
           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             h§н=     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ	           Reset Counter to 0    PV           §џ
           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             h§н=     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ
       
    Count Up    CD            §џ           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             h§н=     џџџџ           DELETE               STR               §џ              LEN           §џ	              POS           §џ
                 DELETE                                         h§н=     џџџџ           F_TRIG           M             §џ                 CLK            §џ           Signal to detect       Q            §џ	           Edge detected             h§н=     џџџџ           FIND               STR1               §џ	              STR2               §џ
                 FIND                                     h§н=     џџџџ           INSERT               STR1               §џ	              STR2               §џ
              POS           §џ                 INSERT                                         h§н=     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         h§н=     џџџџ           LEN               STR               §џ                 LEN                                     h§н=     џџџџ           MID               STR               §џ              LEN           §џ	              POS           §џ
                 MID                                         h§н=     џџџџ           R_TRIG           M             §џ                 CLK            §џ           Signal to detect       Q            §џ	           Edge detected             h§н=     џџџџ           REPLACE               STR1               §џ	              STR2               §џ
              L           §џ              P           §џ                 REPLACE                                         h§н=     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         h§н=     џџџџ           RS               SET            §џ              RESET1            §џ	                 Q1            §џ                       h§н=     џџџџ           RTC           M             §џ              DiffTime            §џ                 EN            §џ              PDT           §џ                 Q            §џ              CDT           §џ                       h§н=     џџџџ           SEMA           X             §џ                 CLAIM            §џ
              RELEASE            §џ                 BUSY            §џ                       h§н=     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ                       h§н=     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ           elapsed time             h§н=     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ           elapsed time             h§н=     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ           The pulse    ET           §џ       &    The current phase of the High-Signal             h§н=     џџџџ    R   C:\PROGRAM FILES (X86)\COMMON FILES\CAA-TARGETS\3S\LIB_PLCWINNT\SYSLIBCALLBACK.LIB          SYSCALLBACKREGISTER            	   iPOUIndex           §џ       !    POU Index of callback function.    Event            	   RTS_EVENT   §џ           Event to register       SysCallbackRegister                                      жМ9;     џџџџ           SYSCALLBACKUNREGISTER            	   iPOUIndex           §џ       !    POU Index of callback function.    Event            	   RTS_EVENT   §џ           Event to register       SysCallbackUnregister                                      жМ9;     џџџџ    (   A:\CODESYS\CODESYS V2.3\LIBRARY\UTIL.LIB       
   BCD_TO_INT               B           §џ           byte containing the BCD value    
   BCD_TO_INT                                     ?ќ>      џџџџ           BLINK           CLOCK                   TP    §џ                 ENABLE            §џ       +    TRUE:run Blink, FALSE: OUT keeps its value   TIMELOW           §џ           Time for OUT=FALSE    TIMEHIGH           §џ           Time for OUT=TRUE       OUT            §џ	       &    output variable, starting with FALSE             ?ќ>      џџџџ        	   CHARCURVE           I            §џ                 IN           §џ           input signal    N           §џ       @    number of  points defining the characteristic curve : 2<=N<=11       OUT           §џ           output variable    ERR           §џ       я    error :
												0 : 	no error
												1 :	error in ARRAY: wrong sequence ( completely tested, only if IN is equal to largest X-value of P)
												2 :	IN outside of limits of P
												4 :	number of POINTS (N) invalid       P    	  
                    POINT          §џ       8    ARRAY of N points to describe the characteristic curve         ?ќ>      џџџџ        
   DERIVATIVE           X3             §џ              X2             §џ              X1             §џ              T2            §џ              T1            §џ              INIT            §џ                 IN            §џ           input variable    TM           §џ           time since last call in msec    RESET            §џ           reset: set OUT to zero       OUT            §џ
           derivative             ?ќ>      џџџџ           EXTRACT               X           §џ           value    N           §џ           number of bit to be extracted       EXTRACT                                      ?ќ>      џџџџ           FREQ_MEASURE           OLDIN             §џ              INIT             §џ              OLDT            §џ              DIFF            §џ              ADIFF   	  	                        §џ              V            §џ              B            §џ              I            §џ                 IN            §џ           input signal    PERIODS           
              §џ       A    out is the average frequency during PERIODS (number of periods)    RESET            §џ           reset measurement       OUT            §џ	           frequency [Hz]   VALID            §џ
       \    FALSE: not yet PERIODS measurements done OR time distance between two rising edges > 3*OUT             'Ћ5B      џџџџ           GEN           CET            §џ              PER            §џ              COUNTER            §џ              CLOCK                    TON    §џ              help             §џ                 MODE               GEN_MODE   §џ       p   define type :
								TRIANGLE				triangular	from - AMPL. to + AMPL.
								TRIANGLE_POS		triangular	from 0 to AMPL. 
								SAWTOOTH_RISE	sawtooth increasing from -AMPL. to +AMPL.
								SAWTOOTH_FALL	sawtooth decreasing from AMPL to -AMPL
								RECTANGLE			rectangular switching from  -AMPL. to +AMPL 
								SINUS					sinus
								COSINUS				cosinus    BASE            §џ       A    FALSE: period referring to call; TRUE: period referring to time    PERIOD    ш     §џ       )    period time, only relevant if BASE=TRUE    CYCLES    ш     §џ       9    number of calls per period, only relevant if BASE=FALSE 	   AMPLITUDE           §џ           amplitude    RESET            §џ           reset       OUT           §џ           generated function variable             ЁђK      џџџџ        
   HYSTERESIS               IN           §џ           input value    HIGH           §џ           upper threshold value    LOW           §џ           lower threshold value       OUT            §џ	           hysteresis value             ?ќ>      џџџџ        
   INT_TO_BCD               I           §џ       !    INT value to be converted to BCD   
   INT_TO_BCD                                     ?ќ>      џџџџ           INTEGRAL               IN            §џ           input variable    TM           §џ           time since last call in msec    RESET            §џ       1    reset: OUT is set to zero and OVERFLOW to false       OUT            §џ	           value of the integral    OVERFLOW            §џ
       
    overflow             ?ќ>      џџџџ        
   LIMITALARM               IN           §џ           INPUT value    HIGH           §џ           upper threshold value    LOW           §џ           lower threshold value       O            §џ	            TRUE, if IN > HIGH, else FALSE    U            §џ
           TRUE, if IN < LOW, else FALSE    IL            §џ           neither O nor U             ?ќ>      џџџџ        	   LIN_TRAFO           Diff             §џ                 IN            §џ           input value   IN_MIN            §џ           minimum input value    IN_MAX            §џ           maximum input value    OUT_MIN            §џ       $    corresponding minimum output value    OUT_MAX            §џ       $    corresponding maximum output value       OUT            §џ           output value    ERROR            §џ       .    error: IN_MIN = IN_MAX or IN out of interval             НЪ1B      џџџџ           PACK               B0            §џ           value of bit 0    B1            §џ           value of bit 1    B2            §џ           value of bit 2    B3            §џ           value of bit 3    B4            §џ           value of bit 4    B5            §џ	           value of bit 5    B6            §џ
           value of bit 6    B7            §џ           value of bit 7       PACK                                     ?ќ>      џџџџ           PD           CLOCK                    TON    §џ              D        
             
   DERIVATIVE    §џ              TMDIFF            §џ              ERROR             §џ              INIT            §џ              Y_ADDOFFSET             §џ              KPcopy             §џ              TVcopy             §џ           
      ACTUAL            §џ            actual value, process variable 	   SET_POINT            §џ           desired value, set point    KP            §џ           proportionality const. (P)   TV            §џ       '    rate time, derivative time (D) in sec    Y_MANUAL            §џ       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            §џ	       !    offset for manipulated variable    Y_MIN            §џ
       (    minimum value for manipulated variable    Y_MAX            §џ       (    maximum value for manipulated variable    MANUAL            §џ       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            §џ       !    reset: set Y output to Y_OFFSET       Y            §џ            manipulated variable, set value   LIMITS_ACTIVE            §џ       1    true set value would exceed limits Y_MIN, Y_MAX             ПыЏB      џџџџ           PID     
      CLOCK                    TON    §џ              I                   INTEGRAL    §џ              D        
             
   DERIVATIVE    §џ              TMDIFF            §џ              ERROR             §џ              INIT            §џ              Y_ADDOFFSET             §џ              KPcopy             §џ              TNcopy             §џ              TVcopy             §џ                  ACTUAL            §џ            actual value, process variable 	   SET_POINT            §џ           desired value, set point    KP            §џ           proportionality const. (P)   TN            §џ           reset time (I) in sec    TV            §џ       &    rate time, derivative time (D) in sec   Y_MANUAL            §џ	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            §џ
       !    offset for manipulated variable    Y_MIN            §џ       (    minimum value for manipulated variable    Y_MAX            §џ       (    maximum value for manipulated variable    MANUAL            §џ       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            §џ       9    reset: set Y output to Y_OFFSET and reset integral part       Y            §џ            manipulated variable, set value   LIMITS_ACTIVE            §џ       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            §џ           overflow in integral part             ЬыЏB      џџџџ           PID_FIXCYCLE     	      I                   INTEGRAL    §џ              D        
             
   DERIVATIVE    §џ              TMDIFF            §џ              ERROR             §џ              INIT            §џ              Y_ADDOFFSET             §џ              KPcopy             §џ              TNcopy             §џ              TVcopy             §џ                  ACTUAL            §џ            actual value, process variable 	   SET_POINT            §џ           desired value, set point    KP            §џ           proportionality const. (P)   TN            §џ           reset time (I) in sec    TV            §џ       &    rate time, derivative time (D) in sec   Y_MANUAL            §џ	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            §џ
       !    offset for manipulated variable    Y_MIN            §џ       (    minimum value for manipulated variable    Y_MAX            §џ       (    maximum value for manipulated variable    MANUAL            §џ       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            §џ       9    reset: set Y output to Y_OFFSET and reset integral part    CYCLE            §џ           time in s between two calls       Y            §џ            manipulated variable, set value   LIMITS_ACTIVE            §џ       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            §џ           overflow in integral part             жыЏB      џџџџ           PUTBIT               X           §џ           value to be manipulated    N           §џ           position of bit to be changed    B            §џ           value of specified bit       PUTBIT                                     ?ќ>      џџџџ           RAMP_INT           DIFF            §џ              OLD_IN            §џ              TB            §џ              CET            §џ              CH            §џ              CLOCK                    TON    §џ                 IN           §џ           input variable    ASCEND           §џ           maximum positive slope    DESCEND           §џ       )    maximum negative slope (non-negative!!)    TIMEBASE           §џ           reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            §џ
           reset       OUT           §џ       &    value of function with limited slope             ?ќ>      џџџџ        	   RAMP_REAL           DIFF             §џ              OLD_IN             §џ              TB            §џ              CET            §џ              CLOCK                    TON    §џ              probe             §џ                 IN            §џ           input variable    ASCEND            §џ           maximum positive slope    DESCEND            §џ       )    maximum negative slope (non-negative!!)    TIMEBASE           §џ           reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            §џ
           reset       OUT            §џ       &    value of function with limited slope             ?ќ>      џџџџ           STATISTICS_INT           SUM            §џ              COUNTER            §џ                 IN           §џ           input value   RESET            §џ       J    reset: average set to 0, min and max to minimum and maximum possible INTs      MN    џ     §џ           minimum value   MX     џџ   §џ	           maximum value   AVG           §џ
           average value            ?ќ>      џџџџ           STATISTICS_REAL           COUNTER            §џ              SUM             §џ                 IN            §џ           input value   RESET            §џ       K    reset: average set to 0, min and max to minimum and maximum possible REALs      MN    цБa   3E+38   §џ           minimum value   MX    ъ   1E-37   §џ	           maximum value   AVG            §џ
           average value            ?ќ>      џџџџ           UNPACK               B           §џ           byte to be unpacked       B0            §џ           value of bit 0    B1            §џ           value of bit 1    B2            §џ	           value of bit 2    B3            §џ
           value of bit 3    B4            §џ           value of bit 4    B5            §џ           value of bit 5    B6            §џ           value of bit 6    B7            §џ           value of bit 7             ?ќ>      џџџџ           VARIANCE           Z            §џ              A             §џ              B             §џ                 IN            §џ           input variable    RESET            §џ           reset       OUT            §џ       
    variance             ?ќ>      џџџџ           VERSION_UTIL               B            §џ                 Version_Util                                     ЮKьD      џџџџ                  PLC_PRG     F      valveLowFeed            +               valveGeneralFeed             +               valveAlertStop             +            
   tempSensor             +               consFuelSensor            +               start             +               flameSensor             + 	              igniter             + 
              charCurveVL                 	   CHARCURVE    +            
   valveIntLV           +               stop             +               valveNormalFeed             +               trigerIgniter                 R_TRIG    +               flameWarning             +            
   tonIgniter                    TON    +            	   rsIgniter                 RS    +               trigenIgniterWarning                 R_TRIG    +            
   ctuIgniter                    CTU    +               ctusIgniter            +               rsStop                 RS    +               vent            +               ventMAX           +               stopVent             +               tonVent                    TON    +               trigenVentStop                 R_TRIG    +               rsStartStop                 RS    +            
   outIgniter            +               outStopVentTime            +            
   rsStopVent                 RS    +               fuelSensorLimit    d       +                valveIndicator             + !              tpFlameWarning                   TP    + "              outFlameWarning            + #              tonCtuIgniter                    TON    + $              outCtuIgniter            + %           
   stopButton             + &              rsStopButton                 RS    + '           
   startState             + (              ventWork             + )              flameButton             + *              outStopVent            + +              tonStopVent                    TON    + ,              rsStopVentTime                 RS    + -              _ImpVar_43_240                            _ImpVar_43_122                            _ImpVar_43_99                            _ImpVar_43_104                            _ImpVar_43_16                            _ImpVar_43_234                            _ImpVar_43_233                            _ImpVarEnEno_43_61                            _ImpVar_43_61                           _ImpVar_43_29                            _ImpVar_43_31                            _ImpVar_43_189                            _ImpVar_43_34                            _ImpVar_43_50                           _ImpVar_43_51                           _ImpVar_43_239                            _ImpVar_43_56                            _ImpVar_43_187                            _ImpVar_43_89                            _ImpVar_43_110                            _ImpVar_43_112                            _ImpVar_43_121                            _ImpVarEnEno_43_120                            _ImpVar_43_120                           _ImpVar_43_133                            _ImpVar_43_208                            _ImpVar_43_227                                             (Ъa  @   џџџџ            
    j  +   ( Ka      K   Ya     K   ga     K   ua     K   a                 a         +     КЛlocalhost   0>PіXк Mћu Ъ/ Ъ/к  Ъ/ Ъ/       Р                       Р Ъ/  *џџџџ   Ь*   A>E    И*?   <^Фк ду Цдк пу   S т `^Э         A>E 4       u  @^л ду Цл  т 	   `^4л Цт                  @^EZЎ     ,   ,                                                        K        @   ђBШa	      , Ж Ж u                     CoDeSys 1-2.2   рџџџ  ЭЭЭЭЭЭЭЭ                     Ш          ы      
   ђ         ѓ         ї          ј                    "          $                                                   '          (          Б          Г          Е          Й          К         Ж          Я          а          б         М          О          Р          Т          Ф         Ц         Ъ       P  Ш          Ь         Ю         в                    ~                                                                                                                                                                                 @         @         @         @         @         @  Ђ                   Ј                   M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          №          ђ         ѓ      џџџџє          ѕ          ї      (                                                                        "         !          #          $                   ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          Є          Ѕ          l          o          p          q          r          s         u          о          v         І          Ї      џџџџ|         ~                  x          z      (   Љ          Ћ         %         ­          Ў          Џ         @         н          ф          и         &          №          	                   ц          ч          ш         щ          ъ         Њ          В          Д          Ќ          ­          Џ          А          З          И          О          ь          э                            I         J         K          	          L         M                                       о          P         Q          S          )          	          	                     	          +	       @  ,	       @  -	      џџџџџџџџШ   ђ         ѓ         ї          ј                    "          $                                                   '          (          Б          Г          Е          Й          К         Ж          Я          а          б         М          О          Р          Т          Ф         Ц         Ъ       P  Ш          Ь         Ю         в                                                                                                                                      Ђ         Ј          a          t          y          z          b         c         X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          №          ђ         ѓ      џџџџє          ѕ          ї      (                                                                        "         !          #          $                   ^          f          g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          Є         Ѕ          l          o          p          q          r          s         u          о          v         І          w          x          Ї      џџџџ|         ~                  x          z      (   Љ          Ћ         %         ­          Ў          Џ         @         м          н          р      а  с      а  у         ф          и         &          №          	                   ц          ч          ш         щ          ъ         Њ          В          Д          Ќ          ­          Џ          А          З          И          О          ы          ь          э          ў          џ                                                 I         J         K          	          L         M                                       о          P         Q          S          )          	          	                     	          +	       @  ,	       @  -	      џџџџџџџџџџџџџџџџЭЭЭЭљџџџ  ЭЭЭЭЭЭЭЭ              Standard Parameter OD                        ЭЭЭЭ    џџџ                  ЭЭЭЭ    џџџ                                Тћсю№ ђшяр §ыхьхэђр.      
      BOOL   8-bit-Integer   16-bit-Integer   32-bit-Integer   byte   word   double word   real   string   long real (64-bit)                          low   middle   high                       	   read only
   write only
   read-write                             Standard Variable OD                        ЭЭЭЭ    џџџ                  ЭЭЭЭ    џџџ                          low   middle   high                       	   read only
   write only
   read-write                                                 Ї  	   	   Name                 џџџџ
   Index                 џџ         SubIndex                 џ          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             џџџџ
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 џџџџ
   Index                 џџ         SubIndex                 џ          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 џџџџ
   Index                 џџ         SubIndex                 џ          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             џџџџ   Index-Offset                 џџ         SubIndex-Offset                 џ          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member            	   	   Name                 џџџџ   Member    	             џџџџ
   Value                Member    
   Index                 џџ         SubIndex                 џ          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          Ї  	   	   Name                 џџџџ
   Index                 џџ         SubIndex                 џ          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             џџџџ
   Value                Variable       Min                Variable       Max                Variable                         ђџџџ  ЭЭЭЭЭЭЭЭ                  _Dummy@    @   @@    @   @             Єя@             Єя@@   @     v@@   ; @+   ёџџџ  ЭЭЭЭЭЭЭЭ                                  v@      4@   А             v@      D@   А                       Р       @                           f@      4@     f@                v@     f@     @u@     f@        їСы           Module.Root-1__not_found__    Steuerungskonfigurationџџџџ IB          % QB          % MB          %    ђBШa	rхЩa     ЭЭЭЭЭЭЭЭ           VAR_GLOBAL
END_VAR
                                                                                  "     ЭЭЭЭЭЭЭЭ              ђBШa             %      start   Called when program starts    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      stop   Called when program stops    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      before_reset   Called before reset takes place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      after_reset   Called after reset took place    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      shutdown#   Called before shutdown is performed    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_cycletime_overflow)   Called when a cycletime overflow happened    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_watchdog%   Software watchdog OF IEC-task expired    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fieldbus   Fieldbus error occurred    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 	   Ш      excpt_ioupdate   IO-update error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 
   Ш      excpt_illegal_instruction   Illegal instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_access_violation   Access violation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_priv_instruction   Privileged instruction    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_dividebyzero   Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fpu_error   FPU: Unspecified error    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fpu_denormal_operand   FPU: Denormal operand    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fpu_dividebyzero   FPU: Division BY zero    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fpu_invalid_operation   FPU: Invalid operation    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fpu_overflow   FPU: Overflow    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      excpt_fpu_stack_check   FPU: Stack check    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      after_reading_inputs   Called after reading of inputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      before_writing_outputs    Called before writing of outputs    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш   
   debug_loop   Debug loop at breakpoint    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
    Ш      interrupt_1   Interrupt 1    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 $   Ш      interrupt_2   Interrupt 2    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 %   Ш      interrupt_3   Interrupt 3    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 &   Ш      interrupt_4   Interrupt 4    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 '   Ш      interrupt_5   Interrupt 5    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 (   Ш      interrupt_6   Interrupt 6    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 )   Ш      interrupt_7   Interrupt 7    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 *   Ш      interrupt_8   Interrupt 8    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 +   Ш      interrupt_9   Interrupt 9    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 ,   Ш      interrupt_10   Interrupt 10    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 -   Ш      interrupt_11   Interrupt 11    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 .   Ш      interrupt_12   Interrupt 12    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 /   Ш      interrupt_13   Interrupt 13    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 0   Ш      interrupt_14   Interrupt 14    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 1   Ш      interrupt_15   Interrupt 15    h   FUNCTION systemevent: DWORD
VAR_INPUT
	dwEvent: DWORD;
	dwFilter: DWORD;
	dwOwner: DWORD;
END_VAR
 2   Ш   $ћџџџ  ЭЭЭЭЭЭЭЭ               ЭЭЭЭЭЭЭЭ           Standard ђBШa	ђBШa      ЭЭЭЭЭЭЭЭ                         	rхЩa     ЭЭЭЭЭЭЭЭ           VAR_CONFIG
END_VAR
                                                                                   '                ЭЭЭЭЭЭЭЭ           Global_Variables ђBШa	ЫЩa     ЭЭЭЭЭЭЭЭ           VAR_GLOBAL
END_VAR
                                                                                               '           	     ЭЭЭЭЭЭЭЭ           Variable_Configuration ђBШa	ђBШa	     ЭЭЭЭЭЭЭЭ           VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @       dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssєџџџ              Ь                -     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             бшёђхьр      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @       dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssєџџџ              Ь       )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     +   , ъџ§ y2           PLC_PRG (Ъa	(Ъa      ЭЭЭЭЭЭЭЭ        І  PROGRAM PLC_PRG
VAR
	valveLowFeed: INT;
	valveGeneralFeed: BOOL;
	valveAlertStop: BOOL;
	tempSensor: BOOL;
	consFuelSensor: INT;
	start: BOOL;
	flameSensor: BOOL;
	igniter: BOOL;
	charCurveVL: CHARCURVE;
	valveIntLV: INT:=20;
	stop: BOOL;
	valveNormalFeed: BOOL;
	trigerIgniter: R_TRIG;
	flameWarning: BOOL;
	tonIgniter: TON;
	rsIgniter: RS;
	trigenIgniterWarning: R_TRIG;
	ctuIgniter: CTU;
	ctusIgniter: INT;
	rsStop: RS;
	vent: INT;
	ventMAX: INT:=20;
	stopVent: BOOL;
	tonVent: TON;
	trigenVentStop: R_TRIG;
	rsStartStop: RS;
	outIgniter: TIME;
	outStopVentTime: TIME;
	rsStopVent: RS;
	fuelSensorLimit: INT:=100;
	valveIndicator: BOOL;
	tpFlameWarning: TP;
	outFlameWarning: TIME;
	tonCtuIgniter: TON;
	outCtuIgniter: TIME;
	stopButton: BOOL;
	rsStopButton: RS;
	startState: BOOL;
	ventWork: BOOL;
	flameButton: BOOL;
	outStopVent: TIME;
	tonStopVent: TON;
	rsStopVentTime: RS;
END_VAR)d k   џџџџ&   3   1   7       rsStop    RS         Х                                      ё   џџџџ4   !   6   !      stop     №   џџџџ7      ;   "             NOT         ё                               ђ   џџџџ5   #   9   #   
   startState,     r   џџџџ?   %   A   %      stop     s   џџџџb   '   d   '      vent x        z   џџџџ?   '   C   *             NOT         {                               {   џџџџ=   )   ?   )      start     t   џџџџO   (   S   (      ventMAX+        џџџџd   1   k   1      outStopVentTimeT ~        b   џџџџ   1      1      ctusIgniter0     c   џџџџ   0      4             GT         b   d                                   e   џџџџ;   7   =   7      stop h         d   џџџџ   3      3      2     h   џџџџ1   5   5   :             OR         k   "   п                                          џџџџR   H   U   H      igniter Л         
   џџџџ	               start        џџџџ&      ,         valveLowFeedD =           џџџџ                      AND               8                                       	   џџџџ   :      :      consFuelSensorJ        џџџџ6      =         valveGeneralFeedW             џџџџ#      )         valveAlertStopE          ы   џџџџ               ventWork*     ъ   џџџџ                      NOT         ы                               C   џџџџ               stop     )   џџџџ      	         flameSensor;     т   џџџџ#      '      
   startState,          щ   џџџџ                      AND         
   ъ                                      џџџџ                rsStartStop3    RS         щ   C                                   *   џџџџ/      6         valveNormalFeedS n         =   џџџџ      $                MOVE                                         џџџџ               valveGeneralFeedW     ю   џџџџ7      <         flameButton:        џџџџ      
         valveAlertStopE        џџџџ            
   valveIntLV2        џџџџ   G      G      valveGeneralFeedW        џџџџ   I      I      valveAlertStopE     F   џџџџ   D   %   H       trigerIgniter6    R_TRIG&                                        H   џџџџ.   L   4   P    
   tonIgniter-    TON         R   I                                       L   џџџџI   M   N   M      flameWarningB X            џџџџ   M      M      valveLowFeedD        џџџџ    8   $   8      stopVent)     н   џџџџ   >      >   
   stopButton2     ф   џџџџ   @      @   
   startState,     ^   џџџџ.   >   7   C    
   ctuIgniter,    CTU         F   `                                               _   џџџџ7   G   ;   G      ctusIgniter0 ^        р   џџџџ   A      A      stopVent)     `   џџџџ,   A   .   A      stop        џџџџ   D      J             AND                  Y                                              џџџџ   K      O             GT                                                Н   џџџџD   J   H   M             NOT         М                                   џџџџ	   O      O      10     "   џџџџ"   9   &   =             GT         	   #                                   #   џџџџ   <      <      fuelSensorLimitJ     2   џџџџ'      +                ADD         3   4                                   3   џџџџ      $                BOOL_TO_INTI         n                               4   џџџџ"      $         0     5   џџџџ/      5         valveLowFeedD 2         я   џџџџ?      C   "             AND         ю   №   ђ                                       ѓ   џџџџG      L         flameSensor; я         7   џџџџ                 flameSensor;     8   џџџџ
         !             NOT         7                               I   џџџџ*   O   .   O      t#4500ms.     Л   џџџџK   F   O   J             AND         И   Н                                   М   џџџџA   L   C   L      stop     R   џџџџ   J   *   N    	   rsIgniter%    RS            W                                   W   џџџџ   Q      Q      flameWarningB     X   џџџџ6   L   >   P       trigenIgniterWarning`    R_TRIG&         H                               Y   џџџџ   O      R             NOT         W                               n   џџџџ                      AND         )   p   а                                       o   џџџџ               stop     p   џџџџ                      NOT         o                               y   џџџџF   #   J   (             AND         r   z                                          x   џџџџS   $   X   (             MOVE    y   t                                  џџџџM   +   X   /    
   rsStopVent3    RS         y                                      ~   џџџџ]   +   c   /       tonVent%    TON                                                      џџџџ   *   "   *      stopVent)        џџџџG   .   K   .      stopVent)        џџџџY   .   \   .      t#15s        џџџџo   -   s   -      stopVent)             џџџџf   +   m   /       trigenVentStopG    R_TRIG&         ~                               ч   џџџџY   )   ]   )      ventWork*             џџџџ@   +   D   .             NOT         ў                                  џџџџ5   R   9   R   
   outIgniter- H        Ќ   џџџџ   Q      Q      valveIndicatorB          З   џџџџI   B   P   B      outFlameWarningT И        И   џџџџA   F   H   J       tpFlameWarningN    TP         F   Й                                       Й   џџџџ<   J   @   J      t#2500ms.     Х   џџџџ   0      4       tonCtuIgniter=    TON         c   Ц                                       Ц   џџџџ   6      6      t#2000ms.     Ч   џџџџ   6      6      outCtuIgniter= Х        Я   џџџџ      	         ctusIgniter0     а   џџџџ
                      GT         Я   б                                   б   џџџџ               0     у   џџџџ   =      A             AND         н   ф                                   п   џџџџ   =   )   A       rsStopButton<    RS         у   р                                   ў   џџџџ3   *   9   .       tonStopVent;    TON            џ                                       џ   џџџџ/   -   3   -      t#500ms(        џџџџ$   (   /   ,       rsStopVentTimeL    RS            y                                     џџџџ:   0   ?   0      outStopVent; ў        d                   j  , џџєџOм           ignition rхЩa
    @ЭЭЭЭg)Ъa&   P   &                                                                                                      
    @         *ИИИјИ  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @         ИИЎТИИ  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @        J,sU^@  џџџ     џ                                     PLC_PRG.valveNormalFeed        @                          єџ   Ь    @	                       @                                                                                                           
    @         D@""@^^^  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                               
    @         D@""@^^^  џџџ     џџџ                           @                             єџ   Ь    @	                                                                                                                              
    @         |@@r@r@  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @         і @@№ @ц @  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                         0   100
    @        О ,ч Uв @  џџџ     џ                                     PLC_PRG.valveIndicator   PLC_PRG.valveLowFeed
   =%3.0i @                          єџ   Ь    @	                      @                                                                                                           
    @         ЦИаИјЎјТаИЈЎЈЎЈТЈТ  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @         лЁ^ИЈИЈИ  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @         ^ИИ  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @        r1  џџџ     џџџ                                             @                          єџ   Ь    @	                       @                                                                                                          
    @         "ЎИ0И  џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @        |2 с Ўd   џџџ     џџџ                                             @                          єџ   Ь    @	                       @                                                                                                          
    @          " Єd Єd   џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @         Oш "в в м   џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @        P Йo Љ_   џџџ     џ                                     PLC_PRG.igniter        @                      	    єџ   Ь    @	                       @                                                                                                          
    @         њd рd d d   џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @        P 1y d   џџџ     џ                                     PLC_PRG.flameSensor        @                          єџ   Ь    @	                       @                                                                                                          
    @        Мrха  џџџ      џ@                                    PLC_PRG.valveGeneralFeed        @                          єџ   Ь    @	                       @                                                                                                          
    @         аЎааИаИ  џџџ     џџџ                           @                             єџ   Ь    @	                                                                                                                               
    @        2 mG :<   џџџ     џџџ                                            Фрђїшъ яырьхэш @                          єџ   Ь    @	                       @                                                                                                           
    @        є6YK&@  џџџ     џџџ                                            Фрђїшъ №рёѕюфр @                          єџ   Ь    @	                       @                                                                                                           
    @        n н Ѕ   џџџ     џџџ                                            Ъырярэ №ючцшур @                          єџ   Ь    @	                       @                                                                                                           
    @        "T  џџџ     џџџ                                            Ъырярэ юёэютэющ @                          єџ   Ь    @	                       @                                                                                                          
    @         У Ў Ўв bв bв   џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                              
    @        О Чћ Јм   џџџ     џџџ                                             @                          єџ   Ь    @	                       @                                                                                                          
    @         а ЈО bО bц в м   џџџ     џџџ                           @                         џџџџ єџ   Ь    @	                                                                                                                             
    @         §Щ РЊ     @                    бђр№ђ @ШШШ     ммм             @        эџ   Ь	   Arial @        PLC_PRG.start             @                                                                                                            
    @        в §Р№     @                    бђюя @ШШШ     ммм             @        эџ   Ь	   Arial @    PLC_PRG.stop   PLC_PRG.stopButton             @                                                                                                             
    @        x НЁ Ј   џџџ     џ                                     PLC_PRG.ventWork   PLC_PRG.vent
   =%3.0i @                          єџ   Ь    @	                       @                                                                                                          
    @         ЈД Ј  ЈО ЈО   џџџ     џџџ                           @                             єџ   Ь    @	                                                                                                                             
    @        ў 1      @                    On @ШШШ     ммм             @        єџ   Ь    @	    PLC_PRG.flameButton                 @                                                                                                         0   1000
    @        єTYi&^  џџџ     џџџ                                        PLC_PRG.fuelSensorLimit
   =%3.0i @                          єџ   Ь    @	                      @                                                                                                      0   1000
    @        Тrѕл  џџџ     џџџ                                        PLC_PRG.consFuelSensor
   =%3.0i @                          єџ   Ь    @	                      @                                                                                                           
    @         bИlИЎТlИDЎDЎDТDТ  џџџ     џџџ                           @                         #    єџ   Ь    @	                                                                                                                              
    @        Xrl  џџџ      џ@                                    PLC_PRG.valveAlertStop        @                      $    єџ   Ь    @	                       @                                                                                                          
    @         lЎllИlИ  џџџ     џџџ                           @                         %    єџ   Ь    @	                                 џ   џџ   џ   џџ   џ џ џ РРР                                      §џџџ,   4№         #   Standard.lib 4.10.05 11:14:46 @і9BC)   SYSLIBCALLBACK.LIB 26.9.08 16:43:52 @чмH   Util.lib 18.5.10 15:14:28 @ЄђK      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @               b   SysCallbackRegister @   	   RTS_EVENT       RTS_EVENT_FILTER       RTS_EVENT_SOURCE                   SysCallbackUnregister @               5   BCD_TO_INT @      GEN_MODE       POINT                  BLINK @          CHARCURVE @          DERIVATIVE @          EXTRACT @          FREQ_MEASURE @       	   GEN @          HYSTERESIS @          INT_TO_BCD @          INTEGRAL @          LIMITALARM @          LIN_TRAFO @       
   PACK @          PD @       	   PID @          PID_FIXCYCLE @          PUTBIT @          RAMP_INT @          RAMP_REAL @          STATISTICS_INT @          STATISTICS_REAL @          UNPACK @          VARIANCE @          Version_Util @             Globale_Variablen @                          ЭЭЭЭЭЭЭЭ           2 ѓ  ѓ           џџџџџџџџџџџџџџџџ  
             њџџџ  ЭЭЭЭЭЭЭЭ        јџџџ  ЭЭЭЭЭЭЭЭ                      POU                PLC_PRG  +   џџџџ             вшяћ фрээћѕ  џџџџ              Тшчѓрышчрішш                ignition  j  џџџџ               Уыюсрыќэћх ях№хьхээћх                 Global_Variables                     Variable_Configuration  	   џџџџ                                         ЭЭЭЭЭЭЭЭ             ђBШaШ              Ш                 	   localhost            P      	   localhost            P      	   localhost            P     CШa    &Ц