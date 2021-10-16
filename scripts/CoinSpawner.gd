extends Node

var maxCoinNo = 5
var coinNo = 0
var coinHeight = 5

var rng = RandomNumberGenerator.new()
var unit = preload("res://prefabs/Coin.tscn")
onready var Sea = get_parent().get_node("Sea")
var bounds = Vector3.ZERO

func _ready():
	rng.randomize()
	bounds = Sea.scale
	maxCoinNo = rng.randi_range(10, 20)

func _process(delta):
	if coinNo < maxCoinNo:
		spawncoin(Vector3(rng.randi_range(-bounds.x,bounds.x), coinHeight, rng.randi_range(-bounds.z,bounds.z)))
		coinNo += 1
		
func spawncoin(pos):
	var nodeInstance = unit.instance()
	nodeInstance.translation = pos
	get_parent().add_child(nodeInstance)
