BEGIN BZ_MODDY



/////////////////////////////////////////////////////////////////////////////////////
//Moddie talks to Charname (twice)

CHAIN IF WEIGHT #0 ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("Z_ModdyTalk","GLOBAL",2)~ THEN BZ_MODDY ModdyTalk
@0
DO ~IncrementGlobal("Z_ModdyTalk","GLOBAL",1) RealSetGlobalTimer("Z_ModdyTalks","GLOBAL",3600)~
END
++ @1 + Irena1
++ @2 + Irena2
++ @3 + Irena3
++ @4 + Irena4
++ @5 + Irena5

CHAIN IF ~~ THEN BZ_MODDY Irena1
@6 EXTERN BZ_MODDY Irena1_1

CHAIN IF ~~ THEN BZ_MODDY Irena1_1
@7
END
++ @8 + Irena6
++ @9 + Irena6
++ @10 + Irena8
++ @11 + Irena5

CHAIN IF ~~ THEN BZ_MODDY Irena2
@12
END
++ @13 + Irena1
++ @14 + Irena10
++ @15 + Irena8

CHAIN IF ~~ THEN BZ_MODDY Irena3
@16
= @17
END
++ @18 + Irena1
++ @19 + Irena10
++ @15 + Irena8

CHAIN IF ~~ THEN BZ_MODDY Irena4
@20 EXTERN BZ_MODDY Irena1_1

CHAIN IF ~~ THEN BZ_MODDY Irena5
@21
= @22 EXIT

CHAIN IF ~~ THEN BZ_MODDY Irena6
@23
= @24
END
++ @25 + Irena10
++ @26 + Irena12
++ @27 + Irena5

CHAIN IF ~~ THEN BZ_MODDY Irena8
@28
END
++ @29 + Irena10
++ @30 + Irena12
++ @31 + Irena5

CHAIN IF ~~ THEN BZ_MODDY Irena10
@32 EXIT

CHAIN IF ~~ THEN BZ_MODDY Irena12
@33 EXIT




CHAIN IF WEIGHT #0 ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("Z_ModdyTalk","GLOBAL",4)~ THEN BZ_MODDY ModdyTalk2
@34
DO ~IncrementGlobal("Z_ModdyTalk","GLOBAL",1)~
END
++ @35 + FineT1
++ @36 + FineT2
++ @37 + FineT3

CHAIN IF ~~ THEN BZ_MODDY FineT1
@38
END
++ @39 + FineT2
++ @40 + FineT4

CHAIN IF ~~ THEN BZ_MODDY FineT2
@41
END
++ @42 + FineT5
++ @43 + FineT4

CHAIN IF ~~ THEN BZ_MODDY FineT3
@44
EXIT

CHAIN IF ~~ THEN BZ_MODDY FineT4
@45
EXIT

CHAIN IF ~~ THEN BZ_MODDY FineT5
@46
END
++ @47 + FineT3
++ @48 + FineT4

CHAIN IF ~~ THEN BZ_MODDY FineT
@49
= @50
EXIT







////////////////////////////////////////////////////////////////////////////////////
// banters, in the order: Anomen, Korgan, Yoshimo, Haer'Dalis, Mazzy, Edwin, Aerie,
// Valygar, Minsc, Cernd, Keldorn, Jan



APPEND Banomen
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyAno","GLOBAL",0)~ ModdyAno
SAY @51
IF ~~ THEN DO ~SetGlobal("Z_ModdyAno","GLOBAL",1)~ EXTERN BZ_MODDY ModdyAno1
END
END
CHAIN BZ_MODDY ModdyAno1
@52
== BANOMEN @53
== BZ_MODDY @54
== BANOMEN @55
== BZ_MODDY @56
== BANOMEN @57
== BZ_MODDY @58
== BANOMEN @59
EXIT




APPEND Bkorgan
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyKorgan","GLOBAL",0)~ ModdyKorg
SAY @60
IF ~~ THEN DO ~SetGlobal("Z_ModdyKorgan","GLOBAL",1)~ EXTERN BZ_MODDY ModdyKorgan
END
END
CHAIN BZ_MODDY ModdyKorgan
@61
== BKORGAN @62
== BZ_MODDY @63
== BKORGAN @64
END
++ @65 EXTERN BKORGAN NoKillModdy
++ @66 DO  
~SetGlobal("Z_TerribleToModdy","GLOBAL",1)~ EXIT
APPEND BKORGAN
IF ~~ THEN BEGIN NoKillModdy
SAY @67
IF ~~ THEN EXIT
END
END




APPEND Byoshim
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyYoshi","GLOBAL",0)~ ModdyYoshi
SAY @68
IF ~~ THEN DO ~SetGlobal("Z_ModdyYoshi","GLOBAL",1)~ EXTERN BZ_MODDY ModdyYoshimo
END
END
CHAIN BZ_MODDY ModdyYoshimo
@69
== BYOSHIM @70
= @71
EXIT




APPEND Bhaerda
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyHaer","GLOBAL",0)~ ModdyHaer
SAY @72
= @73
IF ~~ THEN DO ~SetGlobal("Z_ModdyHaer","GLOBAL",1)~ EXTERN BZ_MODDY ModdyHD
END
END
CHAIN BZ_MODDY ModdyHD
@74
== BHAERDA @75
== BZ_MODDY @76
== BHAERDA @77
== BZ_MODDY @78
EXIT




APPEND Bmazzy
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyMaz","GLOBAL",0)~ ModdyMaz
SAY @79
IF ~~ THEN DO ~SetGlobal("Z_ModdyMaz","GLOBAL",1)~ EXTERN BZ_MODDY ModdyMazzy
END
END
CHAIN BZ_MODDY ModdyMazzy
@80
== BMAZZY @81
== BZ_MODDY @82EXIT




APPEND Bedwin
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyEddie","GLOBAL",0)~ ModdyEddie
SAY @83
++ @84 EXTERN BZ_MODDY ModdyEdwin
END
END
CHAIN BZ_MODDY ModdyEdwin
@85
== BEDWIN @86
DO ~SetGlobal("Z_ModdyEddie","GLOBAL",1)~
EXIT




APPEND Baerie
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyAer","GLOBAL",0)~ ModdyAer
SAY @87
IF ~~ THEN DO ~SetGlobal("Z_ModdyAer","GLOBAL",1)~ EXTERN BZ_MODDY ModdyAerie
END
END
CHAIN BZ_MODDY ModdyAerie
@88
== Baerie @89
== BZ_MODDY @90EXIT




APPEND Bvalyga
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyVal","GLOBAL",0)~ ModdyVal
SAY @91
++ @92 EXTERN BZ_MODDY ModdVal1
++ @93 + ModdVal2
++ @94 EXTERN BZ_MODDY ModdVal3
END
END
CHAIN
IF ~~ THEN BZ_MODDY ModdVal1
@95
== BVALYGA @96
== BZ_MODDY @97
EXTERN BVALYGA ModdVal5
APPEND BVALYGA
IF ~~ THEN BEGIN ModdVal2
SAY @98
IF ~~ THEN EXTERN BZ_MODDY ModdVal4
END
END
CHAIN IF ~~ THEN BZ_MODDY ModdVal4
@99
= @100
EXTERN BVALYGA ModdVal5
CHAIN IF ~~ THEN BZ_MODDY ModdVal3
@101
EXTERN BVALYGA ModdVal5
APPEND BVALYGA
IF ~~ THEN BEGIN ModdVal5
SAY @102
IF ~~ THEN DO ~SetGlobal("Z_ModdyVal","GLOBAL",1)~
EXIT
END
END




APPEND Bminsc
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyMinsc","GLOBAL",0)~ ModdyMinsc
SAY @103
IF ~~ THEN GOTO ModdMin1
END
IF ~~ THEN BEGIN ModdMin1
SAY @104
IF ~~ THEN DO ~SetGlobal("Z_ModdyMinsc","GLOBAL",1)~ EXTERN BZ_MODDY ModdMin2
END
END
CHAIN BZ_MODDY ModdMin2
@105
== BMINSC @106
= @107
== BZ_MODDY @108
== BMINSC @109
= @110
== BZ_MODDY @111
== BMINSC @112
EXIT 




CHAIN
IF ~InParty("Cernd") See("Cernd") !StateCheck("Cernd",STATE_SLEEPING) Global("Z_ModdieCernd","GLOBAL",0)~ THEN  
BZ_MODDY ModdCernd
@113
DO ~SetGlobal("Z_ModdieCernd","GLOBAL",1)~
== BCERND
@114
== BZ_MODDY
@115
EXIT




APPEND Bkeldor
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyKel","GLOBAL",0)~ ModdyKel
SAY @116
IF ~~ THEN DO ~SetGlobal("Z_ModdyKel","GLOBAL",1)~ EXTERN BZ_MODDY ModdyKeldorn
END
END
CHAIN BZ_MODDY ModdyKeldorn
@117
== Bkeldor @118
== BZ_MODDY @119
== BKELDOR @120
EXIT





APPEND Bjan
IF ~InParty("Z_MODDY") See("Z_MODDY") !Dead("Z_MODDY") !StateCheck("Z_MODDY",STATE_SLEEPING)  
Global("Z_ModdyJan","GLOBAL",0)~ ModdyJan
SAY @121
IF ~~ THEN DO ~SetGlobal("Z_ModdyJan","GLOBAL",1)~ EXTERN BZ_MODDY ModdyJan1
END
END
CHAIN BZ_MODDY ModdyJan1
@122
== Bjan @123
== BZ_MODDY @124
== BJAN @125
== BZ_MODDY @126
== BJAN @127
EXIT
