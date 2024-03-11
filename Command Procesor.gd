extends Node

# Function to process the input command
func process_command(input: String) -> String:
	# Split the input string into words based on spaces
	var words = input.split(" ", false)
	
	# Check if no words were parsed
	if words.size() == 0:
		return "Error: No words were parsed"
	
	# Convert the first word to lowercase
	var first_word = words[0].to_lower()
	
	# Initialize the second word variable
	var second_word = ""
	
	# Check if there are more than one words
	if words.size() > 1:
		# Convert the second word to lowercase
		second_word = words[1].to_lower()
	
	# Match the first word to determine the action
	match first_word:
		"go":
			# Call the go function with the second word
			return go(second_word)
		"help":
			# Call the help function
			return help()
		"curl":
			# Call the curl function with the second word
			return curl(second_word)
		_:
			# Return an error message for unrecognized command
			return "Unrecognized command - please try again"

# Function to handle the "go" command
func go(second_word: String) -> String:
	# Check if the second word is empty
	if second_word == "":
		# Return an error message for not enough parameters
		return "Not enough parameters, please check your command and try again"
	
	# Return a message indicating the action of going to the specified location
	return "You go " + second_word

# Function to handle the "curl" command
func curl(second_word: String) -> String:
	# Check if the second word is "example.com"
	if second_word == "example.com":
		# Return an HTML content as a response
		return '<!doctype html>\n<html>\n<head>\n    <title>Example Domain</title>\n\n    <meta charset="utf-8" />\n    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />\n    <meta name="viewport" content="width=device-width, initial-scale=1" />\n    <style type="text/css">\n    body {\n        background-color: #f0f0f2;\n        margin: 0;\n        padding: 0;\n        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;\n        \n    }\n    div {\n        width: 600px;\n        margin: 5em auto;\n        padding: 2em;\n        background-color: #fdfdff;\n        border-radius: 0.5em;\n        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);\n    }\n    a:link, a:visited {\n        color: #38488f;\n        text-decoration: none;\n    }\n    @media (max-width: 700px) {\n        div {\n            margin: 0 auto;\n            width: auto;\n        }\n    }\n    </style>    \n</head>\n\n<body>\n<div>\n    <h1>Example Domain</h1>\n    <p>This domain is for use in illustrative examples in documents. You may use this\n    domain in literature without prior coordination or asking for permission.</p>\n    <p><a href="https://www.iana.org/domains/example">More information...</a></p>\n</div>\n</body>\n</html>'
	
	# Return an error message for other second words
	return "error"

# Function to handle the "help" command
func help() -> String:
	# Return a message with available commands
	return "You can use these commands go [location], help"
