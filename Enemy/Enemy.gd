extends Area



func _on_Enemy_body_entered(body):
	if body.name == "Player":
		var _scene = get_tree().change_scene("res://UI/Lose.tscn")


func _on_Area_body_entered(body):
	if body.name == "Player":
		get_node_or_null("/root/Game/Zombie/Timer").start()
		var sound = get_node_or_null("/root/Game/Zombie")
		if sound != null:
			sound.playing = true


func _on_Timer_timeout():
	var sound = get_node_or_null("/root/Game/Zombie")
	if sound != null:
		sound.playing = false
