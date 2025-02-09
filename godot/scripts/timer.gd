extends Timer

var duration
var timestamp : String

func _ready() -> void:
	get_parent().user_duration_is.connect(_on_user_duration_is)
	print("timer has:")
	print(duration)

func _on_user_duration_is(duration):
	start(duration)

func _physics_process(_delta: float) -> void:
	convert_duration()
	update_label()
#	$Label.set_text(str(round(time_left)))


# convert duration in seconds to HH:MM:SS
func convert_duration():
	#var seconds = (duration%60)
	#var minutes = (duration/60)%60
	#var hours = (duration/60)/60
	
	#timestamp = "%02d:%02d:%02d" % [hours, minutes, seconds]
	timestamp = "69:42:00"
	
	#print("%02d:%02d:%02d" % [hours, minutes, seconds])

func update_label():
	$Label.set_text(timestamp)
