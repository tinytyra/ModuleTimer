extends Resource
class_name BlockData # Used by: loop_res.gd

@export var hh : Array
@export var mm : Array
@export var ss : Array
@export var hhmmss : String = "%02d:%02d:%02d" % [hh,mm,ss]

@export var auto_proceed : bool
@export var user_color : Color

func _ready():
	pass

func set_hh(durationarray):
	hh = durationarray[0]
	print("block-data_res ran set_hh() and has hh=",hh)

func set_mm(durationarray):
	mm = durationarray[1]
	print("block-data_res ran set_mm() and has mm=",mm)

func set_ss(durationarray):
	ss = durationarray[2]
	print("block-data_res ran set_ss() and has ss=",ss)
	
func set_auto_proceed(value):
	auto_proceed = value
