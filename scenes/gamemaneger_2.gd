extends Node
var time_left = 60   # 60 saniyelik süre
@onready var timerlabel: Label = $timerlabel
@onready var player: CharacterBody2D = %Player
@onready var timer = $Timer

func _process(delta):
	if time_left > 0:
		time_left -= delta   # her frame süreden düş
		timerlabel.text = str(round(time_left))  # yuvarlayıp ekrana yaz
	
		
		
  # Timer node'unu sahnede eklediğini varsayıyorum

func kill_player(body):
	if time_left == 0:
		print("You died!")
		Engine.time_scale = 0.5
		body.queue_free()  # Tüm oyuncuyu kaldır
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

  


	

		
	
