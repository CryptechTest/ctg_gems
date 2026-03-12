core.register_node("ctg_emerald:emerald", {
    description = "Emerald Block",
    tiles = {"emerald_block.png"},
    groups = {cracky = 3, level = 3, gemstone = 1},
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("ctg_emerald:emerald_budding", {
    description = "Budding Emerald Block",
    tiles = {"emerald_block.png^[combine:16x80:0,-48=crack_anylength.png"},
    groups = {cracky = 3, level = 2, gemstone = 2},
    drop = "ctg_emerald:emerald",
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("ctg_emerald:emerald_block", {
    description = "Emerald Crystal Block",
    tiles = {"emerald_crystal_block.png"},
    groups = {cracky = 3, level = 2, crystal_block = 1, gemstone = 1},
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("ctg_emerald:emerald_brick", {
    description = "Emerald Crystal Brick",
    tiles = {"emerald_crystal_brick.png"},
    groups = {cracky = 3, level = 2, gemstone = 1},
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("ctg_emerald:cluster_small", {
    description = "Small Emerald Cluster",
    tiles = {"emerald_cluster_small.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 4,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-4/16, -7/16, -4/16, 4/16, -3/16, 4/16},
    },
    groups = {cracky = 3, not_in_creative_inventory = 1, gemstone = 1},
    drop = {
        max_items = 1,
        items = {
            items = {"ctg_emerald:emerald_shard"},
            rarity = 6,
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("ctg_emerald:cluster_medium", {
    description = "Medium Emerald Cluster",
    tiles = {"emerald_cluster_medium.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 7,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, -2/16, 5/16},
    },
    groups = {cracky = 3, not_in_creative_inventory = 1, gemstone = 1},
    drop = {
        max_items = 1,
        items = {
            items = {"ctg_emerald:emerald_shard"},
            rarity = 3,
        }
    },
    sounds = default.node_sound_glass_defaults(),
})

core.register_node("ctg_emerald:cluster_large", {
    description = "Large Emerald Cluster",
    tiles = {"emerald_cluster_large.png"},
    drawtype = "plantlike",
    sunlight_propagates = true,
    light_source = 10,
    paramtype = "light",
    paramtype2 = "wallmounted",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-5/16, -8/16, -5/16, 5/16, 4/16, 5/16},
    },
    groups = {cracky = 3, gemstone = 1},
    drop = "ctg_emerald:emerald_shard",
    sounds = default.node_sound_glass_defaults(),
})

--[[core.register_node("ctg_emerald:crystalline_glass", {
    description = "Emerald Crystalline Glass",
    drawtype = "glasslike_framed_optional",
    tiles = {{name = "emerald_glass.png", backface_culling = false}, {name = "emerald_glass_detail.png", backface_culling = false}},
    use_texture_alpha = "blend",
    paramtype = "light",
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {cracky = 2, level = 3},
    sounds = default.node_sound_glass_defaults(),
})]]

core.register_craftitem("ctg_emerald:emerald_shard", {
    description = "Emerald Shard",
    inventory_image = "emerald_shard.png",
})

if core.get_modpath("mesecons_mvps") then
    mesecon.register_mvps_stopper("ctg_emerald:emerald_budding")
end

if core.get_modpath("stairs") then
    stairs.register_stair_and_slab("emerald_block", "ctg_emerald:emerald_block",
    {cracky = 2, level = 2, gemstone = 1},
    {"emerald_crystal_block.png"},
    "Crystalline Emerald Stair",
    "Crystalline Emerald Slab",
    default.node_sound_stone_defaults())
end