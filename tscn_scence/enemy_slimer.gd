extends Area2D
@export var Slime_Speed:=-35
var _dead:bool=false
func _physics_process(delta):
	if not _dead:position +=Vector2(Slime_Speed,0)*delta
	if position.x<-128:queue_free()

func _on_body_entered(body:Node2D):if body is CharacterBody2D and not _dead:body.Hit_Player()
#搞错信号连接函数作用目标的话就会报错
func _on_area_entered(area: Area2D)->void:
	#is_in_group方法以后会经常用到
	if area.is_in_group("Bullet"):
		$Sound_death.play()
		$AnimatedSprite2D.play("death")
		area.queue_free()
		get_tree().current_scene.Score+=1
		_dead=true
		await $AnimatedSprite2D.animation_finished
		queue_free()
		
