extends Control

var hh : float
var mm : float
var ss : float

var durationarray : Array[float]
signal duration_changed(Array)

func save_duration():
	durationarray = [hh,mm,ss]
	duration_changed.emit(durationarray)
	queue_free()
	print("Ok button received and signal emitted:",hh,":",mm,":",ss)
	
	
func discard_changes():
	queue_free()
	print("Cancel button received, queue_free called")

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
	print("Save button pressed")


func _on_cancel_button_pressed() -> void:
	discard_changes()
	print("Cancel button pressed")
