extends Node2D


@onready var buton = $TextureButton

func _ready():
	buton.connect("pressed", Callable(self, "_baslasın"))

func _baslasın():
	buton.queue_free()
	Global.baslangıc = 1
