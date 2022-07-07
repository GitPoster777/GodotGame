extends Button


export(PackedScene) var Level


func _on_get_pressed():
	get_tree().change_scene_to(Level)
