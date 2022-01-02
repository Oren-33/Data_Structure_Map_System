extends Node
var position = 0
var name_of_building = "中山邦翰楼"

func _ready() -> void:
	pass 

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("left_click"):
		var minus = get_viewport().get_mouse_position()-get_child(0).position
		if(minus.length()<30):
			print(name_of_building)
			if($'../../'.count_of_click%2==0):
				$'../../'.target_x = position
			else:
				$'../../'.target_y = position
			$'../../'.print_consquence()
			
		
	
