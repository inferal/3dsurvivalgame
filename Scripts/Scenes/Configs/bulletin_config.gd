class_name BulletinConfig

enum Keys{
	InteractionPrompt,
	CraftingMenu
}

const BULLETIN_PATHS := {
	Keys.InteractionPrompt : "res://Bulletins/iteraction_prompt.tscn",
	Keys.CraftingMenu : "res://Bulletins/Player_menus/crafting_menu.tscn"
}

static func get_bulletin(bulletin_key: Keys) -> Bulletin:
	return load(BULLETIN_PATHS.get(bulletin_key)).instantiate()
	
