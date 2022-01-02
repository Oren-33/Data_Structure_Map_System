extends Node
var position = 2
var name_of_building = "文汇楼"


func _ready() -> void:
	pass 

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("left_click"):
		var minus = get_viewport().get_mouse_position()-get_child(0).position
		if(minus.length()<30):
			print(name_of_building)
			if($'../../'.target_x==999):
				$'../../'.target_x = position
			else:
				$'../../'.target_y = position
			$'../../'.print_consquence()
			
		
	
