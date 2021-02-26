extends Node2D


var max_enemies = 5
var Enemy = load("res://Enemy/Enemy.tscn")
func _ready():
	randomize()
	
	
# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	if get_child_count() < max_enemies:
		if randf() < 0.2:
			var enemy = Enemy.instance()
			enemy.position.y = -100
			enemy.position.x = randi() % 1024
			add_child(enemy)
