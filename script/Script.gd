extends KinematicBody2D


var speed = 1



onready var sprite = $Sprite
onready var mira = $ray


func _physics_process(delta):
	var Movimiento = Vector2()
	
	if Input.is_action_pressed('ui_up'):
		Movimiento.y -= speed 
		mira.set_cast_to(Vector2(0, -50))
		$Sprite.play('arriba')
	elif mira.get_cast_to() == Vector2(0, -50):
		$Sprite.play('Idle')
	if Input.is_action_pressed('ui_down'):
		Movimiento.y += speed 
		mira.set_cast_to(Vector2(0, 50))
		$Sprite.play('abajo')
	elif mira.get_cast_to() == Vector2(0, 50):
		$Sprite.play('Idle')
	if Input.is_action_pressed("ui_left"):
		Movimiento.x -= speed
		mira.set_cast_to(Vector2(-50, 0))
		$Sprite.play('izq')
	elif mira.get_cast_to() == Vector2(-50, 0):
		$Sprite.play('Idle')
	if Input.is_action_pressed("ui_right"):
		Movimiento.x += speed
		mira.set_cast_to(Vector2(50, 0))
		$Sprite.play('derecha')
	elif mira.get_cast_to() == Vector2(50, 0):
		$Sprite.play('Idle')
	move_and_slide(Movimiento)
	
