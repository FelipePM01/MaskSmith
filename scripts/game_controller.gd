extends Node

@onready var mask=$Mask
func _ready() -> void:
	pass
	#$Mask.set_model(Model.new(1,0,0))
	#$Mask.set_pattern(Pattern.new(0.5,0.5,0))
	#$Mask.set_mouth(Mouth.new(1,0,0))
	#$Mask.set_eyes(Eyes.new(1,0,0))
	#evaluate()
	
func evaluate():
	var mask_stats=$Mask.stats()
	var result= 1-max(abs($Letter.target_cuteness-mask_stats[2]), abs($Letter.target_elegance-mask_stats[0]), abs($Letter.target_spookiness-mask_stats[1]))
	if result==1:
		print("Perfect")
	elif result>=0.75:
		print("Nice")
	elif result>0.5:
		print("Sucess")
	else:
		print("Fail")
	
