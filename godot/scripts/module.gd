extends Control

signal user_duration_is(duration)
var duration : float


func _ready():
	print(duration)

# receive value from input field, and set it as duration
func _on_spin_box_value_changed(value: float) -> void:
	duration = value
	print(duration)

# on button click: add timer.tscn as child + connects to its timeout signal
func _on_button_pressed() -> void:
	var timer = preload("res://scenes/timer.tscn").instantiate()
	add_child(timer)
	timer.timeout.connect(_on_timer_timeout)
	user_duration_is.emit(duration)


# kill the timer when done, to prevent excess calculations
func _on_timer_timeout():
	$Timer.queue_free()
