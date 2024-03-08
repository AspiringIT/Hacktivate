extends Node2D
var current_map
var maps = {
	"outside_map": "res://Maps/outside_map.tscn"
}

const STARTING_MAP = "outside_map"

func _ready():
	get_tree().change_scene_to_file("res://Maps/outside_map.tscn")


