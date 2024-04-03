extends Sprite2D


func _on_exit_sprite_body_entered(body):
	get_tree().change_scene_to_file("res://Maps/outside_map.tscn")
