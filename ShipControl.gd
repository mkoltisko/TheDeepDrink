extends KinematicBody

onready var Body = get_node("Body")
var forward_speed = 0
var speed_step = 0.1
var motion = Vector3.ZERO;

func _ready():
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		Body.rotate_y(-0.01)
	if Input.is_action_pressed("ui_right"):
		Body.rotate_y(0.01)
	if Input.is_action_pressed("ui_up"):
		forward_speed += speed_step
	if Input.is_action_pressed("ui_down"):
		forward_speed -= speed_step
	print(Body.rotation_degrees.y)
	motion.x = forward_speed * cos(Body.rotation_degrees.y)
	motion.y = 0
	motion.z = -forward_speed * sin(Body.rotation_degrees.y)
	move_and_slide(motion)
	
	
