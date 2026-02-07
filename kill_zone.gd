extends Area2D

#@onready var body = $static_body_2d
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_entered(body: Node2D) -> void:
	print("ENTER:", body.name)
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
