extends Node

### Nodes
@onready var interactables:Node = $Interactables
@onready var world:Node = $World
@onready var player:CharacterBody3D = $Player

var tables:Array[StaticBody3D] = []

func _ready():
	get_tables()

func get_tables():
	for table in interactables.get_children():
		tables.append(table)
		table.connect("clicked",do_action)

func do_action(interactable:StaticBody3D):
	player.set_movement_target(interactable.get_node("position").global_position)

func _process(delta):
	pass
