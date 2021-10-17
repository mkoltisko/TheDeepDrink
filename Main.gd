extends Spatial

export (PackedScene) var cannonBall_scene = preload("res://cannonBall.tscn")

var cannonNo = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		for index in range(cannonNo):
			var cannonBall = cannonBall_scene.instance()
			var cannonBall_spawn_location = $Ship/Body/Portside/PortSpawn
			cannonBall_spawn_location.unit_offset = .5
			add_child(cannonBall)
			cannonBall.translation = Vector3(cannonBall_spawn_location.translation.x + $Ship/Body.translation.x + $Ship.translation.x, 3, cannonBall_spawn_location.translation.z + $Ship/Body.translation.z + $Ship.translation.z)
			print($Ship/Body/Portside/PortSpawn.translation)
