

org #8000

include 'ctclib01.asm'

    CTC_Def_Addr #F9E0

;       INTEN    = bit  7 Interrupt             1 = Enabled                                         0 = Disabled
;       MODE     = bit  6 Mode                  1 = Counter                                         0 = Timer
;       PS*      = bit  5 PreScaler             1 = Divide by 256                                   0 = Divide by 16
;       TRIGE    = bit  4 Positive Edge         1 = Postive Edge Starts Timer or Counter            0 = Negative Edge
;       TRIG     = bit  3 Trigger               1 = Start on External Trigger                       0 = Start when Time Constant is loaded
;       TCF      = bit  2 Time Constant Follows 1 = Next Byte is a Time constant
;       CHANRES  = bit  1 Channel Reset         1 = Reset
;       CR       = bit  0 Control Register      1 = this is a Control Register Byte
;
;   CTC_Def_CW CR,CHANRES,TCF,TRIG,TRIGE,PS,MODE,INTEN
    CTC_Def_CW 1,1,1,0,1,0,1,0

    ;Init Channel 0, Time Constant = 255
    CTC_init 0,#FF

    ;   CTC_Def_CW CR,CHANRES,TCF,TRIG,TRIGE,PS,MODE,INTEN
    CTC_Def_CW 1,1,1,0,1,0,1,0

    ;Init Channel 1, Time Constant = 255
    CTC_init 1,#FF

    
ret 

save 'ctctst01.bin',#8000,1300,DSK,'ctctst01.dsk'




