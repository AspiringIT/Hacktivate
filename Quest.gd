# Quest.gd
extends RefCounted #Previously refrence in Godot 3
class_name Quest


var name: String
var description: String
var isCompleted: bool = false
var requirements: Array

func _init(_name: String, _description: String, _requirements: Array):
	name = _name
	description = _description
	requirements = _requirements

func check_requirements_met():
	for requirement in requirements:
		if not requirement.is_met():
			return false
	return true

func complete():
	if check_requirements_met():
		isCompleted = true
