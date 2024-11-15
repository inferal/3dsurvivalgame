extends RayCast3D

func check_interaction() -> void:
	if is_colliding() and Input.is_action_just_pressed("interact"):
		var colleder := get_collider()
		if colleder is Interactable:
			colleder.start_interaction()
