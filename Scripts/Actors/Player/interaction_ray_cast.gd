extends RayCast3D

var is_hitting := false

func check_interaction() -> void:
	if is_colliding():
		var colleder := get_collider()
		if not colleder is Interactable:
			return
					
		if Input.is_action_just_pressed("interact"):
			colleder.start_interaction()
		
		if not is_hitting:
			is_hitting = true
			EventSystem.BUL_create_bulletin.emit(BulletinConfig.Keys.InteractionPrompt, colleder.prompt)
	elif is_hitting:
		is_hitting = false
		EventSystem.BUL_destroy_bulletin.emit(BulletinConfig.Keys.InteractionPrompt)
