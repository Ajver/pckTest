extends Node

onready var control = $Control


func _ready() -> void:
	control.connect("want_load_scene", self, "_on_want_load_scene")
	control.connect("want_load_pck", self, "_on_want_load_pck")


func _on_want_load_scene(scene_path:String) -> void:
	var scene = SceneLoader.load_scene(scene_path)
	control.append_scene(scene)


func _on_want_load_pck(pck_name:String) -> void:
	PckLoader.load_pck(pck_name)
