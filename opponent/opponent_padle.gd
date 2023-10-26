extends CharacterBody2D

@export var speed := 250
@export var ball: Node2D
@onready var start_position := position

func get_direction() -> int:
	var dead_zone := 25
	
	if ball.position.y - self.position.y < -dead_zone:
		return -1
		
	elif ball.position.y - self.position.y > dead_zone:
		return 1
		
	return 0

func _physics_process(_delta: float) -> void:
	velocity.x = 0
	velocity.y = get_direction() * speed
	move_and_slide()
	position.x = start_position.x

