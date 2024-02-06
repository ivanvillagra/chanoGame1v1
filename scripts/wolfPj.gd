extends CharacterBody2D


@export var gravity : float = 10
@export var highJump : float = -475
@export var speed : int = 200
@export var speedFall : int = 475
var isInFloor = true

func _physics_process(delta):
	
	velocity.y += gravity
	
	moveWolf()
	move_and_slide()

func moveWolf():
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up") && is_on_floor():
			velocity.y = highJump 
			
	if Input.is_action_pressed("ui_down") && !is_on_floor():
			velocity.y = speedFall
