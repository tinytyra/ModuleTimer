extends Resource
class_name BlockData # Used by: loop_res.gd


@export var saved_duration : Array
@export var auto_proceed : bool
@export var user_color : Color

@warning_ignore("shadowed_global_identifier")
func set_saved_duration(Array):
	saved_duration = Array
	print("block-data_res.gd ----- saved_duration = ",saved_duration)
