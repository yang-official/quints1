extends Button

func _on_button_up() -> void:
	PlayerData.score = 0
	get_tree().paused = false
	if get_tree().reload_current_scene() != OK:
		print("restart scene failed")
