extends Node


func load_pck(pck_name:String) -> void:
	JS_API.call_function("engine.loadAdditionalPck", [pck_name])


func on_pck_loaded(pck_name:String) -> void:
	if not ProjectSettings.load_resource_pack(pck_name):
		push_error("Error while loading pck with name: " + pck_name)
