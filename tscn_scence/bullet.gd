extends Area2D
@export var Bullet_Speed:float=160.00
#@export var Amplitude:float=20.00
#@export var Frequency:float=2.00
#@onready var tween=create_tween().set_loops()
#@export var time:float=0.00
#@export var spiral_angle:=0.00
#var _Visual_basic:=GPUParticles2D.new()
func _ready():
	await  get_tree().create_timer(3).timeout
	queue_free()
	#var particle_material=ParticleProcessMaterial.new()
	#particle_material.emission_shape=ParticleProcessMaterial.EMISSION_SHAPE_SPHERE
	#particle_material.emission_sphere_radius=10.0
	#particle_material.set_param_min(ParticleProcessMaterial.PARAM_INITIAL_LINEAR_VELOCITY,Bullet_Speed*0.3)
	#particle_material.set_param_max(ParticleProcessMaterial.PARAM_INITIAL_LINEAR_VELOCITY,Bullet_Speed*0.7)
	#particle_material.direction=Vector3(1, 0, 0).normalized()
	#particle_material.flatness=1.0 
	#particle_material.color_ramp=_create_gradient()
	#_Visual_basic.process_material=particle_material
	#_Visual_basic.process_material=particle_material
	#_Visual_basic.amount=32
	#add_child(_Visual_basic)
	#tween.set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
	#tween.tween_property(self,"position:y",position.y+30,0.3)
	#tween.tween_property(self,"position:y",position.y-30,0.3)
	#tween.parallel().tween_property(_Visual_basic.process_material,"scale",0.5,0.5)
	#tween.parallel().tween_property(_Visual_basic.process_material,"scale",1.0,0.5)
func _physics_process(delta: float):
	position+=Vector2(Bullet_Speed,0)*delta
	#time+=delta
	#spiral_angle+=3.00*delta
	#var _move=Vector2(Bullet_Speed,0)*delta
	#var _wave=Vector2(0,sin(time*Frequency)*Amplitude)*delta
	#_Visual_basic.process_material.initial_velocity=Bullet_Speed*0.5
	#_Visual_basic.position=position
	#position+=_move+_wave
#func _create_gradient()->Gradient:
	#var gradient=Gradient.new()
	#gradient.add_point(0.0,Color(1,0,0))
	#gradient.add_point(0.5,Color(1,1,0))
	#gradient.add_point(1.0,Color(0,1,1)) 
	#return gradient
