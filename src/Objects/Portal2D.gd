tool
extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
export var next_scene: PackedScene

func _get_configuration_warning() -> String:
	return "Next scene not defined" if not next_scene else ""

func teleport() -> void:
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	if get_tree().change_scene_to(next_scene) != OK:
		print("portal to next scene failed")
	pass


func _on_Portal2D_body_entered(_body: Node) -> void:
	pass # Replace with function body.


func _on_body_entered(_body: Node) -> void:
	teleport()
