extends Node


func load_pck(pck_name:String) -> void:
	print("Loading pck with name: ", pck_name)

	if not ProjectSettings.load_resource_pack(pck_name):
		push_error("Error while loading pck with name: " + pck_name)
	
