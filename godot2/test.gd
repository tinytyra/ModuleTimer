extends Resource

@export var hh : float
@export var mm : float
@export var ss : float
@export var hhmmss : String = "%02d:%02d:%02d" % [hh,mm,ss]
