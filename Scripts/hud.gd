extends Control

var pressed=false
func _on_confirmar_pressed() -> void:
	var mask=get_parent().get_node("Mask")
	var letter=get_parent().get_node("Letter")
	var sum=0
	for i in range(4):
		for j in range(9):
			sum+=mask.selected_matrix[j][i]*letter.matrix[i][j]
	if sum>=45:
		$Label.text="Sucesso"
		
	else:
		$Label.text="Fracasso"


func _on_pedido_pressed() -> void:
	if not pressed:
		pressed=true
		$Label.text=get_parent().get_node("Letter").text
	else:
		$Label.text=""
