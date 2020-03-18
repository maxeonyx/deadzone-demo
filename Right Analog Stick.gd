extends Node2D

func _process(delta):
    
    var background_radius = 100
    var input_x = Input.get_action_strength("right_stick_right_without_deadzone") - Input.get_action_strength("right_stick_left_without_deadzone")
    var input_y = Input.get_action_strength("right_stick_down_without_deadzone") - Input.get_action_strength("right_stick_up_without_deadzone")
    var input_vec = Vector2(input_x,input_y)
    $Input.position = input_vec * (background_radius - $Input.radius)
    
    var custom_vec
    if input_vec.length() < 0.3:
        custom_vec = Vector2(0,0)
    elif input_vec.length() > 1:
        custom_vec = input_vec.normalized()
    else:
        custom_vec = (input_vec - input_vec.normalized()*0.3)*(1/(1-0.3))
    $Custom.position = custom_vec * (background_radius - $Custom.radius)
    
    var naive_vec = Vector2(
        Input.get_action_strength("right_stick_right_with_deadzone") - Input.get_action_strength("right_stick_left_with_deadzone"),
        Input.get_action_strength("right_stick_down_with_deadzone") - Input.get_action_strength("right_stick_up_with_deadzone")
    )
    $Naive.position = naive_vec * (background_radius - $Naive.radius)
