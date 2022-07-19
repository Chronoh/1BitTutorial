extends Area2D

const Bullet = preload("res://Bullet.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(int) var SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position.y -= SPEED * delta
	if Input.is_action_pressed("ui_down"):
		position.y += SPEED * delta
	if Input.is_action_just_pressed("ui_accept"):
		fire_bullet()

func fire_bullet():
	var bullet = Bullet.instance()
	var main = get_tree().current_scene
	main.add_child( bullet)
	bullet.global_position = global_position #not relative to parent, but to global position. Setting to parent (Ship's) global position
	
	
