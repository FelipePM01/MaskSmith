extends Node
@onready var model_number=0
@onready var contour_number=0
@onready  var details_number=0
@onready var color_number=0
@onready var eyes_number=0
@onready var mouth_number=0
@onready var rod=0
@onready var stones_number=0
@onready var arabesque_number=0
@onready var side_number=0
@onready var forehead_number=0
@onready var selected_matrix = [
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0],
	[0, 0, 0]
]
func set_model():
	selected_matrix[0][model_number]=0
	model_number=(model_number+1)%4
	$Shape.texture=load("res://assets/Máscara %d/Máscara%d.png"%[model_number+1,model_number+1])
	$Eyes.texture=null
	$Mouth.texture=null
	$Contour.texture=null
	$Forehead.texture=null
	$Side.texture=null
	$Details.texture=null
	$Arabesque.texture=null
	$Stones.texture=null
	$Rod.texture=null
	selected_matrix[0][model_number]=1
	
	
func set_color():
	selected_matrix[1][color_number]=0
	color_number=(color_number+1)%3
	$Shape.texture=load("res://assets/Máscara %d/Máscara%d_fundo%d.png"%[model_number+1,model_number+1,color_number+1])
	selected_matrix[1][color_number]=1
	
func set_eyes(eyes_number:int):
	selected_matrix[7][eyes_number]=0
	eyes_number=(eyes_number+1)%4
	$Eyes.texture=load("res://assets/Máscara %d/Máscara%d_olho%d.png"%[model_number+1,model_number+1,eyes_number+1])
	selected_matrix[7][eyes_number]=1
	
func set_mouth(mouth_number):
	selected_matrix[6][mouth_number]=0
	mouth_number=(mouth_number+1)%4
	$Mouth.texture=load("res://assets/Máscara %d/Máscara%d_boca%d.png"%[model_number+1,model_number+1,mouth_number+1])
	selected_matrix[6][mouth_number]=1

func set_contour(contour_number):
	selected_matrix[2][contour_number]=0
	contour_number=(contour_number+1)%4
	$Contour.texture=load("res://assets/Máscara %d/Máscara%d_contorno%d.png"%[model_number+1,model_number+1,contour_number+1])
	selected_matrix[2][contour_number]=1
		
func set_forehead(forehead_number):
	selected_matrix[4][forehead_number]=0
	forehead_number=(forehead_number+1)%4
	$Forehead.texture=load("res://assets/Máscara %d/Máscara%d_testa%d.png"%[model_number+1,model_number+1,forehead_number+1])
	selected_matrix[4][forehead_number]=1
		
func set_side():
	selected_matrix[3][side_number]=0
	side_number=(side_number+1)%4
	$Side.texture=load("res://assets/Máscara %d/Máscara%d_lateral%d.png"%[model_number+1,model_number+1,side_number+1])
	selected_matrix[3][side_number]=1
func set_details():
	details_number=(details_number+1)%4
	$Details.texture=load("res://assets/Máscara %d/Máscara%d_detalhe%d.png"%[model_number+1,model_number+1,details_number+1])
		
func set_arabesque():
	arabesque_number=(arabesque_number+1)%4
	$Arabesque.texture=load("res://assets/Máscara %d/Máscara%d_arabesco%d.png"%[model_number+1,model_number+1,arabesque_number+1])
		
func set_stones():
	stones_number=(stones_number+1)%4
	$Stones.texture=load("res://assets/Máscara %d/Máscara%d_pedras%d.png"%[model_number+1,model_number+1,stones_number+1])
		
func set_rod():
	if rod==0:
		$Rod.texture=load("res://assets/Máscara %d/Máscara%d_haste.png"%[model_number,model_number])
		rod=1
	else:
		$Rod.texture=null
		rod=0

	
