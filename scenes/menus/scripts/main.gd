extends Control


@export var main_menu_scene: PackedScene = preload("res://scenes/game/game.tscn")

func _on_start_button_pressed():
	get_tree().change_scene_to_packed(main_menu_scene)



func _on_quit_button_pressed():
	get_tree().quit()
