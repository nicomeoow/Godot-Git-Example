extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var playerSpeed = 200 

# Called when the node enters the scene tree for the first time.
func _ready():
	print ("hello")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input. is_action_just_pressed("ui_up"):
		velocity.y -= 1 
	if Input. is_action_pressed("ui_down"):
		velocity.y += 1
	if Input. is_action_just_pressed("ui_left"):
		velocity.x -= 1
	if Input. is_action_just_pressed("ui_right"):
		velocity.x += 1
	
	if velocity.length() > 0: 
		velocity = velocity.normalized() * playerSpeed
		
	position += velocity * delta 
