extends Control


const InputResponse = preload("res://InputResponse.tscn")

@onready var history_rows = $Backround/MarginContainer/Rows/GameInfo/Scroll/HistoryRows
@onready var scroll = $Backround/MarginContainer/Rows/GameInfo/Scroll
@onready var scrollbar = scroll.get_v_scroll_bar()

func _ready() -> void:
	scrollbar.connect("changed", Callable(self, "handle_scrollbar_changed"))


func handle_scrollbar_changed():
	scroll.scroll_vertical = scrollbar.max_value

func _on_input_text_submitted(new_text: String) -> void:
	var input_response = InputResponse.instantiate()
	input_response.set_text(new_text, "This is where a response will go")
	history_rows.add_child(input_response)
