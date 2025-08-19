--local functions
local function config(name)
    return settings.startup['el_lithium_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/electronic/el_lithium/el_lithium_'..name
end
--ore
data:extend({
    {
        name = 'el_lithium_ore_item',
        type = 'item',
        icon = sprite('ore_item.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'el_item_subgroup_a',
        order = 'a-b',
        weight = 2 * kg
    },

})
--item
data:extend({
    {
        name = 'el_lithium_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'el_item_subgroup_a',
        order = 'b-b',
        weight = 1 * kg
    },

})
--battery
data:extend({
    {
        name = 'el_lithium_battery',
        type = 'item',
        icon = sprite('battery.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'el_item_subgroup_b',
        order = 'a-a',
        weight = 4 * kg
    },

})