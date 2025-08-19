--local functions
local function config(name)
    return settings.startup['el_solar_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/'..name
end

data:extend({
    --crafter
    {
        name = 'fi_crafter_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_crafter_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'concrete', amount = 30},
            {type = 'item', name = 'fi_materials_GFK', amount = 20},
            {type = 'item', name = 'iron-gear-wheel', amount = 20},
            {type = 'item', name = 'electronic-circuit', amount = 15},
            {type = 'item', name = 'el_energy_crystal_item', amount = 4},
        },
        results = {
            {type = 'item', name = 'fi_crafter_item', amount = 1},
        },
        energy_required = 4,
    },
    {
        name = 'fi_castor_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_castor_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'concrete', amount = 50},
            {type = 'item', name = 'fi_materials_GFK', amount = 40},
            {type = 'item', name = 'el_tank_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_castor_item', amount = 1},
        },
        energy_required = 4,
    },
    --crusher
    {
        name = 'fi_crusher_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_crusher_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'concrete', amount = 60},
            {type = 'item', name = 'el_materials_ALK', amount = 20},
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'engine-unit', amount = 15},
            {type = 'item', name = 'el_energy_crystal_item', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_crusher_item', amount = 1},
        },
        energy_required = 4,
    },
    --miner
    {
    name = 'fi_miner_recipe',
    type = 'recipe',
        localised_name = {"item-name.fi_miner_item"},
    enabled = false,
    ingredients = {
            {type = 'item', name = 'concrete', amount = 100},
            {type = 'item', name = 'fi_compound_material_item', amount = 60},
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'electric-mining-drill', amount = 8},
            {type = 'item', name = 'engine-unit', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_miner_item', amount = 1},
        },
        energy_required = 4,
    },
    --fuels
    {
        name = 'fi_basic_fuel_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_basic_fuel_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'uranium-235', amount = 1},
            {type = 'item', name = 'uranium-238', amount = 19},
            {type = 'item', name = 'el_materials_ALK', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_basic_fuel_item', amount = 8},
        },
        energy_required = 20,
    },
    {
        name = 'fi_basic_thorium_fuel_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_basic_thorium_fuel_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_thorium232_item', amount = 10},
            {type = 'item', name = 'uranium-238', amount = 10},
            {type = 'item', name = 'el_materials_ALK', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_basic_thorium_fuel_item', amount = 8},
        },
        energy_required = 20,
    },
    {
        name = 'fi_advanced_fuel_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_advanced_fuel_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_plutonium239_item', amount = 1},
            {type = 'item', name = 'uranium-238', amount = 19},
            {type = 'item', name = 'el_materials_ALK', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_advanced_fuel_item', amount = 2},
        },
        energy_required = 20,
    },
    {
        name = 'fi_advanced_thorium_fuel_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_advanced_thorium_fuel_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_uranium233_item', amount = 4},
            {type = 'item', name = 'uranium-238', amount = 16},
            {type = 'item', name = 'el_materials_ALK', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_advanced_thorium_fuel_item', amount = 2},
        },
        energy_required = 20,
    },
    {
        name = 'fi_pure_fuel_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_pure_fuel_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'uranium-235', amount = 1},
            {type = 'item', name = 'fi_plutonium239_item', amount = 1},
            {type = 'item', name = 'el_materials_ALK', amount = 10},
        },
        results = {
            {type = 'item', name = 'fi_pure_fuel_item', amount = 1},
        },
        energy_required = 20,
    },
    --reactor
    {
        name = 'fi_solid_reactor_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_solid_reactor_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'steel-plate', amount = 450},
            {type = 'item', name = 'concrete', amount = 400},
            {type = 'item', name = 'fi_materials_GFK', amount = 300},
            {type = 'item', name = 'fi_materials_NFK', amount = 300},
            {type = 'item', name = 'fi_energy_crystal_item', amount = 40},
            {type = 'item', name = 'advanced-circuit', amount = 500},
        },
        results = {
            {type = 'item', name = 'fi_solid_reactor_item', amount = 1},
        },
        energy_required = 20,
    },
    --material
    {
        name = 'fi_compound_material_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_compound_material_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'el_aluminum_item', amount = 15},
            {type = 'item', name = 'steel-plate', amount = 10},
            {type = 'item', name = 'iron-plate', amount = 20},
        },
        results = {
            {type = 'item', name = 'fi_compound_material_item', amount = 2},
        },
        energy_required = 4,
    },
    {
        name = 'fi_low-density-structure_recipe',
        type = 'recipe',
        localised_name = {"item-name.low-density-structure"},
        enabled = false,
        category = 'fi_crafting_category',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_materials_glass_fiber', amount = 3},
            {type = 'item', name = 'el_materials_ALK', amount = 3},
            {type = 'item', name = 'copper-plate', amount = 30},
        },
        results = {
            {type = 'item', name = 'low-density-structure', amount = 4},
        },
        energy_required = 20,
    },

    --uran etc
    {
        name = 'fi_plutonium239_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_plutonium239_item"},
        enabled = false,
        category = 'centrifuging',
        main_product = 'fi_plutonium239_item',
        ingredients = {
            {type = "item", name = 'fi_used_basic_fuel_item', amount = 6},
            {type = "item", name = "fi_materials_solution", amount = 1},
        },
        results = {
            {type = "item", name = 'fi_plutonium239_item', amount = 1},
            {type = "item", name = 'fi_materials_waste', amount = 1},
            {type="item", name = "fi_materials_empty_solution", amount = 1, probability = 0.95},
        },
        energy_required = 20,
    },
    {
        name = 'fi_thorium232_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_thorium232_item"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_thorium232_item',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = 'stone', amount = 80},
            {type = "item", name = 'el_energy_crystal_item', amount = 2},
            {type = "fluid", name = "sulfuric-acid", amount = 140},
        },
        results = {
            {type = "item", name = 'fi_thorium232_item', amount = 2},
            {type = "item", name = 'uranium-238', amount = 3}
        },
        energy_required = 40,
    },
    {
        name = 'fi_uranium233_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_uranium233_item"},
        enabled = false,
        category = 'centrifuging',
        main_product = 'fi_uranium233_item',
        ingredients = {
            {type = "item", name = 'fi_used_basic_thorium_fuel_item',amount = 6},
            {type = "item", name = "fi_materials_solution", amount = 1},
        },
        results = {
            {type = "item", name = 'fi_uranium233_item', amount = 1},
            {type = "item", name = 'fi_materials_waste', amount = 1},
            {type = "item", name = "fi_materials_empty_solution", amount = 1, probability = 0.95},
        },
        energy_required = 20,
    },
    {
        name = 'fi_atomic_bomb_recipe',
        type = 'recipe',
        localised_name = {"item-name.atomic-bomb"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'explosive-rocket', amount = 10},
            {type = 'item', name = 'fi_plutonium239_item', amount = 10},
            {type = 'item', name = 'processing-unit', amount = 10}, --cambiado de rocket-control-unit a processing-unit ya que rocket-control-unit' dejo de existir
        },
        results = {
            {type = 'item', name = 'atomic-bomb', amount = 1},
        },
    energy_required = 20,
},
    --wideraufbereitung
    {
        name = 'fi_advanced_fuel_recycle_recipe',
        type = 'recipe',
        localised_name = {"item-name.uranium-238"},
        enabled = false,
        main_product = 'uranium-238',
        category = 'centrifuging',
        ingredients = {
            {type = "item", name = 'fi_used_advanced_fuel_item', amount = 4},
            {type = "item", name = "fi_materials_solution", amount = 1},
        },
        results = {
            {type = "item", name = 'uranium-238', amount = 1*3},
            {type = "item", name = 'fi_materials_waste', amount = 1*3},
            {type = "item", name = "fi_materials_empty_solution", amount = 1*3, probability = 0.95},
        },
        --result_count = 3, Voy a multiplicar el resultado de cada receta por 3, luego cuando pueda compara el mod actualizado el original vere si la receta es igual o que cambia
        energy_required = 20,
        subgroup = 'fi_item_subgroup_a',
        order = 'a-d',
        always_show_made_in = true,
    },
    {
        name = 'fi_advanced_thorium_fuel_recycle_recipe',
        type = 'recipe',
        localised_name = {"item-name.uranium-238"},
        enabled = false,
        category = 'centrifuging',
        main_product = 'uranium-238',
        ingredients = {
            {type = "item", name = 'fi_used_advanced_thorium_fuel_item', amount = 4},
            {type = "item", name = "fi_materials_solution", amount = 1},
        },
        results = {
            {type = "item", name = 'uranium-238', amount = 1*3},
            {type = "item", name = 'fi_materials_waste', amount = 1*3},
            {type = "item", name = "fi_materials_empty_solution", amount = 1*3, probability = 0.95},
        },
        --result_count = 3, Voy a multiplicar el resultado de cada receta por 3, luego cuando pueda compara el mod actualizado el original vere si la receta es igual o que cambia
        energy_required = 20,
        subgroup = 'fi_item_subgroup_a',
        order = 'a-e',
        always_show_made_in = true,
    },
    {
        name = 'fi_pure_fuel_recycle_recipe',
        type = 'recipe',
        localised_name = {"item-name.uranium-238"},
        enabled = false,
        category = 'centrifuging',
        main_product = 'uranium-238',
        ingredients = {
            {type = "item", name = 'fi_used_pure_fuel_item', amount = 4},
            {type = "item", name = "fi_materials_solution", amount = 1},
        },
        results = {
            {type = "item", name = 'uranium-238', amount = 1*3},
            {type = "item", name = 'fi_materials_waste', amount = 1*3},
            {type="item", name="fi_materials_empty_solution", amount=1*3, probability=0.95},
        },
        --result_count = 3, Voy a multiplicar el resultado de cada receta por 3, luego cuando pueda compara el mod actualizado el original vere si la receta es igual o que cambia
        energy_required = 20,
        subgroup = 'fi_item_subgroup_a',
        order = 'a-f',
        always_show_made_in = true,
    },
    --equip
    
    {
        name = 'fi_equipment_player_reactor_recipe',
        type = 'recipe',
        localised_name = {"equipment-name.fi_equipment_player_reactor_item"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fi_solid_reactor_item', amount = 1},
            {type = 'item', name = 'fi_pure_fuel_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_equipment_player_reactor_item', amount = 6},
        },
        energy_required = 20,
    },
    {
        name = 'fi_equipment_player_shield_recipe',
        type = 'recipe',
        localised_name = {"equipment-name.fi_equipment_player_shield_item"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fi_energy_crystal_item', amount = 20},
            {type = 'item', name = 'low-density-structure', amount = 10},
            {type = 'item', name = 'processing-unit', amount = 10},
            {type = 'item', name = 'energy-shield-mk2-equipment', amount = 5},
        },
        results = {
            {type = 'item', name = 'fi_equipment_player_shield_item', amount = 1},
        },
        energy_required = 20,
    },
    {
        name = 'fi_train_equipment_generator_recipe',
        type = 'recipe',
        localised_name = {"equipment-name.fi_train_equipment_generator_item"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fi_solid_reactor_item', amount = 1},
            {type = 'item', name = 'low-density-structure', amount = 10},
            {type = 'item', name = 'iron-gear-wheel', amount = 20},
            {type = 'item', name = 'fi_pure_fuel_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_train_equipment_generator_item', amount = 6},
        },
        energy_required = 20,
    },
    --crystals
    {
        name = 'fi_energy_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_energy_crystal_item"},
        enabled = false,
        category = 'el_grower_category',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "el_energy_crystal_item", amount = 1},
            {type = "fluid", name = "fi_crystal_fluid", amount = 50},
        },
        results = {
            {type = "item", name = 'fi_energy_crystal_item', amount = 2}
        },
        energy_required = 4,
        always_show_made_in = true,
    },
    {
        name = 'fi_catalyst_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_catalyst_crystal_item"},
        enabled = false,
        category = 'centrifuging',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = 'el_train_fuel_diesel_energized_item', amount = 1},
        },
        results = {
            {type = "item", name = 'fi_catalyst_crystal_item', amount = 2}
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_base_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_base_crystal_item"},
        enabled = false,
        category = 'crafting-with-fluid',
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="fi_crystal_fluid", amount=100},
            {type="item", name="fi_catalyst_crystal_item", amount=1},
        },
         results = {
            {type = 'item', name = 'fi_base_crystal_item', amount = 2},
        },
        energy_required = 6,
    },
    {
        name = 'fi_crushed_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_crystal_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'el_energy_crystal_item', amount = 1},
        },
         results = {
            {type = 'item', name = 'fi_crushed_crystal_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crystal_fluid_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_crystal_fluid"},
        enabled = false,
        category = 'chemistry',
        main_product = 'fi_crystal_fluid',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "fi_crushed_crystal_item", amount = 1},
            {type = "item", name = "fi_crushed_lithium_item", amount = 1},
        },
        results = {
            {type = "fluid", name = "fi_crystal_fluid", amount = 100},
        },
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'fi_fuel_train_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_fuel_train_crystal_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_energy_crystal_charged_item', amount = 1},
            {type = 'item', name = 'el_train_fuel_diesel_item', amount = 4},
        },
        results = {
            {type = 'item', name = 'fi_fuel_train_crystal_item', amount = 4},
        },
        energy_required = 5,
    },
    --crushed 
    {
        name = 'fi_crushed_lithium_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_lithium_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'el_lithium_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_lithium_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_iron_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_iron_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'iron-plate', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_iron_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_copper_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_copper_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'copper-plate', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_copper_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_aluminum_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_aluminum_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'el_aluminum_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_aluminum_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_coal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_coal_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'coal', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_coal_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_stone_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_stone_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'stone', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_stone_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_uranium_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_uranium_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'uranium-238', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_uranium_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    --matierals
    {
        name = 'fi_materials_industrial_steel_blend_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_industrial_steel_blend_item"},
        enabled = false,
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_crushed_coal_item', amount = 3},
            {type = 'item', name = 'fi_crushed_iron_item', amount = 4},
            {type = 'item', name = 'fi_crushed_aluminum_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_industrial_steel_blend_item', amount = 2},
        },
        energy_required = 4,
    },
    {
        name = 'fi_materials_industrial_steel_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_industrial_steel_item"},
        enabled = false,
        category = 'smelting',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_industrial_steel_blend_item', amount = 4},
        },
        results = {
            {type = 'item', name = 'fi_industrial_steel_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_materials_steel_recipe',
        type = 'recipe',
        localised_name = {"item-name.steel-plate"},
        enabled = false,
        category = 'smelting',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_industrial_steel_blend_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'steel-plate', amount = 4},
        },
        energy_required = 6,
        subgroup = 'fi_item_subgroup_b',
        order = 'b-a',
        always_show_made_in = true,
    },
    --robo
    {
        name = 'fi_robo_port_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_robo_port_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fi_robo_charger_item', amount = 1},
            {type = 'item', name = 'fi_materials_GFK', amount = 40},
            {type = 'item', name = 'fi_materials_titan', amount = 10},
            {type = 'item', name = 'fi_materials_NFK', amount = 20},
        },
        results = {
            {type = 'item', name = 'fi_robo_port_item', amount = 1},
        },
        energy_required = 6,
    },
    {
        name = 'fi_robo_charger_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_robo_charger_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'roboport', amount = 1},
            {type = 'item', name = 'el_materials_ALK', amount = 60},
            {type = 'item', name = 'fi_energy_crystal_item', amount = 25},
            {type = 'item', name = 'el_energy_crystal_item', amount = 25},
        },
        results = {
            {type = 'item', name = 'fi_robo_charger_item', amount = 1},
        },
        energy_required = 6,
    },
    --modules
    {
        name = 'fi_modules_base_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_base_item"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'low-density-structure', amount = 2},
            {type = 'item', name = 'advanced-circuit', amount = 6},
        },
        results = {
            {type = 'item', name = 'fi_modules_base_item', amount = 1},
        },
        energy_required = 6,
    },
    {
        name = 'fi_modules_core_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_core_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_base_item', amount = 1},
        {type = 'item', name = 'fi_materials_GFK', amount = 1},
    },
        results = {
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_1_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_productivity_1_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
        {type = 'item', name = 'productivity-module', amount = 2},
        {type = 'item', name = 'advanced-circuit', amount = 6},
    },
        results = {
        {type = 'item', name = 'fi_modules_productivity_1_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_2_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_productivity_2_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_productivity_1_item', amount = 4},
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
        {type = 'item', name = 'productivity-module-2', amount = 2},
        {type = 'item', name = 'processing-unit', amount = 6},
    },
        results = {
        {type = 'item', name = 'fi_modules_productivity_2_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_3_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_productivity_3_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_productivity_2_item', amount = 4},
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
        {type = 'item', name = 'productivity-module-3', amount = 2},
        {type = 'item', name = 'fu_tech_sign_item', amount = 40},
    },
        results = {
        {type = 'item', name = 'fi_modules_productivity_3_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_4_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_productivity_4_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_productivity_3_item', amount = 6},
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
        {type = 'item', name = 'gr_materials_stack_up_item', amount = 4},
    },
        results = {
        {type = 'item', name = 'fi_modules_productivity_4_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_5_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_productivity_5_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_productivity_4_item', amount = 6},
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
        {type = 'item', name = 'gr_materials_stack_down_item', amount = 4},
    },
        results = {
        {type = 'item', name = 'fi_modules_productivity_5_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_6_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_modules_productivity_6_item"},
        enabled = false,
        ingredients = {
        {type = 'item', name = 'fi_modules_productivity_5_item', amount = 6},
        {type = 'item', name = 'fi_modules_core_item', amount = 1},
        {type = 'item', name = 'gr_materials_fusion_cell_item', amount = 4},
    },
        results = {
        {type = 'item', name = 'fi_modules_productivity_6_item', amount = 1},
    },
        energy_required = 6,
    },
    {
        name = 'fi_fiberer_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_fiberer_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
        {type = 'item', name = 'concrete', amount = 60},
        {type = 'item', name = 'el_materials_ALK', amount = 20},
        {type = 'item', name = 'iron-gear-wheel', amount = 40},
        {type = 'item', name = 'engine-unit', amount = 15},
        {type = 'item', name = 'el_energy_crystal_item', amount = 10},
    },
        results = {
        {type = 'item', name = 'fi_fiberer_item', amount = 1},
    },
        energy_required = 4,
    },
    {
        name = 'fi_natural_fiber_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_natural_fiber"},
        enabled = false,
        category = 'fi_fiberer_category',
        main_product = 'fi_materials_natural_fiber',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "wood", amount = 1},
            --{type="fluid", name="steam", amount=240, temperature=165},
        },
        results = {
            {type = "item", name = "fi_materials_natural_fiber", amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'fi_glass_fiber_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_glass_fiber"},
        enabled = false,
        category = 'fi_fiberer_category',
        main_product = 'fi_materials_glass_fiber',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "fi_crushed_glass_item", amount = 2},
            --{type="fluid", name="steam", amount=240, temperature=165},
        },
        results = {
            {type = "item", name = "fi_materials_glass_fiber", amount = 1},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'fi_arc_glass_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_arc_glass"},
        enabled = false,
        category = 'el_arc_furnace_category',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "stone", amount = 3},
        },
        results = {
            {type = "fluid", name = "fi_arc_glass", amount = 200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_glass_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_glass"},
        enabled = false,
        category = 'el_caster_category',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_arc_glass", amount = 100},
        },
        results = {
            {type = "item", name = "fi_materials_glass", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_glass_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_crushed_glass_item"},
        enabled = false,
        category = 'fi_crushing',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_materials_glass', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_crushed_glass_item', amount = 2},
        },
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'fi_flourite_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_flourite"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_flourite',
        ingredients = {
            {type = "fluid", name = "el_dirty_water", amount = 50},
        },
        results = {
            {type = "fluid", name = "water", amount = 50},
            {type = "item", name = "fi_materials_flourite", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_strong_acid_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_strong_acid"},
        enabled = false,
        category = 'chemistry',
        main_product = 'fi_strong_acid',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "water", amount = 100},
            {type = "fluid", name = "sulfuric-acid", amount = 50},
            {type = "item", name = "fi_materials_flourite", amount = 1},
        },
        results = {
            {type = "fluid", name = "el_acidic_water", amount = 50},
            {type = "fluid", name = "fi_strong_acid", amount = 100},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_purify_stone_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_dirty_water"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'fi_dirty_water',
        ingredients = {
            {type = "fluid", name = "fi_strong_acid", amount = 100},
            {type = "fluid", name = "water", amount = 50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type = "item", name = "stone", amount = 8}
        },
        results = {
            {type = "fluid", name = "fi_dirty_water", amount = 50},
            {type = "item", name = "el_energy_crystal_item", amount = 3},
            {type = "item", name = "el_materials_pure_iron", amount = 3},
            {type = "item", name = "el_materials_pure_copper", amount = 3},
        },
        energy_required = 2,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_stone.png"
            }
        },
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_purify_iron_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_thorium232_item"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'fi_thorium232_item',
        ingredients = {
            {type = "fluid", name = "fi_strong_acid", amount = 800},
            {type = "fluid", name = "water", amount = 200},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type = "item", name = "iron-ore", amount = 80}
        },
        results = {
            {type = "fluid", name = "fi_dirty_water", amount = 200},
            {type = "item", name = "fi_thorium232_item", amount = 1},
            {type = "item", name = "el_materials_pure_iron", amount = 39}
        },
        energy_required = 16,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_iron.png"
            }
        },
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_purify_copper_recipe',
        type = 'recipe',
        localised_name = {"item-name.uranium-238"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'uranium-238',
        ingredients = {
            {type = "fluid", name = "fi_strong_acid", amount = 800},
            {type = "fluid", name = "water", amount = 200},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type = "item", name = "copper-ore", amount = 80}
        },
        results = {
            {type = "fluid", name = "fi_dirty_water", amount = 200},
            {type = "item", name = "uranium-238", amount = 1},
            {type = "item", name = "el_materials_pure_copper", amount = 39}
        },
        energy_required = 16,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_copper.png"
            }
        },
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_purify_uranium_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_dirty_water"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'fi_dirty_water',
        ingredients = {
            {type = "fluid", name = "fi_strong_acid", amount = 1000},
            {type = "fluid", name = "water", amount = 500},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type = "item", name = "uranium-ore", amount = 500}
        },
        results = {
            {type = "fluid", name = "fi_dirty_water", amount = 500},
            {type = "item", name = "stone", amount = 450},
            {type = "item", name = "uranium-238", amount = 49},
            {type = "item", name = "uranium-235", amount = 1},
        },
        energy_required = 20,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_uranium.png"
            }
        },
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },


    {
        name = 'fi_arc_pure_gold_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_arc_gold"},
        enabled = false,
        category = 'el_arc_furnace_category',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "fi_materials_pure_gold", amount = 1},
        },
        results = {
            {type = "fluid", name = "fi_arc_gold", amount = 200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_gold_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_gold"},
        enabled = false,
        category = 'el_caster_category',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_arc_gold", amount = 100},
        },
        results = {
            {type = "item", name = "fi_materials_gold", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_arc_pure_titan_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_arc_titan"},
        enabled = false,
        category = 'el_arc_furnace_category',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "fi_materials_pure_titan", amount = 1},
        },
        results = {
            {type = "fluid", name = "fi_arc_titan", amount = 200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_titan_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_titan"},
        enabled = false,
        category = 'el_caster_category',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_arc_titan", amount = 100},
        },
        results = {
            {type = "item", name = "fi_materials_titan", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_arc_pure_neodym_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_arc_neodym"},
        enabled = false,
        category = 'el_arc_furnace_category',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "fi_materials_pure_neodym", amount = 1},
        },
        results = {
            {type = "fluid", name = "fi_arc_neodym", amount = 200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_neodym_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_neodym"},
        enabled = false,
        category = 'el_caster_category',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_arc_neodym", amount = 100},
        },
        results = {
            {type = "item", name = "fi_materials_neodym", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_compound_machine_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_compound_machine_entity"},
        enabled = false,
        ingredients = {
            {type = 'item', name = 'concrete', amount = 60},
            {type = 'item', name = 'el_materials_ALK', amount = 60},
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'engine-unit', amount = 15},
            {type = 'item', name = 'el_energy_crystal_item', amount = 20},
        },
        results = {
            {type = 'item', name = 'fi_compound_machine_item', amount = 1},
        },
        energy_required = 4,
    },
    {
        name = 'fi_NFK_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_NFK"},
        enabled = false,
        category = 'fi_compound_machine_category',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "petroleum-gas", amount = 10},
            {type = "item", name = "fi_materials_natural_fiber", amount = 1},
            {type = "item", name = "plastic-bar", amount = 1},
        },
        results = {
            {type = "item", name = "fi_materials_NFK", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_GFK_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_GFK"},
        enabled = false,
        category = 'fi_compound_machine_category',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "petroleum-gas", amount = 10},
            {type = "item", name = "fi_materials_glass_fiber", amount = 1},
            {type = "item", name = "plastic-bar", amount = 1},
        },
        results = {
            {type = "item", name = "fi_materials_GFK", amount = 1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_pure_neodym_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_pure_neodym"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_pure_neodym',
        ingredients = {
            {type = "fluid", name = "fi_dirty_water", amount = 100},
        },
        results = {
            {type = "fluid", name = "water", amount = 100},
            --{type="item", name="fi_materials_pure_gold", amount=2},
            {type = "item", name = "fi_materials_pure_neodym", amount = 2},
            --{type="item", name="fi_materials_pure_titan", amount=2},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_pure_gold_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_pure_gold"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_pure_gold',
        ingredients = {
            {type = "fluid", name = "fi_dirty_water", amount = 100},
        },
        results = {
            {type = "fluid", name = "water", amount = 100},
            {type = "item", name = "fi_materials_pure_gold", amount = 2},
            --{type="item", name="fi_materials_pure_neodym", amount=4},
            --{type="item", name="fi_materials_pure_titan", amount=2},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_pure_titan_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_pure_titan"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_pure_titan',
        ingredients = {
            {type = "fluid", name = "fi_dirty_water", amount = 100},
        },
        results = {
            {type = "fluid", name = "water", amount = 100},
            --{type="item", name="fi_materials_pure_gold", amount=2},
            --{type="item", name="fi_materials_pure_neodym", amount=4},
            {type = "item", name = "fi_materials_pure_titan", amount = 2},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_decay_waste_recipe',
        type = 'recipe',
        localised_name = {"recipe-name.fi_decay_waste_recipe"},
        enabled = false,
        category = 'fi_castor_category',
        icon = sprite('fission/fi_materials/fi_materials_waste.png'),
        icon_size = 64,
        subgroup = 'fi_item_subgroup_a',
        ingredients = {
            {type = "item", name = "fi_materials_waste", amount = 1},
        },
        results = {},
        energy_required = 150,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_empty_solution_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_empty_solution"},
        enabled = false,
        category = 'crafting',
        main_product = 'fi_materials_empty_solution',
        allow_productivity = true,
        ingredients = {
            {type = "item", name = "fi_materials_GFK", amount = 6},
            {type = "item", name = "barrel", amount = 1},
        },
        results = {
            {type = "item", name = "fi_materials_empty_solution", amount = 1},
        },
        energy_required = 1,
        order = 'a-b',
        --always_show_made_in = true,
    },
    {
        name = 'fi_solution_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_solution"},
        enabled = false,
        category = 'chemistry',
        main_product = 'fi_materials_solution',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_strong_acid", amount = 120},
            {type = "fluid", name = "sulfuric-acid", amount = 60},
            {type = "item", name = "fi_materials_empty_solution", amount = 1},
            {type = "item", name = "el_lithium_item", amount = 2},
        },
        results = {
            {type = "fluid", name = "el_acidic_water", amount = 20},
            {type = "item", name = "fi_materials_solution", amount = 1, probability = 0.95},
            {type = "item", name = "fi_materials_empty_solution", amount = 1, probability = 0.05},
        },
        energy_required = 6,
        order = 'a-b',
        always_show_made_in = true,
    },
    --purifier 10 stone + 100 strong acid = 50 rich water
    --enrichment 10/2 stone + 120 strong acid = 150 rich water
    {
        name = 'fi_rich_powder_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_rich_powder"},
        enabled = false,
        category = 'centrifuging',
        main_product = 'fi_materials_rich_powder',
        ingredients = {
            {type = "item", name = "fi_materials_solution", amount = 1},
            {type = "item", name = "fi_crushed_stone_item", amount = 16},
            {type = "item", name = "fi_crushed_coal_item", amount = 10},
        },
        results = {
            {type = "item", name = "fi_crushed_coal_item", amount = 7},
            {type = "item", name = "fi_materials_rich_powder", amount = 3},
            {type = "item", name = "fi_materials_empty_solution", amount = 1},
        },
        energy_required = 6,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_extract_rich_powder_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_dirty_water"},
        enabled = false,
        category = 'chemistry',
        main_product = 'fi_dirty_water',
        ingredients = {
            {type = "item", name = "fi_materials_rich_powder", amount = 1},
            {type = "fluid", name = "water", amount = 200},
        },
        results = {
            {type = "fluid", name = "fi_dirty_water", amount = 150},
            {type = "fluid", name = "el_dirty_water", amount = 50},
        },
        energy_required = 1,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_refinery_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_refinery_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = "item", name = "oil-refinery", amount=1},
            {type = "item", name = 'concrete', amount = 60},
            {type = "item", name = 'el_materials_ALK', amount = 20},
            {type = "item", name = 'engine-unit', amount = 15},
        },
        results = {
            {type="item", name="fi_refinery_item", amount=1}
        },
        energy_required = 1,
        order = 'a-b',
    },
    {
        name = 'fi_refinery_basic_recipe',
        type = 'recipe',
        localised_name = {"recipe-name.fi_refinery_basic_recipe"},
        enabled = false,
        category = 'fi_refining',
        icon = sprite('icons/fi_refining_basic.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "crude-oil", amount = 180},
            {type = "fluid", name = "steam", amount = 40},
        },
        results = {
            {type = "fluid", name = "petroleum-gas", amount = 80},
            {type = "fluid", name = "fi_acid_gas", amount = 20},
            {type = "fluid", name = "el_kerosene", amount = 80},
            {type = "fluid", name = "heavy-oil", amount = 20},
        },
        energy_required = 5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_refinery_coal_recipe',
        type = 'recipe',
        localised_name = {"recipe-name.fi_refinery_coal_recipe"},
        enabled = false,
        category = 'fi_refining',
        icon = sprite('icons/fi_refining_coal.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "crude-oil", amount = 180},
            {type = "fluid", name = "steam", amount = 40},
            {type = "item", name = "fi_crushed_coal_item", amount = 10},
        },
        results = {
            {type = "fluid", name = "petroleum-gas", amount = 60},
            {type = "fluid", name = "fi_acid_gas", amount = 30},
            {type = "fluid", name = "el_kerosene", amount = 75},
            {type = "fluid", name = "heavy-oil", amount = 95},
        },
        energy_required = 5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_refinery_sulfur_recipe',
        type = 'recipe',
        localised_name = {"recipe-name.fi_refinery_sulfur_recipe"},
        enabled = false,
        category = 'fi_refining',
        icon = sprite('icons/fi_refining_sulfur.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "crude-oil", amount = 180},
            {type = "fluid", name = "steam", amount = 40},
            {type = "item", name = "sulfur", amount = 3},
        },
        results = {
            {type = "fluid", name = "petroleum-gas", amount = 95},
            {type = "fluid", name = "fi_acid_gas", amount = 75},
            {type = "fluid", name = "el_kerosene", amount = 80},
            {type = "fluid", name = "heavy-oil", amount = 20},
        },
        energy_required = 5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_crack_sulfur_gas_recipe',
        type = 'recipe',
        localised_name = {"item-name.sulfur"},
        enabled = false,
        category = 'chemistry',
        main_product = 'sulfur',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_acid_gas", amount = 10},
            {type = "fluid", name = "steam", amount = 5},
        },
        results = {
            {type = "fluid", name = "water", amount = 5},
            {type = "item", name = "sulfur", amount = 1},
        },
        energy_required = 0.5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_crack_acid_gas_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_acidic_water"},
        enabled = false,
        category = 'chemistry',
        main_product = 'el_acidic_water',
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "fi_acid_gas", amount = 20},
            {type = "fluid", name = "steam", amount = 5},
        },
        results = {
            {type = "fluid", name = "el_acidic_water", amount = 20},
            {type = "fluid", name = "sulfuric-acid", amount = 5},
        },
        energy_required = 0.5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_refinery_kerosene_recipe',
        type = 'recipe',
        localised_name = {"recipe-name.fi_refinery_kerosene_recipe"},
        enabled = false,
        category = 'fi_refining',
        icon = sprite('icons/fi_cracking_kerosene.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "el_kerosene", amount = 200},
        },
        results = {
            {type = "fluid", name = "el_acidic_water", amount = 100},
            {type = "fluid", name = "fi_acid_gas", amount = 50},
            {type = "fluid", name = "el_desulfurized_kerosene", amount = 90},
        },
        energy_required = 5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_refinery_kerosene_coal_recipe',
        type = 'recipe',
        localised_name = {"recipe-name.fi_refinery_kerosene_coal_recipe"},
        enabled = false,
        category = 'fi_refining',
        icon = sprite('icons/fi_cracking_kerosene_coal.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type = "fluid", name = "el_kerosene", amount = 200},
            {type = "item", name = "fi_crushed_coal_item", amount = 10},
        },
        results = {
            {type = "fluid", name = "el_acidic_water", amount = 110},
            {type = "fluid", name = "fi_acid_gas", amount = 70},
            {type = "fluid", name = "heavy-oil", amount = 90},
        },
        energy_required = 5,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
        always_show_made_in = true,
    },
    {
        name = 'fi_charge_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_energy_crystal_charged_item"},
        enabled = false,
        category = 'el_charger_category',
        allow_productivity = true,
        ingredients = {
            {type = 'item', name = 'fi_energy_crystal_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'fi_energy_crystal_charged_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'fi_ceramic_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_ceramic"},
        enabled = false,
        category = 'crafting-with-fluid',
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="steam", amount=45},
            {type="item", name="fi_crushed_stone_item", amount=3},
        },
        results = {
            {type="item", name="el_materials_ceramic", amount=2},
        },
        energy_required = 1,
        subgroup = 'el_item_subgroup_a',
        order = 'a-c',
    },
    {
        name = 'fi_grenade_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_grenade"},
        enabled = false,
        category = 'crafting',
        main_product = 'fi_grenade',
        ingredients = {
            {type="item", name="fi_energy_crystal_charged_item", amount=1},
            {type="item", name="grenade", amount=1},
        },
        results = {
            {type="item", name="fi_grenade", amount=1},
        },
        energy_required = 4,
    },
    {
        name = 'fi_solid_1_recipe',
        type = 'recipe',
        localised_name = {"item-name.solid-fuel"},
        enabled = false,
        category = 'chemistry',
        main_product = 'solid-fuel',
        icon = sprite('icons/fi_solid_2.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="el_kerosene", amount=20},
        },
        results = {
            {type="item", name="solid-fuel", amount=1},
        },
        energy_required = 2,
        subgroup = 'fluid-recipes',
        order = 'b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-a',
    },
    {
        name = 'fi_solid_2_recipe',
        type = 'recipe',
        localised_name = {"item-name.solid-fuel"},
        enabled = false,
        category = 'chemistry',
        main_product = 'solid-fuel',
        icon = sprite('icons/fi_solid_1.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="el_desulfurized_kerosene", amount=30},
        },
        results = {
            {type="item", name="solid-fuel", amount=1},
        },
        energy_required = 2,
        subgroup = 'fluid-recipes',
        order = 'b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-b',
    },
    {
        name = 'fi_rocket_fuel_2_recipe',
        type = 'recipe',
        localised_name = {"item-name.rocket-fuel"},
        enabled = false,
        category = 'chemistry',
        main_product = 'rocket-fuel',
        icon = sprite('icons/fi_rocket_1.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="el_desulfurized_kerosene", amount=30},
            {type="item", name="solid-fuel", amount=10},
        },
        results = {
            {type="item", name="rocket-fuel", amount=1},
        },
        energy_required = 30,
        subgroup = 'fluid-recipes',
        order = 'b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-c',
    },
    {
        name = 'fi_rocket_fuel_1_recipe',
        type = 'recipe',
        localised_name = {"item-name.rocket-fuel"},
        enabled = false,
        category = 'chemistry',
        main_product = 'rocket-fuel',
        icon = sprite('icons/fi_rocket_2.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="el_kerosene", amount=20},
            {type="item", name="solid-fuel", amount=10},
        },
        results = {
            {type="item", name="rocket-fuel", amount=1},
        },
        energy_required = 30,
        subgroup = 'fluid-recipes',
        order = 'b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-d',
    },
    {
        name = 'fi_rocket_fuel_1_recipe',
        type = 'recipe',
        localised_name = {"item-name.rocket-fuel"},
        enabled = false,
        category = 'chemistry',
        main_product = 'rocket-fuel',
        icon = sprite('icons/fi_rocket_2.png'),
        icon_size = 64,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="el_kerosene", amount=20},
            {type="item", name="solid-fuel", amount=10},
        },
        results = {
            {type="item", name="rocket-fuel", amount=1},
        },
        energy_required = 30,
        subgroup = 'fluid-recipes',
        order = 'b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-d',
    },
    {
        name = 'fi_rich_solution_pack_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_rich_solution"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_rich_solution',
        ingredients = {
            {type="item", name="fi_materials_empty_solution", amount=1},
            {type="fluid", name="fi_dirty_water", amount=1000},
        },
        results = {
            {type="item", name="fi_materials_rich_solution", amount=1},
        },
        energy_required = 0.2,
        always_show_made_in = true,
    },
    {
        name = 'fi_rich_solution_unpack_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_dirty_water"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_dirty_water',
        ingredients = {
            {type="item", name="fi_materials_rich_solution", amount=1},
        },
        results = {
            {type="fluid", name="fi_dirty_water", amount=1000},
            {type="item", name="fi_materials_empty_solution", amount=1},
        },
        energy_required = 0.2,
        always_show_made_in = true,
    },
    {
        name = 'fi_dirty_solution_pack_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_dirty_solution"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_dirty_solution',
        ingredients = {
            {type="item", name="fi_materials_empty_solution", amount=1},
            {type="fluid", name="el_dirty_water", amount=1000},
        },
        results = {
            {type="item", name="fi_materials_dirty_solution", amount=1},
        },
        energy_required = 0.2,
        always_show_made_in = true,
    },
    {
        name = 'fi_dirty_solution_unpack_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_dirty_water"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="item", name="fi_materials_dirty_solution", amount=1},
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=1000},
            {type="item", name="fi_materials_empty_solution", amount=1},
        },
        energy_required = 0.2,
        always_show_made_in = true,
        subgroup = 'fi_item_subgroup_f',
        order = 'f-a',
    },
    {
        name = 'fi_upgrade_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_materials_upgrade"},
        enabled = false,
        category = 'crafting',
        main_product = 'fi_materials_upgrade',
        ingredients = {
            {type="item", name="fi_modules_core_item", amount=2},
            {type="item", name="speed-module-2", amount=2},
            {type="item", name="el_energy_crystal_charged_item", amount=10},
        },
        results = {
            {type="item", name="fi_materials_upgrade", amount=2},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'fi_miner_upgrade_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fu_miner_entity_2"},
        enabled = false,
        category = 'crafting',
        main_product = 'fu_miner_item_2',
        ingredients = {
            {type="item", name="fu_miner_item", amount=1},
            {type="item", name="fi_materials_upgrade", amount=1},
        },
        results = {
            {type="item", name="fu_miner_item_2", amount=1},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'fu_upgrade_recipe',
        type = 'recipe',
        localised_name = {"item-name.fu_materials_upgrade"},
        enabled = false,
        category = 'crafting',
        main_product = 'fu_materials_upgrade',
        ingredients = {
            {type="item", name="fi_modules_core_item", amount=2},
            {type="item", name="fi_materials_upgrade", amount=2},
            {type="item", name="fu_materials_magnet", amount=10},
        },
        results = {
            {type="item", name="fu_materials_upgrade", amount=2},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'fu_miner_upgrade_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fu_miner_entity_3"},
        enabled = false,
        category = 'crafting',
        main_product = 'fu_miner_item_3',
        ingredients = {
            {type="item", name="fu_miner_item", amount=1},
            {type="item", name="fu_materials_upgrade", amount=1},
        },
        results = {
            {type="item", name="fu_miner_item_3", amount=1},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'gr_upgrade_recipe',
        type = 'recipe',
        localised_name = {"item-name.gr_materials_upgrade"},
        enabled = false,
        category = 'crafting',
        main_product = 'gr_materials_upgrade',
        ingredients = {
            {type="item", name="fu_materials_upgrade", amount=2},
            {type="item", name="fi_modules_core_item", amount=2},
            {type="item", name="gr_materials_plasma_cube", amount=2},
        },
        results = {
            {type="item", name="gr_materials_upgrade", amount=2},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
    {
        name = 'gr_miner_upgrade_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fu_miner_entity_4"},
        enabled = false,
        category = 'crafting',
        main_product = 'fu_miner_item_4',
        ingredients = {
            {type="item", name="fu_miner_item", amount=1},
            {type="item", name="gr_materials_upgrade", amount=1},
        },
        results = {
            {type="item", name="fu_miner_item_4", amount=1},
        },
        energy_required = 10,
        always_show_made_in = true,
    },
})