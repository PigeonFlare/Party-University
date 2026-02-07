extends Area2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	print("ENTER:", body.name)
	get_tree().reload_current_scene()
