class_name ItemConfig

enum Keys{
	Stick,
	Stone, 
	Plant
}

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://Resources/ItemResources/stick_resource.tres",
	Keys.Stone : "res://Resources/ItemResources/stick_resource.tres",
	Keys.Plant : "res://Resources/ItemResources/plant_resource.tres"
}

func get_item_resource(key : Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))
