extends Control


var hh : float
var mm : float
var ss : float

var durationarray : Array[float] = [hh,mm,ss]
signal saved_new_duration(durationarray)


func save_duration():
	durationarray = [hh,mm,ss]
	saved_new_duration.emit(durationarray)
	queue_free()
	print("edit_duration ran func save_duration(), emitted signal saved_new_duration(",durationarray,") -> queue_free()")
	
func discard_changes():
	queue_free()
	print("edit_duration ran func discard_changes() -> queue_free()")


func _on_hh_value_changed(value: float) -> void:
	hh = value
	print("hh=",hh)

func _on_mm_value_changed(value: float) -> void:
	mm = value
	print("mm=",mm)

func _on_ss_value_changed(value: float) -> void:
	ss = value
	print("ss=",ss)


func _on_ok_button_pressed() -> void:
	save_duration()
	print("edit_duration received signal _on_ok_button_pressed and called func save_duration()")

func _on_cancel_button_pressed() -> void:
	discard_changes()
	print("edit_duration received signal _on_cancel_button_pressed and called func discard_changes()")
