extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * 600 #Pixels per second (PPS)
	move_and_slide()
	


func _on_area_2d_area_entered(area):
	get_tree().change_scene_to_file("res://Maps/node_2d.tscn")

