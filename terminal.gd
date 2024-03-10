extends Control


const InputResponse = preload("res://InputResponse.tscn")
const response = preload("res://response.tscn")
@export var max_lines_remembered := 50 #Hstory of command line

@onready var history_rows = $Backround/MarginContainer/Rows/GameInfo/Scroll/HistoryRows
@onready var scroll = $Backround/MarginContainer/Rows/GameInfo/Scroll
@onready var scrollbar = scroll.get_v_scroll_bar()
@onready var command_processor = $CommandProcessor

func _ready() -> void:
	scrollbar.connect("changed", Callable(self, "handle_scrollbar_changed")) #Similar to lambda, lambdas are anonymous functions that can be passed around as arguments to other functions. While the syntax is different, the concept is similar: creating a function on-the-fly to be used as a callback. In this case, GDScript achieves a similar functionality using its Callable class.
	var starting_message = response.instantiate()
	starting_message.text = "Welcome to the terminal! If you're new to using the command line interface, don't worry, it's easier than you might think. Simply type commands and hit Enter to execute them. If you ever need guidance or want to discover what commands are available, just type 'help' and press Enter. This will provide you with a list of commonly used commands and their usage instructions. Remember, the terminal is a powerful tool, so always double-check your commands before running them to ensure you get the results you expect. Happy command-line adventuring!"
	add_response_to_game(starting_message)

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

