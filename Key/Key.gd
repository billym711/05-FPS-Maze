extends Area



func _on_Key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			var sound = get_node_or_null("/root/Game/Key")
			if sound != null:
				sound.playing = true
			exit.unlock()
			get_node("/root/Game/Key/Timer2").start()
			queue_free()


func _on_Timer2_timeout():
	var sound = get_node_or_null("/root/Game/Key")
	if sound != null:
		sound.playing = false
