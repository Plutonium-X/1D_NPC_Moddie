BEGIN Z_MODDYJ





///////////////////////////////////////
// PC-initiated


IF ~IsGabber(Player1)
CombatCounter(0)
InParty(Myself)~ THEN BEGIN PCiniModdie
SAY @0
+ ~GlobalGT("Chapter","GLOBAL",1) Global("Z_ChicaKickedJ","GLOBAL",0)~ + @1 + Master
++ @2 + Eat
+ ~Global("Z_ModdieFox","GLOBAL",0)~ + @3 + LilloFox
+ ~Global("Z_ModdieFox","GLOBAL",1) HPPercentGT("Z_Moddy",74)~ + @4 + LilloVixen1
+ ~Global("Z_ModdieFox","GLOBAL",1) HPPercentLT("Z_Moddy",75) !HPPercentLT("Z_Moddy",25)~ + @4 + LilloVixen2
+ ~Global("Z_ModdieFox","GLOBAL",1) HPPercentLT("Z_Moddy",25)~ + @4 + LilloVixen3
+ ~Global("Z_ModdieFox","GLOBAL",1) HPPercentGT("Z_Moddy",39)~ + @5 + FoxAgain1
+ ~Global("Z_ModdieFox","GLOBAL",1) HPPercentLT("Z_Moddy",40)~ + @5 + FoxAgain2
+ ~RandomNum(2,1)~ + @6 + Pet1
+ ~RandomNum(2,2)~ + @6 + Pet2
+ ~RandomNum(2,1)~ + @7 + Pull1
+ ~RandomNum(2,2)~ + @7 + Pull2
+ ~RandomNum(2,1)~ + @8 + Squeeze1
+ ~RandomNum(2,2)~ + @8 + Squeeze2
++ @9 EXIT
END

IF ~~ THEN BEGIN Master
SAY @10
++ @11 EXIT
++ @12 + Master1
END
IF ~~ THEN BEGIN Master1
SAY @13
IF ~~ THEN GOTO Master2
END
IF ~~ THEN BEGIN Master2
SAY @14
IF ~~ THEN DO ~SetGlobal("Z_ChicaKickedJ","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Eat
SAY @15
+ ~RandomNum(3,1)~ + @16 + Eat1
+ ~RandomNum(3,2)~ + @16 + Eat2
+ ~RandomNum(3,3)~ + @16 + Eat3
++ @17 + Eat4
END
IF ~~ THEN BEGIN Eat1
SAY @18
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN Eat2
SAY @19
IF ~~ THEN GOTO Eat2_1
END
IF ~~ THEN BEGIN Eat2_1
SAY @20
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN Eat3
SAY @21
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN Eat4
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LilloFox
SAY @23
IF ~~ THEN DO ~SetGlobal("Z_ModdieFox","GLOBAL",1)~ EXIT
END
IF ~~ THEN BEGIN LilloVixen1
SAY @24
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN LilloVixen2
SAY @25
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN LilloVixen3
SAY @26
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN FoxAgain1
SAY @27
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN FoxAgain2
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Pet1
SAY @29
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN Pet2
SAY @30
IF ~~ THEN GOTO Pet2_1
END
IF ~~ THEN BEGIN Pet2_1
SAY @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Pull1
SAY @32
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN Pull2
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Squeeze1
SAY @34
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN Squeeze2
SAY @35
IF ~~ THEN EXIT
END






/////////////////////////////////////////////
// Tree of Life Dialogue

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("Z_moddy")
Global("Z_ModdyToL","GLOBAL",0)~ THEN DO ~SetGlobal("Z_ModdyToL","GLOBAL",1)~  GOTO TreeOfLife
END

APPEND PLAYER1
IF ~~ THEN BEGIN TreeOfLife
SAY @36
++ @37 EXTERN ~Z_MODDYJ~ ToL1
++ @38 EXTERN ~Z_MODDYJ~ ToL2
++ @39 EXTERN ~Z_MODDYJ~ ToL3
END
END

APPEND Z_MODDYJ
IF ~~ THEN BEGIN ToL1
SAY @40
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL2
SAY @41
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL3
SAY @42
COPY_TRANS PLAYER1 33
END
END