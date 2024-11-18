class_name BulletinConfig

enum Keys{
	InteractionPrompt
}

const BULLETIN_PATHS := {
	Keys.InteractionPrompt : "res://Bulletins/iteraction_prompt.tscn"
}

static func get_bulletin(key: Keys) -> Bulletin:
	return load(BULLETIN_PATHS.get(key)).instantiate()
	
