extends CharacterBody2D

var gravity : float = 981
var zıplamak: float =400 
@onready var animates = $AnimatedSprite2D
@onready var baSLA = $TextureButton

func _physics_process(delta: float) -> void:
	if Global.baslangıc == 0:
		animates.play("default")
		pass
	elif Global.baslangıc == 1:
		velocity.y += gravity *delta
		animates.play("default")
	if Input.is_action_just_pressed("zıpla"):
		velocity.y = -zıplamak
	move_and_slide()
