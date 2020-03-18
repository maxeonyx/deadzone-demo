extends Node2D

export(String) var action = "button_a"

func _process(delta):
    if Input.is_action_pressed(action):
        visible = true
    else:
        visible = false
