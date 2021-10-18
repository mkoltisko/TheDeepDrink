extends KinematicBody

onready var Body = get_node("Body")
var forward_speed = 0
var speed_step = 0.1
var angle = 0
var motion = Vector3.ZERO

func _ready():
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		Body.rotate_y(0.01)
	if Input.is_action_pressed("ui_right"):
		Body.rotate_y(-0.01)
	if Input.is_action_pressed("ui_up"):
		forward_speed += speed_step
	if Input.is_action_pressed("ui_down"):
		forward_speed -= speed_step
	angle = Body.rotation.y
	motion = Vector3(sin(angle + PI/2), 0, cos(angle + PI/2))
	move_and_slide(motion * forward_speed)
	var collided = get_slide_count()
	if collided != 0:
		get_slide_collision(collided-1).get_collider().queue_free()


