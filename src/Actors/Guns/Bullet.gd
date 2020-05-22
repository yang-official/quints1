extends RigidBody2D

export(float) var SPEED: = 100
export(float) var DAMAGE: = 10

var direction: = Vector2(1, 1).normalized()

func _ready() -> void:
	set_as_toplevel(true)

func _process(delta: float) -> void:
	pass
