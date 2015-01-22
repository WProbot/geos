;GEOS variable memory locations sorted by address
;reassembled by Maciej 'YTM/Alliance' Witkowiak

zpage           =       $00
;

CPU_DDR         =       $00
CPU_DATA        =       $01
;
r0              =       $02
r0L             =       $02
r0H             =       $03
r1              =       $04
r1L             =       $04
r1H             =       $05
r2              =       $06
r2L             =       $06
r2H             =       $07
r3              =       $08
r3L             =       $08
r3H             =       $09
r4              =       $0a
r4L             =       $0a
r4H             =       $0b
r5              =       $0c
r5L             =       $0c
r5H             =       $0d
r6              =       $0e
r6L             =       $0e
r6H             =       $0f
r7              =       $10
r7L             =       $10
r7H             =       $11
r8              =       $12
r8L             =       $12
r8H             =       $13
r9              =       $14
r9L             =       $14
r9H             =       $15
r10             =       $16
r10L            =       $16
r10H            =       $17
r11             =       $18
r11L            =       $18
r11H            =       $19
r12             =       $1a
r12L            =       $1a
r12H            =       $1b
r13             =       $1c
r13L            =       $1c
r13H            =       $1d
r14             =       $1e
r14L            =       $1e
r14H            =       $1f
r15             =       $20
r15L            =       $20
r15H            =       $21
;
a0              =       $fb
a0L             =       $fb
a0H             =       $fc
a1              =       $fd
a1L             =       $fd
a1H             =       $fe
a2              =       $70
a2L             =       $70
a2H             =       $71
a3              =       $72
a3L             =       $72
a3H             =       $73
a4              =       $74
a4L             =       $74
a4H             =       $75
a5              =       $76
a5L             =       $76
a5H             =       $77
a6              =       $78
a6L             =       $78
a6H             =       $79
a7              =       $7a
a7L             =       $7a
a7H             =       $7b
a8              =       $7c
a8L             =       $7c
a8H             =       $7d
a9              =       $7e
a9L             =       $7e
a9H             =       $7f

;

curPattern              =       $22
string                  =       $24
baselineOffset          =       $26
curSetWidth             =       $27
curHeight               =       $29
curIndexTable           =       $2a
cardDataPntr            =       $2c
currentMode             =       $2e
dispBufferOn            =       $2f
mouseOn                 =       $30
msePicPtr               =       $31
windowTop               =       $33
windowBottom            =       $34
leftMargin              =       $35
rightMargin             =       $37
pressFlag               =       $39
mouseXPos               =       $3a
mouseYPos               =       $3c
returnAddress           =       $3d
graphMode               =       $3f
TURBO_DD00              =       $8e     ; from 1541 turbo
TURBO_DD00_CPY          =       $8f     ; from 1541 turbo
STATUS                  =       $90
curDevice               =       $ba
;
irqvec                  =       $0314
bkvec                   =       $0316
nmivec                  =       $0318
;
APP_RAM                 =       $0400
BACK_SCR_BASE           =       $6000
PRINTBASE               =       $7900
OS_VARS                 =       $8000
;
diskBlkBuf              =       $8000
fileHeader              =       $8100
curDirHead              =       $8200
fileTrScTab             =       $8300
dirEntryBuf             =       $8400
DrACurDkNm              =       $841e
DrBCurDkNm              =       $8430
dataFileName            =       $8442
dataDiskName            =       $8453
PrntFilename            =       $8465
PrntDiskName            =       $8476
curDrive                =       $8489
diskOpenFlg             =       $848a
isGEOS                  =       $848b
interleave              =       $848c
NUMDRV                  =       $848d
driveType               =       $848e
_driveType              =       driveType-8
turboFlags              =       $8492
_turboFlags             =       turboFlags-8
curRecord               =       $8496
usedRecords             =       $8497
fileWritten             =       $8498
fileSize                =       $8499
appMain                 =       $849b
intTopVector            =       $849d
intBotVector            =       $849f
mouseVector             =       $84a1
keyVector               =       $84a3
inputVector             =       $84a5
mouseFaultVec           =       $84a7
otherPressVec           =       $84a9
StringFaultVec          =       $84ab
alarmTmtVector          =       $84ad
BRKVector               =       $84af
RecoverVector           =       $84b1
selectionFlash          =       $84b3
alphaFlag               =       $84b4
iconSelFlg              =       $84b5
faultData               =       $84b6
menuNumber              =       $84b7
mouseTop                =       $84b8
mouseBottom             =       $84b9
mouseLeft               =       $84ba
mouseRight              =       $84bc
stringX                 =       $84be
stringY                 =       $84c0
mousePicData            =       $84c1
maxMouseSpeed           =       $8501
minMouseSpeed           =       $8502
mouseAccel              =       $8503
keyData                 =       $8504
mouseData               =       $8505
inputData               =       $8506
mouseSpeed              =       $8507
random                  =       $850a
saveFontTab             =       $850c
dblClickCount           =       $8515
year                    =       $8516
month                   =       $8517
day                     =       $8518
hour                    =       $8519
minutes                 =       $851a
seconds                 =       $851b
alarmSetFlag            =       $851c
sysDBData               =       $851d
screencolors            =       $851e
dlgBoxRamBuf            =       $851f   ; to $8697
;
;$8698 - $8877 - various system data (keyboard queue, VLIR t&s, DBox, Menu, timers)
;
savedmoby2              =       $88bb
scr80polar              =       $88bc
scr80colors             =       $88bd
vdcClrMode              =       $88be
driveData               =       $88bf
ramExpSize              =       $88c3
sysRAMFlg               =       $88c4
firstBoot               =       $88c5
curType                 =       $88c6
ramBase                 =       $88c7
inputDevName            =       $88cb
memBase                 =       $88cf   ;???
DrCCurDkNm              =       $88dc
DrDCurDkNm              =       $88ee
dir2Head                =       $8900
;
SPRITE_PICS             =       $8a00
spr0pic                 =       $8a00
spr1pic                 =       $8a40
spr2pic                 =       $8a80
spr3pic                 =       $8ac0
spr4pic                 =       $8b00
spr5pic                 =       $8b40
spr6pic                 =       $8b80
spr7pic                 =       $8bc0
COLOR_MATRIX            =       $8c00
;
obj0Pointer             =       $8ff8
obj1Pointer             =       $8ff9
obj2Pointer             =       $8ffa
obj3Pointer             =       $8ffb
obj4Pointer             =       $8ffc
obj5Pointer             =       $8ffd
obj6Pointer             =       $8ffe
obj7Pointer             =       $8fff
;
DISK_BASE               =       $9000
SCREEN_BASE             =       $a000
OS_ROM                  =       $c000
OS_JUMPTAB              =       $c100
EXP_BASE                =       $df00
MOUSE_BASE_128          =       $fd00
MOUSE_JMP_128           =       $fd00
END_MOUSE_128           =       $fe80
MOUSE_BASE              =       $fe80
MOUSE_JMP               =       $fe80
config                  =       $ff00
END_MOUSE               =       $fffa
NMI_VECTOR              =       $fffa
RESET_VECTOR            =       $fffc
IRQ_VECTOR              =       $fffe
;
vicbase                 =       $d000
sidbase                 =       $d400
mmu                     =       $d500
VDC                     =       $d600
ctab                    =       $d800
cia1base                =       $dc00
cia2base                =       $dd00
;
mob0xpos                =       $d000
mob0ypos                =       $d001
mob1xpos                =       $d002
mob1ypos                =       $d003
mob2xpos                =       $d004
mob2ypos                =       $d005
mob3xpos                =       $d006
mob3ypos                =       $d007
mob4xpos                =       $d008
mob4ypos                =       $d009
mob5xpos                =       $d00a
mob5ypos                =       $d00b
mob6xpos                =       $d00c
mob6ypos                =       $d00d
mob7xpos                =       $d00e
mob7ypos                =       $d00f
msbxpos                 =       $d010
grcntrl1                =       $d011
rasreg                  =       $d012
lpxpos                  =       $d013
lpypos                  =       $d014
mobenble                =       $d015
grcntrl2                =       $d016
grmemptr                =       $d018
grirq                   =       $d019
grirqen                 =       $d01a
moby2                   =       $d017
mobprior                =       $d01b
mobmcm                  =       $d01c
mobx2                   =       $d01d
mobmobcol               =       $d01e
mobbakcol               =       $d01f
extclr                  =       $d020
bakclr0                 =       $d021
bakclr1                 =       $d022
bakclr2                 =       $d023
bakclr3                 =       $d024
mcmclr0                 =       $d025
mcmclr1                 =       $d026
mob0clr                 =       $d027
mob1clr                 =       $d028
mob2clr                 =       $d029
mob3clr                 =       $d02a
mob4clr                 =       $d02b
mob5clr                 =       $d02c
mob6clr                 =       $d02d
mob7clr                 =       $d02e
keyreg                  =       $d02f
clkreg                  =       $d030

;
vdcreg                  =       $d600
vdcdata                 =       $d601
;

;RamExpansions CR
PLUS60K_CR              =       $d100
RAMC_BASE               =       $de00
RAMC_WINDOW             =       $df00
