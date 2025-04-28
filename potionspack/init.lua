potions.register_potion("Anti Gravity", "purple", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(nil, 1.5, 0.5)
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(nil,1,1)
end)

potions.register_potion("Anti Gravity II", "pink", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(3, nil, 0.1)
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(1,nil,1)
end)

potions.register_potion("Speed", "lightgrey", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(3, 1, 1)
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(1,nil,nil)
end)

potions.register_potion("Speed II", "cyan", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(5, 1, 1)
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(1,nil,nil)
end)

potions.register_potion("Inversion", "dull", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(1, -1, -0.2)
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(1,1,1)
end)

potions.register_potion("Confusion", "dull", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(-1, nil, nil)
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(1,1,1)
end)

potions.register_potion("What will this do", "white", 60,
function(itemstack, user, pointed_thing) 
	user:set_physics_override(math.random(1, 20), math.random(1, 20), math.random(-4, 2))
end,

function(itemstack, user, pointed_thing)
	user:set_physics_override(1,1,1)
end)

potions.register_potion("Health I", "red", 1,
function(itemstack, user, pointed_thing) 
	user:set_hp(user:get_hp()+6)
end,

function(itemstack, user, pointed_thing)
	return true;
end)

potions.register_potion("Health II", "darkred", 1,
function(itemstack, user, pointed_thing) 
	user:set_hp(user:get_hp()+10)
end,

function(itemstack, user, pointed_thing)
	return true;
end)

potions.register_potion("Harming I", "green", 1,
function(itemstack, user, pointed_thing) 
	user:set_hp(user:get_hp()-6)
end,

function(itemstack, user, pointed_thing)
	return true;
end)

potions.register_potion("Harming II", "darkgreen", 1,
function(itemstack, user, pointed_thing) 
	user:set_hp(user:get_hp()-10)
end,

function(itemstack, user, pointed_thing)
	return true;
end)



minetest.register_craft({
	output = "potions:glass_bottle",
	recipe = {
		{'default:glass', 'default:wood', 'default:glass'},
		{'default:glass', '', 'default:glass'},
		{'', 'default:glass', ''},
	}
})

minetest.register_craft({
	output = "potionspack:antigravity",
	recipe = {
		{'farming:seed_cotton', 'default:sapling', 'farming:seed_cotton'},
		{'default:leaves', 'potions:glass_bottle', 'default:leaves'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = "potionspack:antigravityii",
	recipe = {
		{'farming:seed_cotton', 'default:sapling', 'farming:seed_cotton'},
		{'farming:seed_cotton', 'default:sapling', 'farming:seed_cotton'},
		{'default:leaves', 'potions:glass_bottle', 'default:leaves'},
	}
})

minetest.register_craft({
	output = "potionspack:speed",
	recipe = {
		{'farming:weed', 'farming:weed', 'farming:weed'},
		{'default:leaves', 'default:leaves', 'default:leaves'},
		{'', 'potions:glass_bottle', ''},
	}
})

minetest.register_craft({
	output = "potionspack:speedii",
	recipe = {
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		{'default:leaves', 'default:leaves', 'default:leaves'},
		{'', 'potions:glass_bottle', ''},
	}
})



