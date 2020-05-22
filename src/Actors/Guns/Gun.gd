extends Sprite

const Bullet: = preload("res://src/Actors/Guns/Bullet.tscn")
export var bullet_speed = 1000

func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("shoot") and $Timer.is_stopped():
		shoot()
		$Timer.start()

func _on_Timer_timeout() -> void:
	$Timer.stop()

func shoot() -> void:
	var bullet = Bullet.instance()
	bullet.global_position = get_global_position()
	bullet.rotation_degrees = rotation_degrees
	bullet.apply_impulse(Vector2(), Vector2(bullet_speed, 0).rotated(rotation))
	get_tree().get_root().add_child(bullet)
