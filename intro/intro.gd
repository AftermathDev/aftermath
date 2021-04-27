# le epic main script
# think of this as a server script in roblox

extends Node2D

# get all important nodes
onready var camera = $Camera2D
onready var background = $background
#onready var loopmusic = $music/loopmusic
onready var introintro = $music/introintromusic

func _init(): # fires when game starts
	OS.min_window_size = OS.window_size
	OS.max_window_size = OS.window_size

func _ready(): # fires when game is ready
	camera.current = true # make the player see through camera2D
	main()

func main():
	introintro.play(0)
	background.play("stars")
	yield(get_tree().create_timer(1.0), "timeout") # https://godotengine.org/qa/7042/wait-like-function
	camera.get_node("AnimationPlayer").play("slide to the left")
	
func _unhandled_input(event): # fired when someone presses a key
	if event.is_action_pressed("ui_accept"):
		pass
