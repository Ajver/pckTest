extends Control

signal want_load_scene(scene_path)
signal want_load_pck(pck_name)

onready var scene_text_edit = find_node("SceneTextEdit")
onready var pck_text_edit = find_node("PckTextEdit")
onready var scene_container = find_node("SceneContainer")
onready var viewport = scene_container.get_node("Viewport")


func _ready() -> void:
	_update_viewport_size()


func _on_LoadScene_pressed() -> void:
	emit_signal("want_load_scene", scene_text_edit.text)


func _on_LoadPck_pressed() -> void:
	emit_signal("want_load_pck", pck_text_edit.text)


func append_scene(scene:Node) -> void:
	if viewport.get_child_count():
		for c in viewport.get_children():
			c.queue_free()
			
	viewport.call_deferred("add_child", scene)


func _on_SceneContainer_item_rect_changed():
	_update_viewport_size()


func _update_viewport_size() -> void:
	viewport.size = scene_container.rect_size
	
