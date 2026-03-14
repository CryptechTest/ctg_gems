ctg_ruby = {}

local modpath = core.get_modpath("ctg_ruby")

dofile(modpath.."/nodes.lua")
dofile(modpath.."/crafting.lua")
dofile(modpath.."/budding.lua")

geodes_lib:register_geode({
    id = 'ruby_marble',
    wherein = "technic:marble",
    y_min = -11000,
    y_max = -5000,
    scarcity = 40,
    generation_chance = 100,
    inner = "ctg_ruby:ruby",
    inners = {{ name = "ctg_ruby:ruby", fill = 90 }, { name = "amethyst_new:calcite", fill = 10 }},
    inner_alt = "ctg_ruby:ruby_budding",
    inner_alt_chance = 50,
    shell = {"technic:marble", "amethyst_new:basalt", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 30, span = 30 },
    radius_min = 2,
    radius_max = 7,
})

geodes_lib:register_geode({
    id = 'ruby_stone',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -6000,
    scarcity = 100,
    generation_chance = 25,
    inner = "ctg_ruby:ruby",
    inners = {{ name = "ctg_ruby:ruby", fill = 100 }, { name = "amethyst_new:calcite", fill = 2 }},
    inner_alt = "ctg_ruby:ruby_budding",
    inner_alt_chance = 50,
    shell = {"technic:marble", "amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 30, span = 30 },
    radius_min = 3,
    radius_max = 10,
})

--[[
geodes_lib:register_geode({
    id = 'ruby_1',
    wherein = "default:stone",
    y_min = -3000,
    y_max = -128,
    scarcity = 88,
    generation_chance = 5,
    inner = "ctg_ruby:ruby",
    inners = {{ name = "ctg_ruby:ruby", fill = 70 }, { name = "amethyst_new:calcite", fill = 30 }},
    inner_alt = "ctg_ruby:ruby_budding",
    inner_alt_chance = 100,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    radius_min = 2,
    radius_max = 7,
})

geodes_lib:register_geode({
    id = 'ruby_water',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -3000,
    scarcity = 72,
    generation_chance = 20,
    inner = "ctg_ruby:ruby",
    inner_alt = "ctg_ruby:ruby_budding",
    inner_alt_chance = 60,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 35, span = 30 },
    radius_min = 3,
    radius_max = 10,
})

geodes_lib:register_geode({
    id = 'ruby_3',
    wherein = "default:stone",
    y_min = -10000,
    y_max = -6000,
    scarcity = 77,
    generation_chance = 30,
    inner = "ctg_ruby:ruby",
    inners = {{ name = "ctg_ruby:ruby", fill = 80 }, { name = "ctg_quartz:quartz", fill = 20 }, { name = "amethyst_new:calcite", fill = 10 }},
    inner_alt = "ctg_ruby:ruby_budding",
    inner_alt_chance = 40,
    shell = {"amethyst_new:basalt", "amethyst_new:basalt", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 20, span = 20 },
    radius_min = 3,
    radius_max = 11,
})]]

geodes_lib:register_geode({
    id = 'ruby_water',
    wherein = "ctg_world:corestone",
    y_min = -11000,
    y_max = -10000,
    scarcity = 70,
    generation_chance = 20,
    inner = "ctg_ruby:ruby",
    inner_alt = "ctg_ruby:ruby_budding",
    inner_alt_chance = 110,
    shell = {"amethyst_new:basalt", "amethyst_new:calcite", "amethyst_new:calcite"},
    cavity = { lower_fill = "default:river_water_source", upper_fill = "air", threshold = 40, span = 35 },
    radius_min = 3,
    radius_max = 11,
})
