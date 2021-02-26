extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 2
var velocity = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	position+= velocity
	velocity.y -= speed
	if position.y < -20:
		queue_free()



func _on_Bullet1_body_entered(body):
	body.die(10)
	queue_free() # Replace with function body.
