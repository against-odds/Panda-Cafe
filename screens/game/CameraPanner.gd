extends Node3D

func _ready():
	pass

var lastmousepos:Vector2 = Vector2(0,0)
var mousepressed = false
var currentrotation:Vector3
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				lastmousepos = event.global_position
				currentrotation = rotation_degrees
				mousepressed = true
			else:
				mousepressed = false
	if event is InputEventMouseMotion:
		if mousepressed:
			var rotatey = (event.position.x - lastmousepos.x) / -32
			var rotatex = (event.position.y - lastmousepos.y) / -32
			rotation_degrees = Vector3(currentrotation.x,clamp(currentrotation.y + rotatey,-70,-20),currentrotation.z)
