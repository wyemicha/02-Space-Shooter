extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _physics_process(_delta):
	var player = get_node_or_null("Player")
	if player == null:
		get_tree().change_scene("res://HUD/End.tscn")
