BEGIN Z_MODDY

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN Z_MODDY moddyfirstever
@0
== igolem2
IF ~!Dead("igolem02")~ THEN
@1
== Z_MODDY
@2
=@3
END
++ @4 + moddFoll
++ @5 + moddAway

CHAIN
IF ~~ THEN Z_MODDY moddFoll
@6
DO ~SetGlobal("Z_ModdyJoined","GLOBAL",1) SetGlobal("Z_ModdyTalk","GLOBAL",1) JoinParty()~
EXIT

CHAIN
IF ~~ THEN Z_MODDY moddAway
@7
EXIT

CHAIN
IF ~NumTimesTalkedToGT(0)~ THEN Z_MODDY moddySecond
@3
END
++ @4 + moddFoll
++ @5 + moddAway



BEGIN Z_MODDYP

IF ~Global("Z_ModdyJoined","GLOBAL",1)~ THEN BEGIN LeaveGroup
SAY @8
++ @9 DO ~JoinParty()~ EXIT
++ @10 DO ~SetGlobal("Z_ModdyJoined","GLOBAL",0)~ EXIT
END

IF ~Global("Z_ModdyJoined","GLOBAL",0)~ THEN BEGIN ComeBack
SAY @11
++ @12 DO ~SetGlobal("Z_ModdyJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @13 EXIT
END