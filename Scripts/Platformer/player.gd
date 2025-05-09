extends CharacterBody2D
@onready var player: CharacterBody2D = $"."


const SPEED = 130.0
const JUMP_VELOCITY = -290.0
@onready var jump_sound: AudioStreamPlayer2D = $"../jump_sound"

var platVel = Vector2(0,0)

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		velocity.x = platVel.x

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true 
	
	if is_on_floor():
		Global.player_position.x = player.position.x
		Global.player_position.y = player.position.y
		if direction == 0:
			animated_sprite.play("default")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	if direction:
		velocity.x = direction * SPEED
	elif is_on_floor():
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	platVel = get_platform_velocity()
