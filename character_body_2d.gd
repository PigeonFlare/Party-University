extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -500.0
const JUMP_SFX = preload("res://sound effects/jumpSound.wav")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		play_jump_sound()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
@onready var sfx_player = $audio_stream_player_2d
func play_jump_sound():
	# Assign the sound to the player
	sfx_player.stream = JUMP_SFX
	# Randomize the pitch slightly (makes it sound better if you jump a lot)
	sfx_player.pitch_scale = randf_range(0.9, 1.1)
	# Play the sound!
	sfx_player.play()


func _on_kill_zone_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
