extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var speed = 3

func _physics_process(_delta):
	position.y += speed
	if position.y >= 620:
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Meteor_body_entered(body):
	body.die(0)
