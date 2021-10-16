extends CSGBox

onready var Body = get_node("Body")
var time = 0.0
var time_scale = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta * time_scale
	var freq = 1
	var A = 0.001
	var phase = 1
	var angle = A * sin(time * freq + phase)
	rotate_object_local(Vector3(1, 0, 0), angle)
