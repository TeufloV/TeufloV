
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:iron_ore",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 12,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:iron_ore",
		wherein        = "default:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -100,
		y_min          = -31000,
	})
	--Zinc

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:zinc_ore",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 12,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:zinc_ore",
		wherein        = "default:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -100,
		y_min          = -31000,

	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:copper_ore",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:copper_ore",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})


	-- Tin

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:tin_ore",
		wherein        = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})



	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:gold_ore",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -200,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:gold_ore",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -300,
		y_min          = -31000,
	})


	-- Mese crystal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:mese_ore",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -200,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:mese_ore",
		wherein        = "default:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -300,
		y_min          = -31000,
	})


	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tho:diamond_ore",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -400,
		y_min          = -31000,
	})




--nodes

minetest.register_node("tho:iron_ore", {
	description = ("Iron Ore"),
	tiles = {"default_stone.png^default_mineral_iron.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tho:zinc_ore", {
	description = ("Zinc Ore"),
	tiles = {"default_stone.png^tho_mineral_zinc.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tho:copper_ore", {
	description = ("Copper Ore"),
	tiles = {"default_stone.png^default_mineral_copper.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tho:tin_ore", {
	description = ("Tin Ore"),
	tiles = {"default_stone.png^default_mineral_tin.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tho:gold_ore", {
	description = ("Gold Ore"),
	tiles = {"default_stone.png^default_mineral_gold.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tho:mese_ore", {
	description = ("Mese Ore"),
	tiles = {"default_stone.png^default_mineral_mese.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tho:diamond_ore", {
	description = ("Diamond Ore"),
	tiles = {"default_stone.png^default_mineral_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

--cooking
minetest.register_craft({
	type = "cooking",
	recipe = "tho:iron_ore",
	output = "default:iron_lump",
})
minetest.register_craft({
	type = "cooking",
	recipe = "tho:zinc_ore",
	output = "tho:zinc_lump",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tho:copper_ore",
	output = "default:copper_lump",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tho:tin_ore",
	output = "default:tin_lump",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tho:gold_ore",
	output = "default:gold_lump",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tho:mese_ore",
	output = "default:mese_crystal",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tho:diamond_ore",
	output = "default:diamond",
})
--zinc
minetest.register_craftitem('tho:zinc_lump', {
	description = 'Zinc Lump',
	inventory_image = 'tho_zinc_lump.png'
})

minetest.register_craftitem('tho:zinc_ingot', {
	description = 'Zinc Ingot',
	inventory_image = 'tho_zinc_ingot.png'
})
minetest.register_craft({
	type = "cooking",
	recipe = "tho:zinc_lump",
	output = "tho:zinc_ingot",
})
minetest.register_node("tho:zinc_block", {
	description = ("Zinc Block"),
	tiles = {"tho_zinc_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'tho:zinc_block',
	recipe = {
		{'tho:zinc_ingot', 'tho:zinc_ingot', 'tho:zinc_ingot'},
		{'tho:zinc_ingot', 'tho:zinc_ingot', 'tho:zinc_ingot'},
		{'tho:zinc_ingot', 'tho:zinc_ingot', 'tho:zinc_ingot'}
	}
})
--zinc tools
minetest.register_tool("tho:pick_zinc", {
	description = ("Zinc Pickaxe"),
	inventory_image = "tho_tool_zincpick.png",
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
minetest.register_tool("tho:shovel_zinc", {
	description = ("Zinc Shovel"),
	inventory_image = "tho_tool_zincshovel.png",
	wield_image = "tho_tool_zincshovel.png^[transformR90",
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
minetest.register_tool("tho:axe_zinc", {
	description = ("Zinc Axe"),
	inventory_image = "tho_tool_zincaxe.png",
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
minetest.register_tool("tho:sword_zinc", {
	description = ("Zinc Sword"),
	inventory_image = "tho_tool_zincsword.png",
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
	output = 'tho:pick_zinc',
	recipe = {
		{'tho:zinc_ingot', 'tho:zinc_ingot', 'tho:zinc_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
})
minetest.register_craft({
	output = 'tho:shovel_zinc',
	recipe = {
		{'', 'tho:zinc_ingot', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
})
minetest.register_craft({
	output = 'tho:axe_zinc',
	recipe = {
		{'tho:zinc_ingot', 'tho:zinc_ingot', ''},
		{'tho:zinc_ingot', 'group:stick', ''},
		{'', 'group:stick', ''}
	}
})
minetest.register_craft({
	output = 'tho:sword_zinc',
	recipe = {
		{'', 'tho:zinc_ingot', ''},
		{'', 'tho:zinc_ingot', ''},
		{'', 'group:stick', ''}
	}
})


