extends Control


func _on_button_pressed() -> void:
	var timer = preload("res://scenes/timer.tscn").instantiate()
	add_child(timer)
	timer.timeout.connect(_on_timer_timeout)
	
func _on_timer_timeout():
	$Timer.queue_free()
	
	# debug
	print("module saw that the timer timed out")
