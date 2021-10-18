extends Spatial

export (PackedScene) var cannonBall_scene = preload("res://prefabs/CannonBall.tscn")

var cannonNo = 1
var cannon_height = 3

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
			cannonBall.translation = cannonBall_spawn_location.translation + $Ship/Body.translation + $Ship.translation 
			cannonBall.translation.y = cannon_height
#			print($Ship/Body/Portside/PortSpawn.translation)
