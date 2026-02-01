extends Button
@onready var botão_paleta: Button = $"."
@onready var paleta_highlight: Sprite2D = $"Paleta Highlight"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if botão_paleta.is_hovered():
		paleta_highlight.visible = true
	else:
		paleta_highlight.visible = false


func _on_pressed() -> void:
	$"../Mask".set_color()
