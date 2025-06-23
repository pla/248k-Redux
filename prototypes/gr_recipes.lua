data:extend({
    --crafter
    {
        name = 'gr_crafter_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fi_crafter_item', amount = 2},
            {type = 'item', name = 'fu_materials_KFK', amount = 100},
            {type = 'item', name = 'fu_materials_magnet', amount = 10},
            {type = 'item', name = 'gr_materials_fusion_cell_item', amount = 1},
            {type = 'item', name = 'gr_materials_circuit', amount = 10},
        },
        results = {
            {type = 'item', name = 'gr_crafter_item', amount = 1},
        },
        energy_required = 6,
    },
    {
        name = 'gr_materials_fusion_cell_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fi_crafting_category',
        ingredients = {
            {type = 'item', name = 'fu_space_probe_up_matter_item', amount = 1},
            {type = 'item', name = 'fu_tech_sign_item', amount = 40},
            {type = 'item', name = 'fusion-reactor-equipment', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_fusion_cell_item', amount = 1},
        },
        energy_required = 35,
    },
    {
        name = 'gr_materials_stack_down_item_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fu_space_probe_down_matter_item', amount = 2},
            {type = 'item', name = 'low-density-structure', amount = 10},
            {type = 'item', name = 'fu_space_probe_data_card_3_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_stack_down_item', amount = 1},
        },
        energy_required = 10,
    },
    {
        name = 'gr_materials_stack_up_item_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fu_space_probe_up_matter_item', amount = 2},
            {type = 'item', name = 'low-density-structure', amount = 10},
            {type = 'item', name = 'fu_space_probe_data_card_3_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_stack_up_item', amount = 1},
        },
        energy_required = 10,
    },
    {
        name = 'gr_wheel_recipe',
        type = 'recipe',
        category = 'crafting-with-fluid',
        enabled = false,
        subgroup = 'fu_star_engine_subgroup_e',
        ingredients = {
            {type="fluid", name="fu_iron", amount=500},
        },
        results = {
            {type="item", name="iron-gear-wheel", amount=500},
        },
        energy_required = 6,
    },
    {
        name = 'gr_steel_recipe',
        type = 'recipe',
        category = 'crafting-with-fluid',
        enabled = false,
        subgroup = 'fu_star_engine_subgroup_e',
        ingredients = {
            {type="fluid", name="fu_iron", amount=500},
        },
        results = {
            {type="item", name="steel-plate", amount=500},
        },
        energy_required = 6,
    },
    --train
    {
        name = 'gr_magnet_train_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="gr_materials_fusion_cell_item", amount=4},
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="gr_materials_stack_up_item", amount=4},
            {type="item", name="gr_materials_magnet", amount=20},
            {type="item", name="gr_magnet_train_pre_item", amount=1},
        },
        results = {
            {type="item", name="gr_magnet_train_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'gr_magnet_wagon_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="gr_materials_fusion_cell_item", amount=2},
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="gr_materials_stack_down_item", amount=2},
            {type="item", name="gr_materials_magnet", amount=20},
            {type="item", name="gr_magnet_wagon_pre_item", amount=1},
        },
        results = {
            {type="item", name="gr_magnet_wagon_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'gr_magnet_tanker_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="gr_materials_fusion_cell_item", amount=2},
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="gr_materials_stack_down_item", amount=2},
            {type="item", name="gr_materials_magnet", amount=20},
            {type="item", name="gr_magnet_tanker_pre_item", amount=1},
        },
        results = {
            {type="item", name="gr_magnet_tanker_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'gr_magnet_train_pre_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="fu_materials_TIM", amount=100},
            {type="item", name="fu_materials_magnet", amount=100},
            {type="item", name="fu_materials_energy_crystal", amount=100},
            {type="item", name="el_diesel_train_item", amount=1},
        },
        results = {
            {type="item", name="gr_magnet_train_pre_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'gr_magnet_wagon_pre_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="fu_materials_TIM", amount=100},
            {type="item", name="fu_materials_magnet", amount=100},
            {type="item", name="fu_materials_energy_crystal", amount=100},
            {type="item", name="cargo-wagon", amount=1},
        },
        results = {
            {type="item", name="gr_magnet_wagon_pre_item", amount=1},
        },
        energy_required = 6,
    },
    {
        name = 'gr_magnet_tanker_pre_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="fu_materials_KFK", amount=100},
            {type="item", name="fu_materials_TIM", amount=100},
            {type="item", name="fu_materials_magnet", amount=100},
            {type="item", name="fu_materials_energy_crystal", amount=100},
            {type="item", name="fluid-wagon", amount=1},
        },
        results = {
            {type="item", name="gr_magnet_tanker_pre_item", amount=1},
        },
        energy_required = 6,
    },
    --kovarex for matter 
    {
        name = 'gr_kovarex_recipe',
        type = 'recipe',
        category = 'centrifuging',
        enabled = false,
        main_product = 'fu_space_probe_up_matter_item',
        ingredients = {
            {type="item", name="fu_space_probe_down_matter_item", amount=10}
        },
        results = {
            {type="item", name="fu_space_probe_down_matter_item", amount=9},
            {type="item", name="fu_space_probe_up_matter_item", amount=1}
        },
        energy_required = 100,
        always_show_made_in = true
    },
    {
        name = 'gr_kovarex_2_recipe',
        type = 'recipe',
        category = 'centrifuging',
        enabled = false,
        main_product = 'fu_space_probe_down_matter_item',
        ingredients = {
            {type="item", name="fu_space_probe_up_matter_item", amount=10}
        },
        results = {
            {type="item", name="fu_space_probe_up_matter_item", amount=9},
            {type="item", name="fu_space_probe_down_matter_item", amount=1}
        },
        energy_required = 100,
        always_show_made_in = true
    },
    --charger
    {
        name = 'gr_charger_recipe',
        type = 'recipe',
        enabled = false,
        main_product = 'gr_charger_item',
        ingredients = {
            {type = 'item', name = 'low-density-structure', amount = 100},
            {type = 'item', name = 'fu_materials_KFK', amount = 100},
            {type = 'item', name = 'gr_materials_magnet', amount = 100},
            {type = 'item', name = 'fu_tech_sign_item', amount = 1000},
            {type = 'item', name = 'concrete', amount = 500},
            {type = 'item', name = 'lab', amount = 10},
            {type = 'item', name = 'gr_materials_circuit', amount = 100},
        },
        results = {
            {type="item", name="gr_charger_item", amount=1}
        },
        energy_required = 5
    },
    {
        name = 'gr_stabilizer_recipe',
        type = 'recipe',
        category = 'gr_charger_category',
        enabled = false,
        main_product = 'gr_materials_stabilizer_item',
        ingredients = {
            {type = 'item', name = 'gr_materials_crushed_exotic_item', amount = 1},
            {type = 'item', name = 'fu_materials_energy_crystal', amount = 10},
            {type = 'item', name = 'fu_tech_sign_item', amount = 10},
        },
        results = {
            {type="item", name="gr_materials_stabilizer_item", amount=4}
        },
        energy_required = 4,
        always_show_made_in = true
    },
    {
        name = 'gr_crushed_exotic_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fi_crushing',
        ingredients = {
            {type = 'item', name = 'fu_space_probe_ore_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_crushed_exotic_item', amount = 2},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'gr_black_hole_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fu_star_engine_core_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_heater_left_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_heater_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_cooler_up_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_cooler_item', amount = 1},
            {type = 'item', name = 'gr_materials_stack_up_item', amount = 40},
            {type = 'item', name = 'gr_materials_stack_down_item', amount = 40},
            {type = 'item', name = 'gr_materials_magnet', amount = 100},
        },
        results = {
            {type = 'item', name = 'gr_black_hole_item', amount = 1},
        },
        energy_required = 200,
    },
    {
        name = 'gr_white_hole_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fu_star_engine_core_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_heater_left_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_heater_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_cooler_up_item', amount = 1},
            {type = 'item', name = 'fu_star_engine_cooler_item', amount = 1},
            {type = 'item', name = 'gr_materials_stack_up_item', amount = 40},
            {type = 'item', name = 'gr_materials_stack_down_item', amount = 40},
            {type = 'item', name = 'gr_materials_magnet', amount = 100},
        },
        results = {
            {type = 'item', name = 'gr_white_hole_item', amount = 1},
        },
        energy_required = 200,
    },
    {
        name = 'gr_lab_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'gr_materials_stack_up_item', amount = 10},
            {type = 'item', name = 'gr_materials_stack_down_item', amount = 10},
            {type = 'item', name = 'lab', amount = 40},
            {type = 'item', name = 'fu_materials_KFK', amount = 100},
            {type = 'item', name = 'fu_materials_TIM', amount = 100},
            {type = 'item', name = 'gr_materials_magnet', amount = 100},
        },
        results = {
            {type = 'item', name = 'gr_lab_item', amount = 1},
        },
        energy_required = 20,
    },
    --endgame

    {
        name = 'gr_red_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'automation-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_red_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_red_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_red_data_item', amount = 36},
        },
        results = {
            {type = 'item', name = 'gr_materials_red_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },


    {
        name = 'gr_green_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'logistic-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_green_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_green_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_green_data_item', amount = 72},
            {type = 'item', name = 'gr_materials_red_item', amount = 2},
        },
        results = {
            {type = 'item', name = 'gr_materials_green_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },


    {
        name = 'gr_blue_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'chemical-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_blue_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_blue_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_blue_data_item', amount = 155},
            {type = 'item', name = 'gr_materials_green_item', amount = 2},
        },
        results = {
            {type = 'item', name = 'gr_materials_blue_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },


    {
        name = 'gr_purple_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'production-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_purple_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_purple_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_purple_data_item', amount = 310},
            {type = 'item', name = 'gr_materials_blue_item', amount = 2},
        },
        results = {
            {type = 'item', name = 'gr_materials_purple_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },
    

    {
        name = 'gr_yellow_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'utility-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_yellow_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_yellow_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_yellow_data_item', amount = 620},
            {type = 'item', name = 'gr_materials_purple_item', amount = 2},
        },
        results = {
            {type = 'item', name = 'gr_materials_yellow_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },



    {
        name = 'gr_grey_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'space-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_grey_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_grey_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_grey_data_item', amount = 1240},
            {type = 'item', name = 'gr_materials_yellow_item', amount = 2},
        },
        results = {
            {type = 'item', name = 'gr_materials_grey_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },


    {
        name = 'gr_white_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'fu_space_probe_science_item', amount = 100},
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_white_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_white_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_white_data_item', amount = 2480},
            {type = 'item', name = 'gr_materials_grey_item', amount = 2},
        },
        results = {
            {type = 'item', name = 'gr_materials_white_item', amount = 1},
        },
        energy_required = 100,
        always_show_made_in = true
    },


    




    {
        name = 'gr_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_crushed_exotic_item', amount = 1},
            {type = 'item', name = 'gr_materials_stabilizer_item', amount = 1},
            {type = 'item', name = 'gr_materials_circuit', amount = 20},
            {type = 'item', name = 'fi_modules_base_item', amount = 10},
        },
        results = {
            {type = 'item', name = 'gr_materials_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_stacked_data_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_fusor_crafting_category',
        ingredients = {
            {type = 'item', name = 'gr_materials_data_item', amount = 3},
            {type = 'item', name = 'gr_materials_stack_up_item', amount = 1},
            {type = 'item', name = 'gr_materials_stack_down_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        energy_required = 10,
        always_show_made_in = true
    },

    {
        name = 'gr_red_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'automation-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_red_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_green_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'logistic-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_green_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_blue_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'chemical-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_blue_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_purple_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'production-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_purple_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_yellow_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'utility-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_yellow_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_grey_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'space-science-pack', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_grey_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_white_pack_recipe',
        type = 'recipe',
        enabled = false,
        category = 'gr_charger_category',
        ingredients = {
            {type = 'item', name = 'fu_space_probe_science_item', amount = 100},
            {type = 'item', name = 'gr_materials_stacked_data_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_white_pack_item', amount = 100},
        },
        energy_required = 10,
        always_show_made_in = true
    },
    {
        name = 'gr_materials_charge_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'fu_space_probe_science_item', amount = 100},
            {type = 'item', name = 'low-density-structure', amount = 40},
            {type = 'item', name = 'gr_materials_fusion_cell_item', amount = 10},
            {type = 'item', name = 'discharge-defense-equipment', amount = 10},
        },
        results = {
            {type = 'item', name = 'gr_materials_charge_item', amount = 1},
        },
        energy_required = 10,
    },
    {
        name = 'gr_materials_charge_remote_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type = 'item', name = 'gr_materials_fusion_cell_item', amount = 1},
        },
        results = {
            {type = 'item', name = 'gr_materials_charge_remote', amount = 1},
        },
        energy_required = 10,
    },

    {
        name = 'gr_circuit_recipe',
        type = 'recipe',
        enabled = false,
        category = 'crafting-with-fluid',
        main_product = 'gr_materials_circuit',
        ingredients = {
            {type="item", name="gr_materials_gold_wire", amount=10},
            {type="item", name="copper-cable", amount=10},
            {type="item", name="gr_materials_pcb", amount=1},
            {type="fluid", name="fi_strong_acid", amount=50},
        },
        results = {
            {type="fluid", name="water", amount=50},
            {type="item", name="gr_materials_circuit", amount=1},
        },
        energy_required = 1,
        order = 'a-b',
    },
    {
        name = 'gr_gold_wire_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="fi_materials_gold", amount=1},
        },
        results = {
            {type="item", name="gr_materials_gold_wire", amount=2},
        },
        energy_required = 1,
        order = 'a-b',
    },
    {
        name = 'gr_pcb_recipe',
        type = 'recipe',
        enabled = false,
        category = 'chemistry',
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=30},
            {type="item", name="fi_materials_glass_fiber", amount=1},
            {type="item", name="fu_materials_carbon_fiber", amount=1},
            {type="item", name="processing-unit", amount=5},
            {type="item", name="plastic-bar", amount=4},
        },
        results = {
            {type="item", name="gr_materials_pcb", amount=1},
        },
        energy_required = 2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'gr_magnet_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_magnet_category',
        main_product = 'gr_materials_magnet',
        ingredients = {
            {type="fluid", name="fu_lead_fluid_cold", amount=10},
            {type="item", name="gr_materials_plasma_cube", amount=2},
            {type="item", name="fu_materials_magnet", amount=1},
        },
        results = {
            {type="fluid", name="fu_lead_fluid_hot", amount=10},
            {type="item", name="gr_materials_magnet", amount=1},
        },
        energy_required = 2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'gr_plasma_cube_recipe',
        type = 'recipe',
        enabled = false,
        category = 'fu_plasma_category',
        main_product = 'gr_materials_plasma_cube',
        ingredients = {
            {type="fluid", name="fu_lead_fluid_cold", amount=10},
            {type="item", name="fu_materials_KFK", amount=2},
            {type="item", name="fi_materials_gold", amount=1},
        },
        results = {
            {type="fluid", name="fu_lead_fluid_hot", amount=10},
            {type="item", name="gr_materials_plasma_cube", amount=1},
        },
        energy_required = 2,
        order = 'a-b',
        always_show_made_in = true
    },
})