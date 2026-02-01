extends Button
@onready var gaveta: Button = $"."
@onready var gaveta_highlight: Sprite2D = $"Gaveta Highlight"
@onready var abrir_gaveta: AudioStreamPlayer2D = $"Abrir Gaveta"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if gaveta.is_hovered():
		gaveta_highlight.visible = true
	else:
		gaveta_highlight.visible = false


func _on_mouse_entered() -> void:
	gaveta.position.y += 300
	abrir_gaveta.play()

func _on_mouse_exited() -> void:
	gaveta.position.y -= 300
	abrir_gaveta.play()
