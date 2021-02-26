extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var max_meteors = 3
var Meteor = load("res://Meteor/Meteor.tscn")
func _ready():
	randomize()
	
	
# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	if get_child_count() < max_meteors:
		if randf() < 0.01:
			var meteor = Meteor.instance()
			meteor.position.y = -100
			meteor.position.x = randi() % 1024
			add_child(meteor)
		
