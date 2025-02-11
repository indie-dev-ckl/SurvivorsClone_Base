extends CharacterBody2D
@export var movement_speed = 20.0
@export var hp = 10
@onready var sprite = $Sprite2D
@onready var player = get_tree().get_first_node_in_group("Player")
@onready var anim = $AnimationPlayer
func _ready():
	anim.play("walk")

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = movement_speed * direction
	if direction.x > 0.1:
		sprite.flip_h = true
	elif direction.x< - 0.1:
		sprite.flip_h = false
	
	move_and_slide()
	
	


func _on_hurt_box_hurt(damage):
	hp -= damage
	print("enemy hp: "+str(hp))
	if hp <= 0:
		queue_free()
