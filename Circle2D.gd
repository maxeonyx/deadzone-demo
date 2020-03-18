tool
extends Node2D

export(float) var radius = 80
export(Color) var color = Color.azure

func _draw():
    draw_circle(Vector2(0, 0), radius, color)
