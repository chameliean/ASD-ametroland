extends Node2D


# Define the number of rows and columns
var rows = 10
var columns = 10

# Define the size of each cell
var cell_size = Vector2(64, 64)

# Cell scene to instance (this should be a pre-made scene with a script attached)
var cell_scene = preload("res://Grid.tscn")

func _ready():
	draw_grid()
	create_grid()

func draw_grid():
	var line_color = Color(1, 1, 1)  # White color for grid lines
	var line_width = 2

	# Draw horizontal lines
	for i in range(rows + 1):
		var start = Vector2(0, i * cell_size.y)
		var end = Vector2(columns * cell_size.x, i * cell_size.y)
		draw_line(start, end, line_color, line_width)
		
	# Draw vertical lines
	for j in range(columns + 1):
		var start = Vector2(j * cell_size.x, 0)
		var end = Vector2(j * cell_size.x, rows * cell_size.y)
		draw_line(start, end, line_color, line_width)

func create_grid():
	for row in range(rows):
		for col in range(columns):
			var cell_instance = cell_scene.instance()
			cell_instance.position = Vector2(col * cell_size.x, row * cell_size.y)
			add_child(cell_instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
