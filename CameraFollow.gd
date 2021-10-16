extends Camera

var offset
onready var Ship = get_parent().get_node("Ship")

func _ready():
	offset = translation - Ship.translation

func _physics_process(delta):
	translation = Ship.translation + offset
		
