extends RigidBody2D

export var impulse = 50


func _ready():
	pass # Replace with function body.

func _process(delta):
	var location = self.get("position")
	if Input.is_action_pressed("Up"):
		self.apply_impulse(location, Vector2(0, -impulse))
	if Input.is_action_pressed("Down"):
		self.apply_impulse(location, Vector2(0, impulse))
	if Input.is_action_pressed("Left"):
		self.apply_impulse(location, Vector2(-impulse, 0))
	if Input.is_action_pressed("Right"):
		self.apply_impulse(location, Vector2(impulse, 0))
		

func _on_Duolingo_body_entered(body):
	print("entered")
	var impact = body.get("linear velocity")
	if impact > 10:
		body.queue_free()