extends Timer

func _ready() -> void:
	get_parent().user_duration_is.connect(_on_user_duration_is)

func _on_user_duration_is(duration):
	start(duration)

func _physics_process(_delta: float) -> void:
	$Label.set_text(str(round(time_left)))
	if time_left == 0:
		$Label.set_text("DING!")

func _on_timeout() -> void:
	stop()
