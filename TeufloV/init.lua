

-- Ore generation

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "teuflo:best_node",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 31000,
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "teuflo:best_node",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


minetest.register_node("teuflo:best_node", {
	description = ("Best_Node"),
	tiles = {"teuflo_best_node.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("teuflo:worst_node", {
	description = ("Worst_Node"),
	tiles = {"teuflo_worst_node.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "teuflo:worst_node",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 31000,
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "teuflo:worst_node",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


minetest.register_craft({
	output = "teuflo:noice_node 16",
	recipe = {
		{"teuflo:best_node", "teuflo:best_node", ""},
		{"teuflo:worst_node", "teuflo:worst_node", ""},
		{"", "", ""}
	}
})

minetest.register_node("teuflo:noice_node", {
	description = ("Noice_Node"),
	tiles = {"teuflo_noice_node.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

--tools

minetest.register_tool("teuflo:tool", {
	description = ("Noice Tool"),
	inventory_image = "teuflo_tool.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
	output = "teuflo:tool",
	recipe = {
		{"teuflo:best_node 5", "teuflo:best_node 5", ""},
		{"teuflo:worst_node 5", "teuflo:worst_node 5", ""},
		{"teuflo:noice_node 5", "teuflo:noice_node 5", ""}
	}
})

