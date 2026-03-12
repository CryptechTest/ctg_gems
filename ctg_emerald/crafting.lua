core.register_craft({
    output = "ctg_emerald:emerald_shard 9",
    recipe = {
        {"ctg_emerald:emerald"},
    },
})

core.register_craft({
    output = "ctg_emerald:emerald",
    recipe = {
        {"ctg_emerald:emerald_shard", "ctg_emerald:emerald_shard", "ctg_emerald:emerald_shard"},
        {"ctg_emerald:emerald_shard", "ctg_emerald:emerald_shard", "ctg_emerald:emerald_shard"},
        {"ctg_emerald:emerald_shard", "ctg_emerald:emerald_shard", "ctg_emerald:emerald_shard"},
    },
})

--[[if core.get_modpath("technic") and core.get_modpath("basic_materials") then
    technic.register_alloy_recipe({
        input = {"ctg_emerald:emerald 2", "basic_materials:silicon"},
        output = "ctg_emerald:crystalline_glass 4",
        time = 27
    })
end]]

core.register_craft({
    output = "ctg_emerald:emerald_block",
    recipe = {
        {"ctg_emerald:emerald", "ctg_emerald:emerald_shard", "ctg_emerald:emerald"},
        {"ctg_emerald:emerald_shard", "ctg_emerald:emerald", "ctg_emerald:emerald_shard"},
        {"ctg_emerald:emerald", "ctg_emerald:emerald_shard", "ctg_emerald:emerald"},
    },
})

core.register_craft({
    output = "ctg_emerald:emerald_brick 4",
    recipe = {
        {"", "ctg_emerald:emerald_block", "ctg_emerald:emerald_block"},
        {"", "ctg_emerald:emerald_block", "ctg_emerald:emerald_block"},
        {"", "", ""},
    },
})