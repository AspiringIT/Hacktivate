class_name QuestManager
extends Node

var quests: Array = []

func add_quest(quest: Quest):
	quests.append(quest)

func is_quest_completed(quest_name: String) -> bool:
	for quest in quests:
		if quest.name == quest_name:
			return quest.isCompleted
	return false

func update():
	for quest in quests:
		if not quest.isCompleted and quest.check_requirements_met():
			quest.complete()
