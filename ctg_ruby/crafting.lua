core.register_craft({
    output = "ctg_ruby:ruby_shard 9",
    recipe = {
        {"ctg_ruby:ruby"},
    },
})

core.register_craft({
    output = "ctg_ruby:ruby",
    recipe = {
        {"ctg_ruby:ruby_shard", "ctg_ruby:ruby_shard", "ctg_ruby:ruby_shard"},
        {"ctg_ruby:ruby_shard", "ctg_ruby:ruby_shard", "ctg_ruby:ruby_shard"},
        {"ctg_ruby:ruby_shard", "ctg_ruby:ruby_shard", "ctg_ruby:ruby_shard"},
    },
})

--[[if core.get_modpath("technic") and core.get_modpath("basic_materials") then
    technic.register_alloy_recipe({
        input = {"ctg_ruby:ruby 2", "basic_materials:silicon"},
        output = "ctg_ruby:crystalline_glass 4",
        time = 27
    })
end]]

core.register_craft({
    output = "ctg_ruby:ruby_block",
    recipe = {
        {"ctg_ruby:ruby", "ctg_ruby:ruby_shard", "ctg_ruby:ruby"},
        {"ctg_ruby:ruby_shard", "ctg_ruby:ruby", "ctg_ruby:ruby_shard"},
        {"ctg_ruby:ruby", "ctg_ruby:ruby_shard", "ctg_ruby:ruby"},
    },
})

core.register_craft({
    output = "ctg_ruby:ruby_brick 4",
    recipe = {
        {"", "ctg_ruby:ruby_block", "ctg_ruby:ruby_block"},
        {"", "ctg_ruby:ruby_block", "ctg_ruby:ruby_block"},
        {"", "", ""},
    },
})