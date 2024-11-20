extends Bulletin


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
func close() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	EventSystem.BUL_destroy_bulletin.emit(BulletinConfig.Keys.CraftingMenu)
