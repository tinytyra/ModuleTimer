# convert duration in seconds to HH:MM:SS
var duration = 6129
	
func convert_duration():
	var seconds = duration%60
	var minutes = (duration/60)%60
	var hours = (duration/60)/60

	print("%02d:%02d:%02d" % [hours, minutes, seconds])


# convert inputted HH:MM:SS to seconds
var input_array = [01, 42, 09]

func convert_input():
	var seconds = input_array[2]
	var minutes = input_array[1]*60
	var hours = (input_array[0]*60)*60
	
	duration = seconds+minutes+hours
	
	print(duration)
