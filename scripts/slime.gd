extends Node2D

const SPEED = 60

enum Direction {
	right = 1,
	left = -1
}

var direction = Direction.right

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = Direction.left
		animated_sprite.flip_h = true
	elif ray_cast_left.is_colliding():
		direction = Direction.right
		animated_sprite.flip_h = false
	
	position.x += SPEED * delta * direction
