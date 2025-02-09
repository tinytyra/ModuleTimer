extends Resource
## A resource containing Properties and Methods for Timer Blocks.
class_name TimerDat

## Name of the Timer Block, for example "Raiding", "Break time!", or "Snacks and drink"
@export var name : String = "New Timer Block"
## Duration in seconds, used in code only and never shown to the user.
@export var dur_sec : int = 0

## Timestamp array for representing [member TimerDat.dur_sec] as a human-readable timestamp.[br]
## [br]
## This array has no use without the conversion functions![br]
## ([method TimerDat.sec_to_stamp] or [method TimerDat.stamp_to_sec][br]
## [br]
## Outputs of this array, such as for debug or UI, must use a format string:[br]
## [codeblock]
##     var dur_stamp : Array[int] = [01, 32, 05]
##     print("%02d:%02d:%02d" % [hrs, min, sec])
##     # outputs 01:32:05
## [/codeblock]
@export var dur_stamp : Array[int] = [00, 01, 02]

## User setting determining whether this timer's timeout will make 
## the next timer in the [LoopBar] auto-start. If [code]false[/code], user input is 
## required before continuing.
@export var auto_cont : bool = false


## Converts [member TimerDat.dur_sec] into [member TimerDat.dur_stamp].
func sec_to_stamp():
	var hh = (dur_sec/60)/60
	var mm = (dur_sec/60)%60
	var ss = dur_sec%60

	dur_stamp = [hh, mm, ss]

	print("%02d:%02d:%02d" % [hh, mm, ss])


## Converts [member TimerDat.dur_stamp] into [member TimerDat.dur_sec].	
func stamp_to_sec():
	var hh = (dur_stamp[0]*60)*60
	var mm = dur_stamp[1]*60
	var ss = dur_stamp[2]
	
	dur_sec = hh+mm+ss
	
	print(dur_sec)
