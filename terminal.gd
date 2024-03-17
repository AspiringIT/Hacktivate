extends Control

const InputResponse = preload("res://InputResponse.tscn")
const response = preload("res://response.tscn")
@export var max_lines_remembered := 50 #Hstory of command line

@onready var history_rows = $Backround/MarginContainer/Rows/GameInfo/Scroll/HistoryRows
@onready var scroll = $Backround/MarginContainer/Rows/GameInfo/Scroll
@onready var scrollbar = scroll.get_v_scroll_bar()
@onready var command_processor = $CommandProcessor

func _ready() -> void:
	scrollbar.connect("changed", Callable(self, "handle_scrollbar_changed"))

func handle_scrollbar_changed():
	scroll.scroll_vertical = scrollbar.max_value

func _on_input_text_submitted(new_text: String) -> void:
	if new_text.is_empty(): #This is used to prevent empty lines
		return
	var input_response = InputResponse.instantiate()
	var response = command_processor.process_command(new_text)
	input_response.set_text(new_text, response)
	add_response_to_game(input_response)

func add_response_to_game(response: Control):
	history_rows.add_child(response)
	delete_History_beyond_limit()

func delete_History_beyond_limit():
	if history_rows.get_child_count() > max_lines_remembered: #This is used to clear history hafter a set amount of lines
		var rows_to_forget = history_rows.get_child_count() - max_lines_remembered
		for i in range(rows_to_forget):
			history_rows.get_child(i).queue_free() #queue_free deletes notes as soon as its safe to do so
			
func delete_all_history(): #Clears teh entier history *This is unrecoverable
		var rows_to_forget = history_rows.get_child_count()
		for i in range(rows_to_forget):
			history_rows.get_child(i).queue_free() #queue_free deletes notes as soon as its safe to do so

