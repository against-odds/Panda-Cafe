extends Node3D

signal clicked(table)

func _ready():
	pass

func _process(delta):
	pass

func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			emit_signal("clicked",self)
			$AnimationPlayer.stop()
			$AnimationPlayer.play("clicked")
