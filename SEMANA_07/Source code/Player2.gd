extends KinematicBody2D

var speed = 5000
var jump_speed = 125
var gravity = 200
var friction = 0.25

onready var global_vars = get_node("/root/Global")

var velocity = Vector2.ZERO

func _ready():
	$Sprite.set_flip_h(true)
	

func _process(delta):
	if global_vars.invertido == true:
		$Camera2D2.current = true
	else:
		$Camera2D2.current = false

func _physics_process(delta):
	if global_vars.invertido == true:
		velocity.x = 0
		if Input.is_action_pressed("ui_right"):
			velocity.x += speed * delta
			$AnimationPlayer.play("andando_invertido")
			$Sprite.set_flip_h(true)
		elif Input.is_action_pressed("ui_left"):
			velocity.x -= speed * delta
			$AnimationPlayer.play("andando_invertido")
			$Sprite.set_flip_h(false)
		else:
			$AnimationPlayer.stop()
		
		velocity.y += -gravity * delta
		
		if is_on_floor():
			
			if velocity.x == 0:
				velocity.x = lerp(velocity.x, 0, friction)
				
			if Input.is_action_just_pressed("ui_up"):
				velocity.y = +jump_speed
			
			if Input.is_action_just_released("ui_up") and velocity.y > -jump_speed/2:
				velocity.y = 0
				velocity.y = +jump_speed/2
			
			if Input.is_action_just_pressed("ui_down"):
				velocity.y = +jump_speed
			
		velocity = move_and_slide(velocity, Vector2.DOWN)


func _on_Area2D2_body_entered(body):
	global_vars.invertido = false
	print(global_vars.invertido)
