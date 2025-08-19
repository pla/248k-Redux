--local functions
local function config(name)
    return settings.startup['gr_magnet_train_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/gravitation/gr_magnet_train/gr_magnet_train_'..name
end

--item
data:extend({
    {
        name = 'gr_magnet_train_item',
        type = 'item-with-entity-data',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'gr_magnet_train_entity',
        stack_size = 20,
        subgroup = 'gr_item_subgroup_b',
        order = 'b-a',
    },
    {
        name = 'gr_magnet_wagon_item',
        type = 'item-with-entity-data',
        icon = sprite('wagon_item.png'),
        icon_size = 64,
        place_result = 'gr_magnet_wagon_entity',
        stack_size = 20,
        subgroup = 'gr_item_subgroup_b',
        order = 'b-b',
    },
    {
        name = 'gr_magnet_tanker_item',
        type = 'item-with-entity-data',
        icon = sprite('wagon_item.png'),
        icon_size = 64,
        place_result = 'gr_magnet_tanker_entity',
        stack_size = 20,
        subgroup = 'gr_item_subgroup_b',
        order = 'b-c',
    },
})

--entity
data:extend({
    {
        name = 'gr_magnet_train_entity',
        type = 'locomotive',
        icon = sprite('item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","placeable-off-grid"},
        max_health = 1200,
		corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
        drawing_box = {{-1, -4}, {1, 3}},
        connection_distance = 3,
        joint_distance = 4,
        wheels = {
            rotated = {
                direction_count = 256,
                filenames = {
                    "__base__/graphics/entity/train-wheel/train-wheel-1.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-2.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-3.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-4.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-5.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-6.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-7.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-8.png"
                },
                height = 228,
                line_length = 4,
                lines_per_file = 8,
                priority = "very-low",
                scale = 0.5,
                shift = {
                    0.015625,
                    0.03125
                },
                usage = "train",
                width = 230
            }
        },
        rail_category = "regular",
        open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
        close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
        sound_minimum_speed = 0.2,
        allow_manual_color = false,
        minable = {
            mining_time = 1,
            result = 'gr_magnet_train_item',
        },
        --stats
        max_speed = 4.0,
        max_power = '40kW',
        braking_force = 1,
        friction_force = 0.00025,
        air_resistance = 0.0001,
        vertical_selection_shift = -0.5,
        energy_per_hit_point = 8,
        reversing_power_modifier = 0.5,
        weight = 10,
        --burner
        energy_source = {type = "void"},
        --light
        front_light = {
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture = {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200,
                },
                shift = {-0.3, -10},
                size = 1,
                intensity = 1.5,
            },
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture = {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200,
                },
                shift = {0.3, -10},
                size = 1,
                intensity = 1.5,
            },
        },
        --animation
        pictures = 
        {
            rotated =
            {
                layers =
                {
                    {
                        priority = "low",
                        width = 512,
                        height = 512,
                        direction_count = 128,
                        filenames = {sprite('animation_1.png'),sprite('animation_2.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    }
                },
            },
        },
        wheels = 
            {
                rotated =
                    {
                        priority = "low",
                        width = 512/2,
                        height = 512/2,
                        direction_count = 128,
                        filenames = {sprite('wheels_animation.png'),sprite('wheels_animation.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    },
            },
        --minimap
        minimap_representation = {
			filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
        },
        --stop trigger
        stop_trigger = {
            -- left side
            {
                type = "create-trivial-smoke",
                repeat_count = 75,
                smoke_name = "smoke-train-stop",
                initial_height = 0,
                -- smoke goes to the left
                speed = {-0.03, 0},
                speed_multiplier = 0.75,
                speed_multiplier_deviation = 1.1,
                offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}},
            },
            -- right side
            {
                type = "create-trivial-smoke",
                repeat_count = 75,
                smoke_name = "smoke-train-stop",
                initial_height = 0,
                -- smoke goes to the right
                speed = {0.03, 0},
                speed_multiplier = 0.75,
                speed_multiplier_deviation = 1.1,
                offset_deviation = {{0.3, -2.7}, {0.75, 2.7}},
            },
            {
                type = "play-sound",
                sound = {
                    {
                        filename = "__base__/sound/train-breaks.ogg",
                        volume = 0.6,
                    }
                },
            },
        },
        working_sound = { 
            sound = { filename ='__base__/sound/train-engine.ogg'},
            apparent_volume = 0.2,
        }, 
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact-6.ogg",
            volume = 0.8
        },

    },
    {
        name = 'gr_magnet_wagon_entity',
        type = 'cargo-wagon',
        icon = sprite('wagon_item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","placeable-off-grid"},
        max_health = 1200,
		corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
        drawing_box = {{-1, -4}, {1, 3}},
        connection_distance = 3,
        joint_distance = 4,
        wheels = {
            rotated = {
                direction_count = 256,
                filenames = {
                    "__base__/graphics/entity/train-wheel/train-wheel-1.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-2.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-3.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-4.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-5.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-6.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-7.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-8.png"
                },
                height = 228,
                line_length = 4,
                lines_per_file = 8,
                priority = "very-low",
                scale = 0.5,
                shift = {
                    0.015625,
                    0.03125
                },
                usage = "train",
                width = 230
            }
        },
        rail_category = "regular",
        open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
        close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
        sound_minimum_speed = 0.2,
        allow_manual_color = false,
        minable = {
            mining_time = 1,
            result = 'gr_magnet_wagon_item',
        },
        --stats
        max_speed = 4.0,
        friction_force = 0.00125,
        air_resistance = 0.00125,
        braking_force = 1,
        vertical_selection_shift = -0.5,
        energy_per_hit_point = 8,
        weight = 10,
        inventory_size = 80,
        --animation
        pictures = 
        {
            rotated =
            {
                layers =
                {
                    {
                        priority = "low",
                        width = 512,
                        height = 512,
                        direction_count = 128,
                        filenames = {sprite('wagon_animation.png'),sprite('wagon_animation.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    }
                },
            },
        },
        wheels = 
        {
            rotated =
            {
                priority = "low",
                width = 512/2,
                height = 512/2,
                direction_count = 128,
                filenames = {sprite('wheels_animation.png'),sprite('wheels_animation.png')},
                line_length = 8,
                lines_per_file = 8,
                shift = {0.2, -0.6},
                scale = 0.5,
            },
        },
        --minimap
        minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png", --original filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png", --original filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact-6.ogg",
            volume = 0.8
        },
    },
    {
        name = 'gr_magnet_tanker_entity',
        type = 'fluid-wagon',
        icon = sprite('wagon_item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","placeable-off-grid"},
        max_health = 1200,
		corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
        drawing_box = {{-1, -4}, {1, 3}},
        connection_distance = 3,
        joint_distance = 4,
        wheels = {
            rotated = {
                direction_count = 256,
                filenames = {
                    "__base__/graphics/entity/train-wheel/train-wheel-1.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-2.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-3.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-4.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-5.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-6.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-7.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-8.png"
                },
                height = 228,
                line_length = 4,
                lines_per_file = 8,
                priority = "very-low",
                scale = 0.5,
                shift = {
                    0.015625,
                    0.03125
                },
                usage = "train",
                width = 230
            }
        },
        rail_category = "regular",
        open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
        close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
        sound_minimum_speed = 0.2,
        allow_manual_color = false,
        minable = {
            mining_time = 1,
            result = 'gr_magnet_tanker_item',
        },
        --stats
        max_speed = 4.0,
        friction_force = 0.00125,
        air_resistance = 0.00125,
        braking_force = 1,
        vertical_selection_shift = -0.5,
        energy_per_hit_point = 8,
        weight = 10,
        capacity = 200000,
        tank_count = 3,
        --animation
        pictures = 
        {
            rotated =
            {
                layers =
                {
                    {
                        priority = "low",
                        width = 512,
                        height = 512,
                        direction_count = 128,
                        filenames = {sprite('wagon_animation.png'),sprite('wagon_animation.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    }
                },
            },
        },
        wheels = 
        {
            rotated =
                {
                    priority = "low",
                    width = 512/2,
                    height = 512/2,
                    direction_count = 128,
                    filenames = {sprite('wheels_animation.png'),sprite('wheels_animation.png')},
                    line_length = 8,
                    lines_per_file = 8,
                    shift = {0.2, -0.6},
                    scale = 0.5,
                },
        },
        --minimap
        minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact-6.ogg",
            volume = 0.8
        },
    },
    --===================================================
    --pre
    --===================================================
    {
        name = 'gr_magnet_train_pre_item',
        type = 'item-with-entity-data',
        icon = sprite('pre_item.png'),
        icon_size = 64,
        place_result = 'gr_magnet_train_pre_entity',
        stack_size = 20,
        subgroup = 'fu_item_subgroup_d',
        order = 'e-a',
    },
    {
        name = 'gr_magnet_wagon_pre_item',
        type = 'item-with-entity-data',
        icon = sprite('wagon_pre_item.png'),
        icon_size = 64,
        place_result = 'gr_magnet_wagon_pre_entity',
        stack_size = 20,
        subgroup = 'fu_item_subgroup_d',
        order = 'e-b',
    },
    {
        name = 'gr_magnet_tanker_pre_item',
        type = 'item-with-entity-data',
        icon = sprite('wagon_pre_item.png'),
        icon_size = 64,
        place_result = 'gr_magnet_tanker_pre_entity',
        stack_size = 20,
        subgroup = 'fu_item_subgroup_d',
        order = 'e-c',
    },
    {
        name = 'gr_magnet_train_pre_entity',
        type = 'locomotive',
        icon = sprite('pre_item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","placeable-off-grid"},
        max_health = 1200,
		corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
        drawing_box = {{-1, -4}, {1, 3}},
        connection_distance = 3,
        joint_distance = 4,
        wheels = {
            rotated = {
                direction_count = 256,
                filenames = {
                    "__base__/graphics/entity/train-wheel/train-wheel-1.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-2.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-3.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-4.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-5.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-6.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-7.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-8.png"
                },
                height = 228,
                line_length = 4,
                lines_per_file = 8,
                priority = "very-low",
                scale = 0.5,
                shift = {
                    0.015625,
                    0.03125
                },
                usage = "train",
                width = 230
            }
        },
        rail_category = "regular",
        open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
        close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
        sound_minimum_speed = 0.2,
        allow_manual_color = false,
        minable = {
            mining_time = 1,
            result = 'gr_magnet_train_pre_item',
        },
        --stats
        max_speed = 1.8,
        max_power = '40kW',
        braking_force = 1,
        friction_force = 0.00025,
        air_resistance = 0.0001,
        vertical_selection_shift = -0.5,
        energy_per_hit_point = 8,
        reversing_power_modifier = 0.5,
        weight = 10,
        --burner
        energy_source =
            {
                type = "burner",
                fuel_categories = {
                    'nuclear',
                    'fi_basic_fuel',
                    'fi_advanced_fuel',
                    'fi_pure_fuel',
                },
                fuel_inventory_size = 3,
                burnt_inventory_size = 3,
                effectivity = 0.001,
                emissions = {emissions_per_minute = 10},
            },
        --light
        front_light = {
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture = {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200,
                },
                shift = {-0.3, -10},
                size = 1,
                intensity = 1.5,
            },
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture = {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200,
                },
                shift = {0.3, -10},
                size = 1,
                intensity = 1.5,
            },
        },
        --animation
        pictures = 
        {
            rotated =
            {
                layers =
                {
                    {
                        priority = "low",
                        width = 512,
                        height = 512,
                        direction_count = 128,
                        filenames = {sprite('pre_animation_1.png'),sprite('pre_animation_2.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    }
                },
            },
        },
        wheels = 
            {
                rotated =
                    {
                    priority = "low",
                    width = 512/2,
                    height = 512/2,
                    direction_count = 128,
                    filenames = {sprite('wheels_animation.png'),sprite('wheels_animation.png')},
                    line_length = 8,
                    lines_per_file = 8,
                    shift = {0.2, -0.6},
                    scale = 0.5,
                    },
            },
        --minimap
        minimap_representation = {
			filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
        },
        --stop trigger
        stop_trigger = {
            -- left side
            {
                type = "create-trivial-smoke",
                repeat_count = 75,
                smoke_name = "smoke-train-stop",
                initial_height = 0,
                -- smoke goes to the left
                speed = {-0.03, 0},
                speed_multiplier = 0.75,
                speed_multiplier_deviation = 1.1,
                offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}},
            },
            -- right side
            {
                type = "create-trivial-smoke",
                repeat_count = 75,
                smoke_name = "smoke-train-stop",
                initial_height = 0,
                -- smoke goes to the right
                speed = {0.03, 0},
                speed_multiplier = 0.75,
                speed_multiplier_deviation = 1.1,
                offset_deviation = {{0.3, -2.7}, {0.75, 2.7}},
            },
            {
                type = "play-sound",
                sound = {
                    {
                        filename = "__base__/sound/train-breaks.ogg",
                        volume = 0.6,
                    }
                },
            },
        },
        working_sound = { 
            sound = { filename ='__base__/sound/train-engine.ogg'},
            apparent_volume = 0.2,
        }, 
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact-6.ogg",
            volume = 0.8
        },

    },
    {
        name = 'gr_magnet_wagon_pre_entity',
        type = 'cargo-wagon',
        icon = sprite('wagon_pre_item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","placeable-off-grid"},
        max_health = 1200,
		corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
        drawing_box = {{-1, -4}, {1, 3}},
        connection_distance = 3,
        joint_distance = 4,
        wheels = {
            rotated = {
                direction_count = 256,
                filenames = {
                    "__base__/graphics/entity/train-wheel/train-wheel-1.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-2.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-3.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-4.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-5.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-6.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-7.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-8.png"
                },
                height = 228,
                line_length = 4,
                lines_per_file = 8,
                priority = "very-low",
                scale = 0.5,
                shift = {
                    0.015625,
                    0.03125
                },
                usage = "train",
                width = 230
            }
        },
        rail_category = "regular",
        open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
        close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
        sound_minimum_speed = 0.2,
        allow_manual_color = false,
        minable = {
            mining_time = 1,
            result = 'gr_magnet_wagon_pre_item',
        },
        --stats
        max_speed = 1.5,
        friction_force = 0.00125,
        air_resistance = 0.00125,
        braking_force = 1,
        vertical_selection_shift = -0.5,
        energy_per_hit_point = 8,
        weight = 10,
        inventory_size = 40,
        --animation
        pictures = 
        {
            rotated =
            {
                layers =
                {
                    {
                        priority = "low",
                        width = 512,
                        height = 512,
                        direction_count = 128,
                        filenames = {sprite('wagon_pre_animation.png'),sprite('wagon_pre_animation.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    }
                },
            },
        },
        wheels = 
            {
            rotated =
                {
                    priority = "low",
                    width = 512/2,
                    height = 512/2,
                    direction_count = 128,
                    filenames = {sprite('wheels_animation.png'),sprite('wheels_animation.png')},
                    line_length = 8,
                    lines_per_file = 8,
                    shift = {0.2, -0.6},
                    scale = 0.5,
                },
            },
        --minimap
        minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png", --original filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",--original filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact-6.ogg",
            volume = 0.8
        },
    },
    {
        name = 'gr_magnet_tanker_pre_entity',
        type = 'fluid-wagon',
        icon = sprite('wagon_pre_item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","placeable-off-grid"},
        max_health = 1200,
		corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
        drawing_box = {{-1, -4}, {1, 3}},
        connection_distance = 3,
        joint_distance = 4,
        wheels = {
            rotated = {
                direction_count = 256,
                filenames = {
                    "__base__/graphics/entity/train-wheel/train-wheel-1.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-2.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-3.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-4.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-5.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-6.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-7.png",
                    "__base__/graphics/entity/train-wheel/train-wheel-8.png"
                },
                height = 228,
                line_length = 4,
                lines_per_file = 8,
                priority = "very-low",
                scale = 0.5,
                shift = {
                    0.015625,
                    0.03125
                },
                usage = "train",
                width = 230
            }
        },
        rail_category = "regular",
        open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
        close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
        sound_minimum_speed = 0.2,
        allow_manual_color = false,
        minable = {
            mining_time = 1,
            result = 'gr_magnet_tanker_pre_item',
        },
        --stats
        max_speed = 1.5,
        friction_force = 0.00125,
        air_resistance = 0.00125,
        braking_force = 1,
        vertical_selection_shift = -0.5,
        energy_per_hit_point = 8,
        weight = 10,
        capacity = 100000,
        tank_count = 3,
        --animation
        pictures = 
        {
            rotated =
            {
                layers =
                {
                    {
                        priority = "low",
                        width = 512,
                        height = 512,
                        direction_count = 128,
                        filenames = {sprite('wagon_pre_animation.png'),sprite('wagon_pre_animation.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    }
                },
            },
        },
        wheels = 
            {
                rotated =
                    {
                        priority = "low",
                        width = 512/2,
                        height = 512/2,
                        direction_count = 128,
                        filenames = {sprite('wheels_animation.png'),sprite('wheels_animation.png')},
                        line_length = 8,
                        lines_per_file = 8,
                        shift = {0.2, -0.6},
                        scale = 0.5,
                    },
            },
        --minimap
        minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
		},
		selected_minimap_representation = {
			filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
			flags = {"icon"},
			size = {20, 40},
			scale = 0.5,
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact-6.ogg",
            volume = 0.8
        },
    },
})