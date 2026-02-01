extends Button
@onready var pedras: Button = $"."
@onready var pedras_highlight: Sprite2D = $"Pedras highlight"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if pedras.is_hovered():
		pedras_highlight.visible = true
	else:
		pedras_highlight.visible = false
