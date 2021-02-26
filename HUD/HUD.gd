extends Control


func _physics_process(_delta):
	$Score.text = "Scorse: " +str(Global.score)
