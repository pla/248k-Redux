local function sprite(name)
    return '__248k-Redux-graphics__/ressources/'..name
end

--settings check
--if config('recipe_enabled') then 
--end
--recipe
data:extend({
    --el_solar
    {
        name = 'el_solar_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_solar_item"},
        enabled = false,
        ingredients = {
            {type = "item", name = "el_aluminum_item", amount = 30},
            {type = "item", name = "concrete", amount = 20},
            {type = "item", name = "electronic-circuit", amount = 40},
            {type = "item", name = "copper-plate", amount = 20},
        },
        --result = 'el_solar_item',
        results = {
            {type = "item", name = "el_solar_item", amount = 2}
        },
        --result_count = 2,
        energy_required = 4,
        order = 'a-a-2',
    },
    --el_aluminum_ore
    
    --el_lithium_basic_battery
    {
        name = 'el_lithium_basic_battery_recipe',
        type = 'recipe',
        localised_name = {"item-name.battery"},
        enabled = false,
        category = 'crafting',
        subgroup = 'el_item_subgroup_b',
        ingredients = {
            {type = "item",name = 'el_lithium_item',amount = 4},
            {type = "item",name = 'iron-plate',amount = 4},
            {type = "item",name = 'copper-plate',amount = 4},
        },
        results = {
            {type = "item",name = 'battery',amount = 12}
        },
        --result_count = 12,
        energy_required = 20,
        order = 'b-a',
    },
    --el_lithium_battery
    {
        name = 'el_lithium_battery_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_lithium_battery"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = "item",name = 'el_lithium_item',amount = 4},
            {type = "item",name = 'iron-plate',amount = 4},
            {type = "item",name = 'steel-plate',amount = 4},
        },
        results = {
            {type = "item",name = 'el_lithium_battery',amount = 2}
        },
        energy_required = 10,
    },
    --el_burner
    {
        name = 'el_burner_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_burner_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = "item",name = 'iron-gear-wheel',amount = 40},
            {type = "item",name = 'steel-plate',amount = 15},
            {type = "item",name = 'el_materials_ALK',amount = 10},
            {type = "item",name = 'electronic-circuit',amount = 10}
        },
        results = {{type = "item",name = 'el_burner_item',amount = 1}},
        energy_required = 4,
    },
    {
        name = 'el_burner_kerosene_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_burner_kerosene_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'el_burner_item', amount = 1},
            {type = 'item', name = 'pipe', amount = 20},
            {type = 'item', name = 'electronic-circuit', amount = 20},
        },
        results = {
            {type = 'item', name = 'el_burner_kerosene_item', amount = 1},
        },
        energy_required = 4,
    },
    --el_water_generator
    {
        name = 'el_water_generator_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_water_generator_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 60},
            {type = 'item', name = 'engine-unit', amount = 15},
            {type = 'item', name = 'el_materials_ALK', amount = 20},
            {type = 'item', name = 'electronic-circuit', amount = 20},
            {type = 'item', name = 'pipe', amount = 30},
            {type = 'item', name = 'copper-cable', amount = 20},
        },
        results = {
            {type = 'item', name = 'el_water_generator_item', amount = 2},
        },
        energy_required = 4,
    },
    --el_pressurizer
    {
        name = 'el_pressurizer_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_pressurizer_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 20},
            {type = 'item', name = 'pipe', amount = 15},
            {type = 'item', name = 'el_materials_ALK', amount = 10},
            {type = 'item', name = 'electronic-circuit', amount = 10},
    },
        results = {
            {type = 'item', name = 'el_pressurizer_item', amount = 1},
    },
        energy_required = 4,
    },
    --el_water_pressure
    {
        name = 'el_water_pressure_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_pressurized_water"},
        enabled = false,
        category = 'el_special_fluid',
        icon = sprite('fluids/el_pressurized_water.png'),
        icon_size = 64,
        main_product = 'el_pressurized_water',
        ingredients = {
            {type="fluid", name="water", amount=480},
            {type="fluid", name="steam", amount=240, minimium_temperature=165},
        },
        results = {
            {type="fluid", name="el_pressurized_water", amount=240, temperature =500},
            {type="fluid", name="water", amount=240},
        },
        energy_required = 2,
    },
    --el_diesel_train
    {
        name = 'el_diesel_train_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_diesel_train_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'locomotive', amount = 1},
            {type = 'item', name = 'engine-unit', amount = 15},
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'advanced-circuit', amount = 15},
            {type = 'item', name = 'el_materials_ALK', amount = 25},
        },
        results = {
            {type = 'item', name = 'el_diesel_train_item', amount = 1},
        },
        energy_required = 20,
    },
    --el_kerosene
    {
        name = 'el_kerosene_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_kerosene"},
        enabled = false,
        category = 'oil-processing',
        main_product = 'el_kerosene',
        ingredients = {
            {type="fluid", name="crude-oil", amount=160},
            {type="fluid", name="steam", amount=60},
        },
        results = {
            {type="fluid", name="el_kerosene", amount=120},
            {type="fluid", name="light-oil", amount=90},
            {type="fluid", name="water", amount=70},
        },
        energy_required = 5,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_kerosene.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_2.png"
            }
        }
    },
    {
        name = 'el_tank_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_tank_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'storage-tank', amount = 4},
            {type = 'item', name = 'steel-plate', amount = 50},
            {type = 'item', name = 'el_aluminum_item', amount = 150},
        },
        results = {
            {type = 'item', name = 'el_tank_item', amount = 1},
        },
        energy_required = 4,
    },
    --el_desulfurized_kerosene
    {
        name = 'el_desulfurized_kerosene_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_desulfurized_kerosene"},
        enabled = false,
        category = 'chemistry',
        main_product = 'el_desulfurized_kerosene',
        ingredients = {
            {type="fluid", name="el_kerosene", amount=200},
        },
        results = {
            {type="fluid", name="el_desulfurized_kerosene", amount=80},
            {type="fluid", name="el_acidic_water", amount=120},
        },
        energy_required = 4,
    },
    --el_usage_acidic_water
    {
        name = 'el_usage_acidic_water_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.sulfuric-acid"},
        enabled = false,
        category = 'chemistry',
        subgroup = 'el_item_subgroup_e',
        main_product = 'sulfuric-acid',
        ingredients = {
            {type="fluid", name="el_acidic_water", amount=150},
        },
        results = {
            {type="fluid", name="water", amount=50},
            {type="fluid", name="sulfuric-acid", amount=100},
            --{type="item", name="sulfur", amount=6},
        },
        energy_required = 4,
    },
    --el_train_fuel_diesel
    {
        name = 'el_train_fuel_diesel_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_train_fuel_diesel_item"},
        enabled = false,
        category = 'crafting-with-fluid',
        subgroup = 'el_item_subgroup_d',
        main_product = 'el_train_fuel_diesel_item',
        ingredients = {
            {type="fluid", name="el_desulfurized_kerosene", amount=70},
        },
        results = {
            {type="item", name="el_train_fuel_diesel_item", amount=1},
        },
        energy_required = 10,
    },
    --el_generator_equip
    {
        name = 'el_train_equipment_generator_recipe',
        type = 'recipe',
        localised_name = {"equipment-name.el_train_equipment_generator_item"},
        enabled = false,
        category = 'crafting',
        subgroup = 'el_item_subgroup_d',
        ingredients = {
            {type="item", name="el_lithium_battery", amount=10},
            {type="item", name="engine-unit", amount=15},
            {type="item", name="el_aluminum_item", amount=15},
        },
        results = {
            {type="item", name="el_train_equipment_generator_item", amount=1},
        },
        energy_required = 25,
    },
    --el_accelerator_equip
    {
        name = 'el_train_equipment_accelerator_recipe',
        type = 'recipe',
        localised_name = {"equipment-name.el_train_equipment_accelerator_item"},
        enabled = false,
        category = 'crafting',
        subgroup = 'el_item_subgroup_d',
        ingredients = {
            {type="item", name="pump", amount=5},
            {type="item", name="steel-plate", amount=15},
            {type="item", name="el_aluminum_item", amount=15},
        },
        results = {
            {type="item", name="el_train_equipment_accelerator_item", amount=1},
        },
        energy_required = 25,
    },
    --el_energy_crystal
    {
        name = 'el_grow_energy_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_energy_crystal_item"},
        enabled = false,
        category = 'el_grower_category',
        ingredients = {
            {type="item", name="el_energy_crystal_item", amount=1},
            {type="fluid", name="el_acidic_water", amount=15},
        },
        results = {
            {type="item", name="el_energy_crystal_item", amount=2},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    --el_energy_crystal_fuel
    {
        name = 'el_train_fuel_diesel_energized_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_train_fuel_diesel_energized_item"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="el_train_fuel_diesel_item", amount=4},
            {type="item", name="el_energy_crystal_charged_item", amount=1},
        },
        results = {
            {type="item", name="el_train_fuel_diesel_energized_item", amount=4},
        },
        energy_required = 5,
    },
    --el_ki_beacon
    {
        name = 'el_ki_beacon_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_ki_beacon_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="steel-plate", amount=20},
            {type="item", name="el_materials_ALK", amount=10},
            {type="item", name="electronic-circuit", amount=20},
        },
        results = {
            {type="item", name="el_ki_beacon_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'fi_ki_beacon_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_ki_beacon_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="steel-plate", amount=20},
            {type="item", name="fi_materials_neodym", amount=5},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="el_ki_beacon_item", amount=1},
        },
        results = {
            {type="item", name="fi_ki_beacon_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'fu_ki_beacon_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fu_ki_beacon_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="fu_materials_KFK", amount=20},
            {type="item", name="fu_tech_sign_item", amount=20},
            {type="item", name="processing-unit", amount=20},
            {type="item", name="fi_ki_beacon_item", amount=1},
        },
        results = {
            {type="item", name="fu_ki_beacon_item", amount=1},
        },
        energy_required = 6,
    },
    --el_ki_core
    {
        name = 'el_ki_core_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_ki_core_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="steel-plate", amount=100},
            {type="item", name="concrete", amount=500},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="el_materials_ALK", amount=140},
            {type="item", name="el_energy_crystal_item", amount=40},
            {type="item", name="el_solar_item", amount=10},
            {type="item", name="el_lithium_battery", amount=40},
            {type="item", name="el_water_generator_item", amount=10},
            {type="item", name="el_burner_item", amount=10},
        },
        results = {
            {type="item", name="el_ki_core_item", amount=1},
        },
        energy_required = 60,
    },
    {
        name = 'fi_ki_core_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_ki_core_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="fi_crafter_item", amount=10},
            {type="item", name="fi_materials_neodym", amount=100},
            {type="item", name="fi_crusher_item", amount=10},
            {type="item", name="fi_modules_core_item", amount=20},
            {type="item", name="low-density-structure", amount=100},
            {type="item", name="concrete", amount=500},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="advanced-circuit", amount=100},
        },
        results = {
            {type="item", name="fi_ki_core_item", amount=1},
        },
        energy_required = 60,
    },
    {
        name = 'fu_ki_core_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fu_ki_core_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="concrete", amount=500},
            {type="item", name="electronic-circuit", amount=100},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="fu_space_probe_down_matter_item", amount=10},
            {type="item", name="fu_space_probe_up_matter_item", amount=10},
            {type="item", name="fu_exchanger_item", amount=10},
            {type="item", name="fu_tech_sign_item", amount=100},
            {type="item", name="fu_boiler_item", amount=10},
            {type="item", name="fu_burner_item", amount=10},
        },
        results = {
            {type="item", name="fu_ki_core_item", amount=1},
        },
        energy_required = 60,
    },
    --el_ki_memory_entity
    {
        name = 'el_ki_memory_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_ki_memory_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="steel-plate", amount=40},
            {type="item", name="concrete", amount=60},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="el_materials_ALK", amount=100},
        },
        results = {
            {type="item", name="el_ki_memory_item", amount=1},
        },
        energy_required = 30,
    },
    {
        name = 'fi_ki_circuit_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fi_ki_circuit_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="fi_materials_neodym", amount=20},
            {type="item", name="concrete", amount=120},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="fi_materials_GFK", amount=100},
        },
        results = {
            {type="item", name="fi_ki_circuit_item", amount=1},
        },
        energy_required = 30,
    },
    {
        name = 'fu_ki_circuit_recipe',
        type = 'recipe',
        localised_name = {"entity-name.fu_ki_circuit_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="fu_materials_KFK", amount=40},
            {type="item", name="concrete", amount=120},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="processing-unit", amount=100},
            {type="item", name="fu_tech_sign_item", amount=20},
            {type="item", name="fu_materials_TIM", amount=40},
        },
        results = {
            {type="item", name="fu_ki_circuit_item", amount=1},
        },
        energy_required = 30,
    },
    --el_ki_memory_fluid
    {
        name = 'el_ki_memory_fluid_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_memory_fluid"},
        enabled = false,
        category = 'el_ki_memory_category',
        main_product = 'el_ki_memory_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="red-wire", amount=10},
            {type="item", name="copper-plate", amount=10},
            {type="item", name="electronic-circuit", amount=10},
            {type="item", name="el_energy_crystal_item", amount=2},
        },
        results = {
            {type="fluid", name="el_ki_memory_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_memory_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_1.png"
            }
        } 
    },
    {
        name = 'el_ki_memory_fluid_recipe_1',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_memory_fluid"},
        enabled = false,
        category = 'el_ki_memory_category',
        main_product = 'el_ki_memory_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="red-wire", amount=8},
            {type="item", name="copper-plate", amount=8},
            {type="item", name="electronic-circuit", amount=8},            
            {type="item", name="el_energy_crystal_item", amount=2},
        },
        results = {
            {type="fluid", name="el_ki_memory_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_memory_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_2.png"
            }
        } 
    },
    {
        name = 'el_ki_memory_fluid_recipe_2',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_memory_fluid"},
        enabled = false,
        category = 'el_ki_memory_category',
        main_product = 'el_ki_memory_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="red-wire", amount=8},
            {type="item", name="copper-plate", amount=8},
            {type="item", name="electronic-circuit", amount=8},            
            {type="item", name="el_energy_crystal_item", amount=1},
        },
        results = {
            {type="fluid", name="el_ki_memory_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_memory_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_3.png"
            }
        } 
    },
    {
        name = 'el_ki_memory_fluid_recipe_3',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_memory_fluid"},
        enabled = false,
        category = 'el_ki_memory_category',
        main_product = 'el_ki_memory_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="red-wire", amount=8},
            {type="item", name="copper-plate", amount=8},
            {type="item", name="electronic-circuit", amount=8},            
        },
        results = {
            {type="fluid", name="el_ki_memory_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_memory_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_4.png"
            }
        } 
    },
    {
        name = 'fu_ki_circuit_fluid_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fu_ki_circuit_fluid"},
        enabled = false,
        category = 'fu_ki_circuit_category',
        main_product = 'fu_ki_circuit_fluid',
        ingredients = {
            {type="item", name="fu_tech_sign_item", amount=8},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="fu_space_probe_science_item", amount=2},
        },
        results = {
            {type="fluid", name="fu_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fu_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_1.png"
            }
        } 
    },
    {
        name = 'fu_ki_circuit_fluid_recipe_1',
        type = 'recipe',
        localised_name = {"fluid-name.fu_ki_circuit_fluid"},
        enabled = false,
        category = 'fu_ki_circuit_category',
        main_product = 'fu_ki_circuit_fluid',
        ingredients = {
            {type="item", name="fu_tech_sign_item", amount=4},
            {type="item", name="advanced-circuit", amount=16},
            {type="item", name="fu_space_probe_science_item", amount=1},
        },
        results = {
            {type="fluid", name="fu_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fu_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_2.png"
            }
        } 
    },
    {
        name = 'fu_ki_circuit_fluid_recipe_2',
        type = 'recipe',
        localised_name = {"fluid-name.fu_ki_circuit_fluid"},
        enabled = false,
        category = 'fu_ki_circuit_category',
        main_product = 'fu_ki_circuit_fluid',
        ingredients = {
            {type="item", name="fu_tech_sign_item", amount=4},
            {type="item", name="advanced-circuit", amount=16},
        },
        results = {
            {type="fluid", name="fu_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fu_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_3.png"
            }
        } 
    },
    {
        name = 'fu_ki_circuit_fluid_recipe_3',
        type = 'recipe',
        localised_name = {"fluid-name.fu_ki_circuit_fluid"},
        enabled = false,
        category = 'fu_ki_circuit_category',
        main_product = 'fu_ki_circuit_fluid',
        ingredients = {
            {type="item", name="fu_tech_sign_item", amount=3},
            {type="item", name="advanced-circuit", amount=12},
        },
        results = {
            {type="fluid", name="fu_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fu_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_4.png"
            }
        } 
    },
    {
        name = 'fi_ki_circuit_fluid_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.fi_ki_circuit_fluid"},
        enabled = false,
        category = 'fi_ki_circuit_category',
        main_product = 'fi_ki_circuit_fluid',
        ingredients = {
            {type="item", name="uranium-238", amount=6},
            {type="item", name="el_lithium_item", amount=6},
            {type="item", name="battery", amount=6},
        },
        results = {
            {type="fluid", name="fi_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_1.png"
            }
        } 
    },
    {
        name = 'fi_ki_circuit_fluid_recipe_1',
        type = 'recipe',
        localised_name = {"fluid-name.fi_ki_circuit_fluid"},
        enabled = false,
        category = 'fi_ki_circuit_category',
        main_product = 'fi_ki_circuit_fluid',
        ingredients = {
            {type="item", name="uranium-238", amount=4},
            {type="item", name="el_lithium_item", amount=4},
            {type="item", name="battery", amount=4},
        },
        results = {
            {type="fluid", name="fi_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_2.png"
            }
        } 
    },
    {
        name = 'fi_ki_circuit_fluid_recipe_2',
        type = 'recipe',
        localised_name = {"fluid-name.fi_ki_circuit_fluid"},
        enabled = false,
        category = 'fi_ki_circuit_category',
        main_product = 'fi_ki_circuit_fluid',
        ingredients = {
            {type="item", name="uranium-238", amount=4},
            {type="item", name="battery", amount=4},
        },
        results = {
            {type="fluid", name="fi_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_3.png"
            }
        } 
    },
    {
        name = 'fi_ki_circuit_fluid_recipe_3',
        type = 'recipe',
        localised_name = {"fluid-name.fi_ki_circuit_fluid"},
        enabled = false,
        category = 'fi_ki_circuit_category',
        main_product = 'fi_ki_circuit_fluid',
        ingredients = {
            {type="item", name="uranium-ore", amount=10},
        },
        results = {
            {type="fluid", name="fi_ki_circuit_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/fi_ki_circuit_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_4.png"
            }
        } 
    },
    --el_ki_cpu_entity
    {
        name = 'el_ki_cpu_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_ki_cpu_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type="item", name="steel-plate", amount=40},
            {type="item", name="concrete", amount=60},
            {type="item", name="advanced-circuit", amount=100},
            {type="item", name="el_materials_ALK", amount=100},
        },
        results = {
            {type="item", name="el_ki_cpu_item", amount=1},
        },
        energy_required = 30, 
    },
    --el_ki_cpu_fluid
    {
        name = 'el_ki_cpu_fluid_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_cpu_fluid"},
        enabled = false,
        category = 'el_ki_cpu_category',
        main_product = 'el_ki_cpu_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="green-wire", amount=10},
            {type="item", name="iron-plate", amount=10},
            {type="item", name="electronic-circuit", amount=10}, 
            {type="item", name="el_energy_crystal_item", amount=2},
        },
        results = {
            {type="fluid", name="el_ki_cpu_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_cpu_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_1.png"
            }
        } 
    },
    {
        name = 'el_ki_cpu_fluid_recipe_1',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_cpu_fluid"},
        enabled = false,
        category = 'el_ki_cpu_category',
        main_product = 'el_ki_cpu_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="green-wire", amount=10},
            {type="item", name="iron-plate", amount=8},
            {type="item", name="electronic-circuit", amount=8},
            {type="item", name="el_energy_crystal_item", amount=2},
        },
        results = {
            {type="fluid", name="el_ki_cpu_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_cpu_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_2.png"
            }
        } 
    },
    {
        name = 'el_ki_cpu_fluid_recipe_2',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_cpu_fluid"},
        enabled = false,
        category = 'el_ki_cpu_category',
        main_product = 'el_ki_cpu_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="green-wire", amount=8},
            {type="item", name="iron-plate", amount=8},
            {type="item", name="electronic-circuit", amount=8},
            {type="item", name="el_energy_crystal_item", amount=1},
        },
        results = {
            {type="fluid", name="el_ki_cpu_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_cpu_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_3.png"
            }
        } 
    },
    {
        name = 'el_ki_cpu_fluid_recipe_3',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_cpu_fluid"},
        enabled = false,
        category = 'el_ki_cpu_category',
        main_product = 'el_ki_cpu_fluid',
        ingredients = {
            --{type="fluid", name="water", amount=480},
            --{type="fluid", name="steam", amount=240, temperature=165},
            --{type="item", name="green-wire", amount=8},
            {type="item", name="iron-plate", amount=8},
            {type="item", name="electronic-circuit", amount=8},
        },
        results = {
            {type="fluid", name="el_ki_cpu_fluid", amount=200, temperature =500},
        },
        energy_required = 20,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_ki_cpu_fluid.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_4.png"
            }
        } 
    },

    --el_ki_core_cpu_memory
    {
        name = 'el_ki_cpu_memory_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_ki_cpu_fluid"},
        enabled = false,
        category = 'el_ki_core_category',
        icon = sprite('fluids/el_pressurized_water.png'),
        icon_size = 64,
        subgroup = 'el_item_subgroup_f',
        ingredients = {
            {type="fluid", name="el_ki_cpu_fluid", amount=550},
            {type="fluid", name="el_ki_memory_fluid", amount=550},    
        },
        results = {},
        energy_required = 15,
    },
    {
        name = 'fi_ki_cpu_memory_circuit_recipe',
        type = 'recipe',
        localised_name = {"item-name.fi_ki_science"},
        enabled = false,
        category = 'fi_ki_core_category',
        ingredients = {
            {type="fluid", name="el_ki_cpu_fluid", amount=550*3},
            {type="fluid", name="el_ki_memory_fluid", amount=550*3},
            {type="fluid", name="fi_ki_circuit_fluid", amount=550*3}    
        },
        results = {
            {type='item', name='fi_ki_science', amount=1}
        },
        energy_required = 15*3,
        always_show_made_in = true
    },
    {
        name = 'fu_ki_cpu_memory_circuit_recipe',
        type = 'recipe',
        localised_name = {"item-name.fu_ki_science"},
        enabled = false,
        category = 'fu_ki_core_category',
        ingredients = {
            {type="fluid", name="el_ki_cpu_fluid", amount=550*3},
            {type="fluid", name="el_ki_memory_fluid", amount=550*3},
            {type="fluid", name="fi_ki_circuit_fluid", amount=550*3},
            {type="fluid", name="fu_ki_circuit_fluid", amount=550*3}    
        },
        results = {
            {type='item', name='fu_ki_science', amount=1}
        },
        energy_required = 15*3,
        always_show_made_in = true
    },
    {
        name = 'el_arc_furnace_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_arc_furnace_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'steel-plate', amount = 25},
            {type = 'item', name = 'stone-furnace', amount = 2},
        },
        results = {
            {type = 'item', name = 'el_arc_furnace_item', amount = 1},
        },
        energy_required = 4,
    },
    {
        name = 'el_caster_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_caster_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'steel-plate', amount = 25},
            {type = 'item', name = 'electronic-circuit', amount = 20},
        },
        results = {
            {type = 'item', name = 'el_caster_item', amount = 1},
        },
        energy_required = 4,
    },
    {
        name = 'el_purifier_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_purifier_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'steel-plate', amount = 15},
            {type = 'item', name = 'electronic-circuit', amount = 10},
        },
        results = {
            {type = 'item', name = 'el_purifier_item', amount = 1},
        },
        energy_required = 4,
    },
    {
        name = 'el_grower_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_grower_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'steel-plate', amount = 15},
            {type = 'item', name = 'el_materials_ALK', amount = 15},
            {type = 'item', name = 'electronic-circuit', amount = 10},
        },
        results = {
            {type = 'item', name = 'el_grower_item', amount = 1},
        },
        energy_required = 4,
    },

    {
        name = 'el_purify_stone_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_pure_aluminum"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=100},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=10}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=100},
            {type="item", name="el_materials_pure_iron", amount=1},
            {type="item", name="el_materials_pure_copper", amount=1},
            {type="item", name="el_materials_pure_aluminum", amount=2},
        },
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_stone.png"
            }
        } 
    },
    {
        name = 'el_purify_stone_2_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_pure_aluminum"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=100},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=8}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=100},
            {type="item", name="el_materials_pure_aluminum", amount=2},
        },
        energy_required = 1,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_stone.png"
            }
        }
        
    },
    {
        name = 'el_purify_iron_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_pure_iron"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="iron-ore", amount=10}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=50},
            {type="item", name="el_materials_pure_iron", amount=5},
        },
        energy_required = 1,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_iron.png"
            }
        }
        
    },
    {
        name = 'el_purify_copper_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_pure_copper"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'el_dirty_water',
        ingredients = {
            {type="fluid", name="water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="copper-ore", amount=10}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=50},
            {type="item", name="el_materials_pure_copper", amount=5},
        },
        energy_required = 1,
        always_show_made_in = true,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_dirty_water.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_copper.png"
            }
        } 
    },
    {
        name = 'el_purify_stone_acidic_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_energy_crystal_item"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'el_energy_crystal_item',
        ingredients = {
            {type="fluid", name="el_acidic_water", amount=200},
            {type="fluid", name="water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=10}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=50},
            {type="item", name="el_energy_crystal_item", amount=1},
            {type="item", name="el_materials_pure_iron", amount=1},
            {type="item", name="el_materials_pure_copper", amount=1},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'el_purify_uranium_acidic_recipe',
        type = 'recipe',
        localised_name = {"item-name.uranium-235"},
        enabled = false,
        category = 'el_purifier_category',
        main_product = 'el_energy_crystal_item',
        ingredients = {
            {type="fluid", name="el_acidic_water", amount=1000},
            {type="fluid", name="water", amount=500},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="uranium-ore", amount=100}
        },
        results = {
            {type="fluid", name="el_dirty_water", amount=500},
            {type="item", name="el_energy_crystal_item", amount=50},
            {type="item", name="uranium-238", amount=9},
            {type="item", name="uranium-235", amount=1},
        },
        energy_required = 10,
        always_show_made_in = true
    },


    {
        name = 'el_aluminum_item_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_aluminum_item"},
        enabled = false,
        category = 'smelting',
        ingredients = {
            {type = "item", name = 'el_aluminum_ore_item',amount = 2},
        },
        results = {
            {type = "item", name = 'el_aluminum_item', amount = 4},
        },
        energy_required = 2,
        always_show_made_in = true,
        order = 'a-c',
    },
    {
        name = 'el_lithium_ore_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_lithium_item"},
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'el_lithium_item',
        ingredients = {
            {type="fluid", name="el_dirty_water", amount=50},
        },
        results = {
            {type="fluid", name="water", amount=50},
            {type="item", name="el_lithium_item", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'el_arc_pure_iron_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_arc_pure_iron"},
        enabled = false,
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="el_materials_pure_iron", amount=1},
        },
        results = {
            {type="fluid", name="el_arc_pure_iron", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'el_cast_pure_iron_recipe',
        type = 'recipe',
        localised_name = {"item-name.iron-plate"},
        enabled = false,
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="el_arc_pure_iron", amount=100},
        },
        results = {
            {type="item", name="iron-plate", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
        allow_decomposition = false
    },
    {
        name = 'el_cast_pure_steel_recipe',
        type = 'recipe',
        localised_name = {"item-name.steel-plate"},
        enabled = false,
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="el_arc_pure_iron", amount=500},
        },
        results = {
            {type="item", name="steel-plate", amount=1},
        },
        energy_required = 0.5,
        order = 'a-b',
        always_show_made_in = true,
        allow_decomposition = false
    },
    {
        name = 'el_arc_pure_copper_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_arc_pure_copper"},
        enabled = false,
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="el_materials_pure_copper", amount=1},
        },
        results = {
            {type="fluid", name="el_arc_pure_copper", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'el_cast_pure_copper_recipe',
        type = 'recipe',
        localised_name = {"item-name.copper-plate"},
        enabled = false,
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="el_arc_pure_copper", amount=100},
        },
        results = {
            {type="item", name="copper-plate", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
        allow_decomposition = false
    },
    {
        name = 'el_arc_pure_aluminum_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_arc_pure_aluminum"},
        enabled = false,
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="el_materials_pure_aluminum", amount=1},
        },
        results = {
            {type="fluid", name="el_arc_pure_aluminum", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'el_cast_pure_aluminum_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_aluminum_item"},
        enabled = false,
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="el_arc_pure_aluminum", amount=100},
        },
        results = {
            {type="item", name="el_aluminum_item", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },

    {
        name = 'el_ceramic_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_ceramic"},
        enabled = false,
        category = 'crafting-with-fluid',
        ingredients = {
            {type="fluid", name="steam", amount=30},
            {type="item", name="stone", amount=2},
        },
        results = {
            {type="item", name="el_materials_ceramic", amount=1},
        },
        energy_required = 1,
        order = 'a-b',
    },
    {
        name = 'el_ceramic_1_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_ceramic"},
        enabled = false,
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="stone", amount=4},
            {type="item", name="coal", amount=3},
        },
        results = {
            {type="item", name="el_materials_ceramic", amount=1},
        },
        energy_required = 1,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'el_ALK_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_materials_ALK"},
        enabled = false,
        ingredients = {
            {type="item", name="el_materials_ceramic", amount=2},
            {type="item", name="el_aluminum_item", amount=6},
        },
        results = {
            {type="item", name="el_materials_ALK", amount=3},
        },
        energy_required = 1,
        order = 'a-b',
    },
    {
        name = 'el_dirty_water_vent_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.water"},
        enabled = false,
        subgroup = 'el_item_subgroup_a',
        category = 'crafting-with-fluid',
        ingredients = {
            {type="fluid", name="el_dirty_water", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=100},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'el_dirty_water_vent_2_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.water"},
        enabled = false,
        subgroup = 'el_item_subgroup_a',
        category = 'el_purifier_category',
        ingredients = {
            {type="fluid", name="el_dirty_water", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=100},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'el_dirty_water_landfill_recipe',
        type = 'recipe',
        localised_name = {"item-name.landfill"},
        enabled = false,
        subgroup = 'el_item_subgroup_a',
        category = 'crafting-with-fluid',
        ingredients = {
            {type="fluid", name="el_dirty_water", amount=10000},
        },
        results = {
            {type="item", name="landfill", amount=1},
        },
        energy_required = 1,
        order = 'a-b',
    },
    {
        name = 'el_kerosene_basic_recipe',
        type = 'recipe',
        localised_name = {"fluid-name.el_kerosene"},
        enabled = false,
        category = 'oil-processing',
        main_product = 'el_kerosene',
        ingredients = {
            {type="fluid", name="crude-oil", amount=200},
            {type="fluid", name="steam", amount=80},
        },
        results = {
            {type="fluid", name="el_kerosene", amount=140},
            {type="fluid", name="water", amount=90},
        },
        energy_required = 5,
        icon_size = 64,
        icons = {
            {
                icon = "__248k-Redux-graphics__/ressources/fluids/el_kerosene.png"
            },
            {
                icon = "__248k-Redux-graphics__/ressources/icons/overlay_1.png"
            }
        } 
    },
    {
        name = 'el_charger_recipe',
        type = 'recipe',
        localised_name = {"entity-name.el_charger_entity"},
        enabled = false,
        category = 'crafting',
        ingredients = {
            {type = 'item', name = 'iron-gear-wheel', amount = 40},
            {type = 'item', name = 'steel-plate', amount = 25},
            {type = 'item', name = 'stone-furnace', amount = 2},
        },
        results = {
            {type = 'item', name = 'el_charger_item', amount = 1},
        },
        energy_required = 4,
    },
    {
        name = 'el_charge_crystal_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_energy_crystal_charged_item"},
        enabled = false,
        category = 'el_charger_category',
        ingredients = {
            {type='item', name='el_energy_crystal_item', amount=1},
        },
        results = {
            {type='item', name='el_energy_crystal_charged_item', amount=1},
        },
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'el_grenade_recipe',
        type = 'recipe',
        localised_name = {"item-name.el_grenade"},
        enabled = false,
        category = 'crafting',
        main_product = 'el_grenade',
        ingredients = {
            {type="item", name="el_energy_crystal_charged_item", amount=1},
            {type="item", name="grenade", amount=1},
        },
        results = {
            {type="item", name="el_grenade", amount=1},
        },
        energy_required = 4,
    },

    
})