extends Camera

onready var Body = get_parent_spatial().get_child(0)
var initial_rotation
var camera_to_body
var radius
func _ready():
	initial_rotation = rotation.y
	camera_to_body = Vector3(translation - Body.translation)
	camera_to_body.y = 0 
	radius = camera_to_body.length()
	
func _physics_process(delta):
	rotation.y = initial_rotation + Body.rotation.y
	translation.x = radius * sin(rotation.y)
	translation.z = radius * cos(rotation.y)
