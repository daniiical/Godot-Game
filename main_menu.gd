extends CharacterBody2D


var movement = Vector2()
var speed = 500


@onready var anim = $samus_anim
 

func _ready():
	
		pass
		
func _physics_process(delta):
		
		player_movement()
		
		
		movement = movement.normalized() * speed * delta  
		move_and_slide()
		
func player_movement():
	
	var LEFT =Input.is_action_pressed("ui_left")
	var RIGHT =Input.is_action_pressed("ui_right")
	var DOWN =Input.is_action_pressed("ui_down")
	var UP  =Input.is_action_pressed("ui_up")
	
	movement.x = -int(LEFT) + int(RIGHT)
	movement.y = -int(UP) + int(DOWN)
	
	if movement.x != 0:
		
		velocity.x = movement.x * speed 
		
	else:
		velocity.x = 0
		
	if movement.y != 0:
		
		velocity.y = movement.y * speed 
		
	else:
		velocity.y = 0
	
func animation_player():

	pass
	

func fire_weapon ():
	
	pass
	
