extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var velocity = Vector2.ZERO
var speed = 0.1
var Bullet1 = load("res://Bullets/Bullet1.tscn")
var Bullet2 = load("res://Bullets/Bullet2.tscn")
onready var Bullets = get_node("/root/Game/Bullets")
func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	velocity += get_input()*speed
	position += velocity
	if position.x >= 1024:
		velocity = Vector2.ZERO
		position.x =1024
	if position.x <= 0:
		velocity = Vector2.ZERO
		position.x =0
	if Input.is_action_just_pressed("shoot1"):
		var bullet1 = Bullet1.instance()
		bullet1.position = position +Vector2(0,-30)
		Bullets.add_child(bullet1)
	if Input.is_action_just_pressed("shoot2"):
		var bullet2 = Bullet2.instance()
		bullet2.position = position +Vector2(0,-30)
		Bullets.add_child(bullet2)
	
	
func get_input():
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("left"):
		input_vector += Vector2(-1,0)
	if Input.is_action_pressed("right"):
		input_vector += Vector2(1,0)
	return input_vector	
func die(s):
	queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
