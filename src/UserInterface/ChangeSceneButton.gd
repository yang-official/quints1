tool
extends Button

export(String, FILE) var next_scene_path: = ""

func _on_button_up() -> void:
	get_tree().paused = false
	if get_tree().change_scene(next_scene_path) != OK:
		print("change scene failed")

func _get_configuration_warning() -> String:
	return "next_scene_path is not defined" if next_scene_path == "" else ""
