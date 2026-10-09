extends Node2D

var time_left = 90   # 60 saniyelik süre
@onready var timer_label: Label = $CanvasLayer/TimerLabel

func _process(delta):
	if time_left > 0:
		time_left -= delta   # her frame süreden düş
		timer_label.text = str(round(time_left))  # yuvarlayıp ekrana yaz
	else:
		game_over()

func game_over():
	print("Süre doldu!")           
	 # Buraya oyun bitiş koyarsın ekranı vs.
