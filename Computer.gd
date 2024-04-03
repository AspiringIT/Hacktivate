extends Sprite2D


func _on_computer_sprite_area_entered(area: Area2D) -> void:
	get_tree().change_scene_to_file("res://terminal.tscn")
