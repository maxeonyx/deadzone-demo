extends Node2D

func _process(delta):
    
    var line_size = 100
    
    var input_strength = Input.get_action_strength("right_trigger_without_deadzone")
    $Input.points[0].y = input_strength * -line_size

    var output_strength = Input.get_action_strength("right_trigger_with_deadzone")
    $Output.points[0].y = output_strength * -line_size
