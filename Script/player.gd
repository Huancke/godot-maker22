extends CharacterBody2D
@export var move_speed:=40
@export var is_Hit:bool=false
@export var Bullet_Scence:PackedScene
var is_game_over:bool=false
signal Player_down
func _ready():pass
func _physics_process(delta):
	if not is_Hit:
		velocity=Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")*move_speed
		if velocity==Vector2.ZERO:$AnitSprite2D.play("Idle") 
		else :$AnitSprite2D.play("Running")
		if Input.is_action_pressed("ui_right"):$AnitSprite2D.flip_h=false
		elif Input.is_action_pressed("ui_left"):$AnitSprite2D.flip_h=true
		move_and_slide()
func _process(delta):
	if Input.is_anything_pressed():$Sound_Running.play()
	else:$Sound_Running.stop()
	var material=$AnitSprite2D.material as ShaderMaterial
	if velocity.x>0:material.set_shader_parameter("light_dir",Vector2(-0.3,5))
	else:material.set_shader_parameter("light_dir",Vector2(0.3,5))
func Hit_Player():
	is_Hit=true
	var anim_sprite := $AnitSprite2D as AnimatedSprite2D
	$AnitSprite2D.play("Hurt")
	await anim_sprite.animation_finished
	emit_signal("Player_down")
	$Sound_Hit.play()
	get_tree().current_scene.Game_Over()
func _fire():
	if velocity==Vector2.ZERO and not is_Hit:
		var Bullet_node=Bullet_Scence.instantiate()
		#PackedScence.instantiate()方法非常重要,以后会大量用到
		Bullet_node.position=position+Vector2(6,6)
		get_tree().current_scene.add_child(Bullet_node)
		$Sound_Fire.play()
	else:return
