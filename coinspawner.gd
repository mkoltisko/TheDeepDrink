extends StaticBody

var maxCoinNo = 5
var coinNo = 0
var coinHeight = 5

var rng = RandomNumberGenerator.new()
var unit = preload("res://prefabs/Coin.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if coinNo < maxCoinNo:
		spawncoin(Vector3(rng.randi_range(-scale.x,scale.x), coinHeight, rng.randi_range(-scale.z,scale.z)))
		
	if Input.is_action_just_pressed("ui_accept"):
		print(get_parent().get_child(0).translation)
		
		
func spawncoin(pos):
	var nodeInstance = unit.instance()
	nodeInstance.translate(pos)
	add_child(nodeInstance)
	coinNo = coinNo + 1
	print(pos)
	
