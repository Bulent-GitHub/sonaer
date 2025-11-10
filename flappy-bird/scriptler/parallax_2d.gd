extends Parallax2D

@export var hız : float = 100

func _process(delta):
	# x ekseninde kaydır
	scroll_offset.x -= hız * delta
