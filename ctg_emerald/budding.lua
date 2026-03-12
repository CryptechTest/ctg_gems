local all_directions = {
    vector.new(1, 0, 0),
    vector.new(0, 1, 0),
    vector.new(0, 0, 1),
    vector.new(-1, 0, 0),
    vector.new(0, -1, 0),
    vector.new(0, 0, -1),
}

core.register_abm({
    label = "emerald cluster growth",
    nodenames = "ctg_emerald:emerald_budding",
    interval = 220,
    chance = 1,
    action = function(pos)
        local check_pos = vector.add(all_directions[math.random(1, #all_directions)], pos)
        local check_node = core.get_node(check_pos)
        local check_node_name = check_node.name
        local param2 = core.dir_to_wallmounted(vector.subtract(pos, check_pos))
        local new_node
        if check_node_name == "air" then
            new_node = "ctg_emerald:cluster_small"
        else if check_node_name == "ctg_emerald:cluster_small" then
            new_node = "ctg_emerald:cluster_medium"
        else if check_node_name == "ctg_emerald:cluster_medium" then
            new_node = "ctg_emerald:cluster_large"
        else return end
        end
        end
        core.swap_node(check_pos, {name = new_node, param2 = param2})
    end,
})
