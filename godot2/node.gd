extends Node


@export var hh_input : float
@export var mm_input : float
@export var ss_input : float
var my_input_array : Array


func _ready():
	_take_input_to_array()
	_readable_string_from_array()

func _take_input_to_array():
	my_input_array = [int(hh_input),int(mm_input),int(ss_input)]
	print(my_input_array)


func _readable_string_from_array():
	var human_readable_format = "%02d:%02d:%02d"
	var hhmmss = human_readable_format % my_input_array
	print(hhmmss)
	
