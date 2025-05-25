extends Node2D
@export var Slime_Scene: PackedScene
@export var spawn_timer:Timer
@export var Score:int=0
@export var _Score:Label
@export var game_over_label:Label
func _ready():
	$BGM_music.play()
	$Player.connect("Player_down",_is_Player_down)
	
func _is_Player_down():
	var fall_tween = create_tween().set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_QUAD)
	fall_tween.tween_property($Player, "position:y", 1000, 1.5)
	fall_tween.parallel().tween_property($Player, "rotation_degrees", 360 * 3, 1.5)
	await fall_tween.finished
	#上面4行的掉落动画是抄来的,也就是所谓的面向CtrlCV编程.....
	get_tree().reload_current_scene()
func _process(delta):
	spawn_timer.wait_time-=0.2*delta
	spawn_timer.wait_time=clamp(spawn_timer.wait_time,1,3)
	_Score.text="Score:"+str(Score)
func _spawn():
	var slime_node = Slime_Scene.instantiate()
	add_child(slime_node)
	slime_node.position =Vector2(randf_range(100,340),randf_range(54,110))
	await get_tree().create_timer(2).timeout
	get_tree().current_scene.add_child(slime_node)
#开发方法:先做单个模板,放上去debug,然后通过PackedScene.instantiate()实例化
func Game_Over():
	game_over_label.show()
