extends SpinBox

func _ready() -> void:
	value_changed.emit(value)
