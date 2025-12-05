extends Camera2D

"""
func _input(event : InputEvent) -> void:
	if event.is_action_pressed("shift"):
		set_zoom(Vector2(2, 2))
		return
	if event.is_action_released("shift"):
		set_zoom(Vector2(1,1))
		return
"""

func shake() -> void:
	var shake_tween = create_tween()
	shake_tween.tween_property(self, "offset", offset + Vector2(randi_range(-2, -1), 0), 0.1)
	shake_tween.tween_property(self, "offset", offset + Vector2(randi_range(4, 2), 0), 0.1)
	shake_tween.tween_property(self, "offset", Vector2(0, 0), 0.1)
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
