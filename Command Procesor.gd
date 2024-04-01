extends Node

var user = "No User Set. To set the user use the setuser command"

# Function to process the user input and execute the appropriate command
func process_command(input: String) -> String:
	# Split the input string into words
	var words = input.split(" ", false)
	# Check if any words were parsed
	if words.size() == 0:
		return "Error: No words were parsed"
	# Extract the first word and convert it to lowercase
	var first_word = words[0].to_lower()
	# Initialize variables for the second and third words
	var second_word = ""
	var third_word = ""
	var fourth_word = ""
	# Check if there are more than one word in the input
	if words.size() > 1:
		second_word = words[1].to_lower()
	# Check if there are more than two words in the input
	if words.size() > 2:
		third_word = words[2]
	if words.size() > 3:
			fourth_word = words[3]

	# Match the first word to determine the command
	match first_word:
		"go":  # If the command is "go"
			return go(second_word)  # Execute the "go" command
		"help":  # If the command is "help"
			return help()  # Display help information
		"curl":  # If the command is "curl"
			return curl(second_word, third_word,fourth_word)  # Execute the "curl" command with the URL
		"clear":
			return clear()
		"setuser":
			return setuser(second_word,third_word)
		"whoami":
			return whoami()
		_:  # If the command is unrecognized
			return "Unrecognized command - please try again"

# Function to handle the "go" command
func go(second_word: String) -> String:
	# Check if a parameter is provided
	if second_word == "":
		return "Not enough parameters, please check your command and try again"
	# Return a message indicating the location the user wants to go to
	return "You go " + second_word

# Function to handle the "curl" command
func curl(second_word: String, third_word: String, fourth_word: String) -> String:
	# Check if a URL is provided as the third word
	if second_word == "example.com":
		return '<!doctype html>\n<html>\n<head>\n    <title>Example Domain</title>\n\n    <meta charset="utf-8" />\n    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />\n    <meta name="viewport" content="width=device-width, initial-scale=1" />\n    <style type="text/css">\n    body {\n        background-color: #f0f0f2;\n        margin: 0;\n        padding: 0;\n        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;\n        \n    }\n    div {\n        width: 600px;\n        margin: 5em auto;\n        padding: 2em;\n        background-color: #fdfdff;\n        border-radius: 0.5em;\n        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);\n    }\n    a:link, a:visited {\n        color: #38488f;\n        text-decoration: none;\n    }\n    @media (max-width: 700px) {\n        div {\n            margin: 0 auto;\n            width: auto;\n        }\n    }\n    </style>    \n</head>\n\n<body>\n<div>\n    <h1>Example Domain</h1>\n    <p>This domain is for use in illustrative examples in documents. You may use this\n    domain in literature without prior coordination or asking for permission.</p>\n    <p><a href="https://www.iana.org/domains/example">More information...</a></p>\n</div>\n</body>\n</html>'
	# For demonstration purposes, return a message with the provided URL
	if (second_word == "-o") && (third_word == "83.136.253.226:43544/download.php"):
		return"% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
								 Dload  Upload   Total   Spent    Left  Speed
100  1256  100  1256    0     0   5222      0 --:--:-- --:--:-- --:--:--  5211
"
	return "An Error has occured"
# Function to display help information

func clear():
	var terminal = get_parent()
	terminal.delete_all_history()
	return "Terminal history cleared"

func setuser(second_word: String, third_word: String) -> String:
	if (second_word !="") && third_word != "":
		user = second_word + " " + third_word
		return "User is set to " + user
	if second_word != "":
		user = second_word
		return "User is set to " + user
	
	else:
		return "Invaild number of arguments. Did you mean whoami?"
		
func whoami():
	return user
	

func help() -> String:
	return "You can use these commands: go [location], curl [options], clear, help"
