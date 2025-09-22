--local functions
local function config(name)
    return settings.startup['fi_materials_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/fission/fi_materials/fi_materials_'..name
end

--item
data:extend({
    {
        name = 'fi_industrial_steel_item',
        type = 'item',
        icon = sprite('industrial_steel_item.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_b',
        order = 'a-b',
        weight = 2.5 * kg
    },
    {
        name = 'fi_industrial_steel_blend_item',
        type = 'item',
        icon = sprite('industrial_steel_blend_item.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 10 * kg
    },
    {
        name = 'fi_materials_natural_fiber',
        type = 'item',
        icon = sprite('natural_fiber.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_glass_fiber',
        type = 'item',
        icon = sprite('glass_fiber.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_glass',
        type = 'item',
        icon = sprite('glass.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2.5 * kg
    },
    {
        name = 'fi_materials_flourite',
        type = 'item',
        icon = sprite('flourite.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_pure_gold',
        type = 'item',
        icon = sprite('pure_gold.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 4 * kg
    },
    {
        name = 'fi_materials_pure_titan',
        type = 'item',
        icon = sprite('pure_titan.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 4 * kg
    },
    {
        name = 'fi_materials_pure_neodym',
        type = 'item',
        icon = sprite('pure_neodym.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 4 * kg
    },
    {
        name = 'fi_materials_gold',
        type = 'item',
        icon = sprite('gold.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_neodym',
        type = 'item',
        icon = sprite('neodym.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_titan',
        type = 'item',
        icon = sprite('titan.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'a-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_NFK',
        type = 'item',
        icon = sprite('NFK.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_b',
        order = 'a-a',
        weight = 2.5 * kg
    },
    {
        name = 'fi_materials_GFK',
        type = 'item',
        icon = sprite('GFK.png'),
        icon_size = 64,
        stack_size = 50,
        subgroup = 'fi_item_subgroup_b',
        order = 'a-a',
        weight = 2.5* kg
    },
    {
        name = 'fi_materials_waste',
        type = 'item',
        icon = sprite('waste.png'),
        icon_size = 64,
        stack_size = 1,
        subgroup = 'fi_item_subgroup_a',
        order = 'f-a',
        weight = 500 * kg
    },
    {
        name = 'fi_materials_solution',
        type = 'item',
        icon = sprite('waste.png'),
        icon_size = 64,
        stack_size = 1,
        subgroup = 'fi_item_subgroup_a-c',
        order = 'f-a',
        weight = 500 * kg
    },
    {
        name = 'fi_materials_empty_solution',
        type = 'item',
        icon = sprite('empty_solution.png'),
        icon_size = 64,
        stack_size = 20,
        subgroup = 'fi_item_subgroup_b',
        order = 'f-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_solution',
        type = 'item',
        icon = sprite('solution.png'),
        icon_size = 64,
        stack_size = 20,
        subgroup = 'fi_item_subgroup_b',
        order = 'f-b',
        weight = 4 * kg
    },
    {
        name = 'fi_materials_rich_powder',
        type = 'item',
        icon = sprite('rich_powder.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_a-b',
        order = 'b-a',
        weight = 2 * kg
    },
    {
        name = 'fi_materials_rich_solution',
        type = 'item',
        icon = sprite('rich_solution.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_b',
        order = 'f-b',
        weight = 4 * kg
    },
    {
        name = 'fi_materials_dirty_solution',
        type = 'item',
        icon = sprite('dirty_solution.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_b',
        order = 'f-b',
        weight = 4 * kg
    },
    {
        name = 'fi_materials_upgrade',
        type = 'item',
        icon = sprite('upgrade.png'),
        icon_size = 64,
        stack_size = 20,
        subgroup = 'fi_item_subgroup_j',
        order = 'b-a',
        weight = 250 * kg
    },

})
