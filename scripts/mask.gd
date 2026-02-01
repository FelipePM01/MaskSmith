extends Node
#@onready var model
#@onready var pattern
#@onready var eyes
#@onready var mouth
#@onready var acessory
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

func _ready() -> void:
	set_model(3)
	set_color(1)
	set_eyes(1)
	set_mouth(1)
	set_rod(1)
	set_side(1)
	set_details(1)
	set_arabesque(1)
	set_stones(1)
func set_model(model_number:int):
	if model_number!=0:
		self.model_number=model_number
		$Shape.texture=load("res://assets/Máscara %d/Máscara%d.png"%[model_number,model_number])
		$Eyes.texture=null
		$Mouth.texture=null
		$Contour.texture=null
		$Forehead.texture=null
		$Side.texture=null
		$Details.texture=null
		$Arabesque.texture=null
		$Stones.texture=null
		$Rod.texture=null
		
func set_color(color_number:int):
	if color_number!=0:
		self.color_number=color_number
		$Shape.texture=load("res://assets/Máscara %d/Máscara%d_fundo%d.png"%[model_number,model_number,color_number])
	
	
func set_eyes(eyes_number:int):
	if eyes_number!=0:
		self.eyes_number=eyes_number
		$Eyes.texture=load("res://assets/Máscara %d/Máscara%d_olho%d.png"%[model_number,model_number,eyes_number])
	
	
func set_mouth(mouth_number):
	if mouth_number!=0:
		self.mouth_number=mouth_number
		$Mouth.texture=load("res://assets/Máscara %d/Máscara%d_boca%d.png"%[model_number,model_number,mouth_number])
	

func set_contour(contour_number):
	
	if contour_number!=0:
		self.contour_number=contour_number
		$Contour.texture=load("res://assets/Máscara %d/Máscara%d_contorno%d.png"%[model_number,model_number,contour_number])
		
func set_forehead(forehead_number):
	if forehead_number!=0:
		self.forehead_number=forehead_number
		$Forehead.texture=load("res://assets/Máscara %d/Máscara%d_testa%d.png"%[model_number,model_number,forehead_number])
		
func set_side(side_number):
	if side_number!=0:
		self.side_number=contour_number
		$Side.texture=load("res://assets/Máscara %d/Máscara%d_lateral%d.png"%[model_number,model_number,side_number])
		
func set_details(details_number:int):
	if details_number!=0:
		self.details_number=details_number
		$Details.texture=load("res://assets/Máscara %d/Máscara%d_detalhe%d.png"%[model_number,model_number,details_number])
		
func set_arabesque(arabesque_number:int):
	if arabesque_number!=0:
		self.arabesque_number=arabesque_number
		$Arabesque.texture=load("res://assets/Máscara %d/Máscara%d_arabesco%d.png"%[model_number,model_number,arabesque_number])
		
func set_stones(stones_number:int):
	if stones_number!=0:
		self.stones_number=stones_number
		$Stones.texture=load("res://assets/Máscara %d/Máscara%d_pedras%d.png"%[model_number,model_number,stones_number])
		
func set_rod(rod:int):
	if rod:
		$Rod.texture=load("res://assets/Máscara %d/Máscara%d_haste.png"%[model_number,model_number])
	else:
		$Rod.texture=null



	
#func stats():
	#var cuteness=model.cuteness+eyes.cuteness+mouth.cuteness
	#var spookiness=model.spookiness+eyes.spookiness+mouth.spookiness
	#var elegance=model.eleganceeyes.elegance+mouth.elegance
	#var total=cuteness+spookiness+elegance
	#
	#var stats=[elegance/total,spookiness/total,cuteness/total]
	#return stats
	
