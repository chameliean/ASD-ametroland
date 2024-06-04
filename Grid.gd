extends Area2D

# Signal to notify when the cell is clicked
signal cell_clicked

# Ready function to set up the cell
func _ready():
	# Connect the input event signal to a custom function
	connect("input_event", self, "_on_input_event")

# Function to handle input events
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_LEFT:
			# Emit the cell_clicked signal when the cell is clicked
			emit_signal("cell_clicked")
			# Add any additional logic for when the cell is clicked
			print("Cell clicked at position: ", position)
