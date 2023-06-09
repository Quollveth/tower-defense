extends "res://Scenes/actors/turrets/gun_turrets.gd"

func _ready():
	super()
	_projectile_scene = preload("res://Scenes/actors/turrets/bullet_bg.tscn")

func shoot(muzzle):
	var projectile = _projectile_scene.instantiate()
	projectile.transform = muzzle.global_transform	
	projectile.damage = damage
	projectile.pierce = pierce
	projectile.speed = 1200
	add_child(projectile)
