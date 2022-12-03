	--tictac

	minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tictac:tictac_ore",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = 31000,
	height_max     = -31000,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tictac:tictac_ore",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})





--nodes

minetest.register_node("tictac:tictac_ore", {
	description = ("Tic Tac Ore"),
	tiles = {"default_stone.png^tictac_mineral_tictac.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tictac:lol", {
	description = ("Stone with Copper"),
	tiles = {"default_stone.png^default_mineral_copper.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})


--cooking
minetest.register_craft({
	type = "cooking",
	recipe = "tictac:tictac_ore",
	output = "tictac:tictac",
})
--tictac
minetest.register_craftitem('tictac:tictac', {
	description = 'Tic Tac',
	inventory_image = 'tictac_tictac.png'
})

minetest.register_node("tictac:tictac_block", {
	description = ("Tic Tac Block"),
	tiles = {"tictac_tictac_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'tictac:tictac_block',
	recipe = {
		{'tictac:tictac', 'tictac:tictac', 'tictac:tictac'},
		{'tictac:tictac', 'tictac:tictac', 'tictac:tictac'},
		{'tictac:tictac', 'tictac:tictac', 'tictac:tictac'}
	}
})
--tictac tools
minetest.register_tool("tictac:pick_tictac", {
	description = ("Tic Tac Pickaxe"),
	inventory_image = "tictac_tool_tictacpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.70}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
minetest.register_tool("tictac:shovel_tictac", {
	description = ("Tic Tac Shovel"),
	inventory_image = "tictac_tool_tictacshovel.png",
	wield_image = "tictac_tool_tictacshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.70, [3]=0.30}, uses=35, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})
minetest.register_tool("tictac:axe_tictac", {
	description = ("Tic Tac Axe"),
	inventory_image = "tictac_tool_tictacaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.40, [2]=1.30, [3]=0.80}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})
minetest.register_tool("tictac:sword_tictac", {
	description = ("Tic Tac Sword"),
	inventory_image = "tictac_tool_tictacsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.3, [2]=1.10, [3]=0.30}, uses=35, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})
minetest.register_craft({
	output = 'tictac:pick_tictac',
	recipe = {
		{'tictac:tictac', 'tictac:tictac', 'tictac:tictac'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
})
minetest.register_craft({
	output = 'tictac:shovel_tictac',
	recipe = {
		{'', 'tictac:tictac', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
})
minetest.register_craft({
	output = 'tictac:axe_tictac',
	recipe = {
		{'tictac:tictac', 'tictac:tictac', ''},
		{'tictac:tictac', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
})
minetest.register_craft({
	output = 'tictac:sword_tictac',
	recipe = {
		{'', 'tictac:tictac', ''},
		{'', 'tictac:tictac', ''},
		{'', 'group:stick', ''}
	}
})


