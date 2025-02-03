extends Timer

func _ready() -> void:
	start(5)
	
func _physics_process(_delta: float) -> void:
	$Label.set_text(str(round(time_left)))
	if time_left == 0:
		$Label.set_text("DING!")
	
	# debug
	print(round(time_left))

func _on_timeout() -> void:
	stop()
	
	# debug
	print("DING!")
