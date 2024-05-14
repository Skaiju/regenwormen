extends Node3D


var tile_x := 0.4
var tile_y := 0.8

@onready var cam:= $Camera3D

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var weight:= 0.001
	var lerp_distance:= 50.0
	var vel = 0.0 
	if cam.position.x < lerp_distance: vel = lerp(cam.position.x, lerp_distance, weight) * delta;
	cam.position += Vector3(vel,0.0,0.0) 
	print(cam.position.x)

