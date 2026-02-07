extends CollisionShape2D

@onready var body = $static_body_2d

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
