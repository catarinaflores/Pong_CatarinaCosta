extends CharacterBody2D

@export var speed := 400


var direction := 0.0

@onready var start_position := position

# criar objetos usando apenas código
 # func _ready() -> void:
	# var my_rect: ColorRect = ColorRect.new()
	# my_rect.color = Color.RED
	# my_rect.size = Vector2(50, 50)
	# add_child(my_rect)

func _physics_process(_delta: float) -> void:
	
	velocity.y = direction * speed
	move_and_slide()
	position.x = start_position.x


func _unhandled_input(_event: InputEvent) -> void:
	direction = Input.get_axis("ui_up", "ui_down")
