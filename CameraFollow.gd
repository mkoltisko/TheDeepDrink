extends Camera

onready var Ship = get_parent_spatial()

func _ready():
	
	pass
	
func _physics_process(delta):
	print(Ship.translation)
	pass

