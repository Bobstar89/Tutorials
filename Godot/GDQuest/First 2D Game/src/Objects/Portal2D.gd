tool
extends Area2D

onready var animation_player = $AnimationPlayer
export var next_scene: PackedScene

func _get_configuration_warning() -> String:
	return "The next_scene property can't be empty" if not next_scene else ""

func _on_body_entered(body):
	teleport()

func teleport():
	animation_player.play("fade_in")
	yield(animation_player, "animation_finished")
	get_tree().change_scene_to(next_scene)


