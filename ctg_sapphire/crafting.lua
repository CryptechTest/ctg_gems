core.register_craft({
    output = "ctg_sapphire:sapphire_shard 9",
    recipe = {
        {"ctg_sapphire:sapphire"},
    },
})

core.register_craft({
    output = "ctg_sapphire:sapphire",
    recipe = {
        {"ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire_shard"},
        {"ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire_shard"},
        {"ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire_shard"},
    },
})

--[[if core.get_modpath("technic") and core.get_modpath("basic_materials") then
    technic.register_alloy_recipe({
        input = {"ctg_sapphire:sapphire 2", "basic_materials:silicon"},
        output = "ctg_sapphire:crystalline_glass 4",
        time = 27
    })
end]]

core.register_craft({
    output = "ctg_sapphire:sapphire_block",
    recipe = {
        {"ctg_sapphire:sapphire", "ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire"},
        {"ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire", "ctg_sapphire:sapphire_shard"},
        {"ctg_sapphire:sapphire", "ctg_sapphire:sapphire_shard", "ctg_sapphire:sapphire"},
    },
})

core.register_craft({
    output = "ctg_sapphire:sapphire_brick 4",
    recipe = {
        {"", "ctg_sapphire:sapphire_block", "ctg_sapphire:sapphire_block"},
        {"", "ctg_sapphire:sapphire_block", "ctg_sapphire:sapphire_block"},
        {"", "", ""},
    },
})

-- crystal armor
if core.get_modpath("3d_armor") then
    local s = "crystal"
	local m = "ctg_sapphire:sapphire_block"
	minetest.register_craft({
		output = "3d_armor:helmet_"..s,
		recipe = {
			{m, m, m},
			{m, "", m},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..s,
		recipe = {
			{m, "", m},
			{m, m, m},
			{m, m, m},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..s,
		recipe = {
			{m, m, m},
			{m, "", m},
			{m, "", m},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..s,
		recipe = {
			{m, "", m},
			{m, "", m},
		},
	})
end

if core.get_modpath('shields') then
    local k = "crystal"
	local v = "ctg_sapphire:sapphire_block"
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end