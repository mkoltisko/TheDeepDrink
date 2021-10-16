extends CSGCylinder

var time = 0.0
var time_scale = 1.0
var max_height = 3
var freq = 1
var A = 1
var phase = 1
var angle = 0
func _ready():
	set_process(true)

func _process(delta):
	time += delta * time_scale
	angle = A * sin(time * freq + phase)
	rotation.y = angle
	translation.y = abs(angle*max_height) + max_height
