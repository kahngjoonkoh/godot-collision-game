extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_woodBox_body_entered(body):
	print(body)
	var impact = body.get("linear velocity")
	print(impact)

func _on_woodBox_body_exited(body):
	print(body)
