extends Node


func load_scene(scene_path:String) -> Node:
	print("Loading scene from path: ", scene_path)
	
	var Scene = load(scene_path)
	
	if Scene == null:
		push_error("Error while loading scene from path: " + scene_path)
		return Node.new()
		
	return Scene.instance()
