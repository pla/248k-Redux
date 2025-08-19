--local functions
local function config(name)
    return settings.startup['el_burner_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/electronic/el_burner/el_burner_'..name
end

local function burner_output()
    if config("power_output") == "2.4MW (normal)" then
        return "2.4MW"
    end

    if config("power_output") == "3MW (high)" then
        return "3MW"
    end

    if config("power_output") == "1.2MW (low)" then
        return "1.2MW"
    end
    
    return "2.4MW"
end

--item
data:extend({
    {
        name = 'el_burner_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'el_burner_entity',
        stack_size = 20,
        subgroup = 'el_item_subgroup_c',
        order = 'a-a',
        weight = 50 * kg
    },
    {
        name = 'el_burner_kerosene_item',
        type = 'item',
        icon = sprite('kerosene_item.png'),
        icon_size = 64,
        place_result = 'el_burner_kerosene_entity',
        stack_size = 20,
        subgroup = 'el_item_subgroup_c',
        order = 'a-a',
        weight = 50 * kg
    },
    

})

--entity
data:extend({
    --prototype
    {
        name = 'el_burner_entity',
        type = 'burner-generator',
        icon = sprite('entity_icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral", "not-rotatable"},
        --minable
        minable = {
            mining_time = 1,
            result = 'el_burner_item',
        },
        max_health = 150,
        corpse = 'small-remnants',
        collision_box = {{-1.4,-1.4},{1.4,1.4}},
        selection_box = {{-1.5,-1.5},{1.5,1.5}},
        --energy
        burner = {
            type = 'burner',
            fuel_inventory_size = 3,
            burnt_inventory_size = 3,
            effectivity = 0.95,
            emissions = {emissions_per_minute = 20},
            fuel_categories = {"chemical", "charged_fuel"},
            smoke = {
                {
                    name = 'smoke',
                    tape = 'trival-smoke',
                    frequency = 20,
                    position = {-0.6,-1.6},
                    --deviation = {x = -2, y = -2},
                    duration = 1,
                },
            },
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output',
            input_flow_limit = '0W',
        },
        max_power_output = burner_output(),
        --animation
        animation = {
            filename = sprite('entity_animation.png'),
            size = {386,448},
            scale = 0.26,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {0,-0.2}
        },
        map_color = {r=0, g=0, b=1, a=1},
        working_sound =
        {
            sound = { filename = "__base__/sound/furnace.ogg" },
            apparent_volume = 1.5,
        },
    },
    
    --kerosene
    {
        name = 'el_burner_kerosene_entity',
        type = 'generator',
        icon = sprite('kerosene_entity_icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral", "not-rotatable"},
        --minable
        minable = {
            mining_time = 1,
            result = 'el_burner_kerosene_item',
        },
        max_health = 150,
        corpse = 'small-remnants',
        collision_box = {{-1.4,-1.4},{1.4,1.4}},
        selection_box = {{-1.5,-1.5},{1.5,1.5}},
        --energy
        effectivity = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output',
            input_flow_limit = '0W',
            emissions= {emissions_per_minute = 20},
        },
        max_power_output = burner_output(),
        maximum_temperature = 40,
        scale_fluid_usage = true,
        burns_fluid = true,
        fluid_usage_per_tick = 1,
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -1,
            volume = 100,
            filter = 'el_desulfurized_kerosene',
            pipe_covers = pipecoverspictures(),
            pipe_picture = south_basic_pipe_picture,
            minimum_temperature = 0,
            maximum_temperature = 40,
            production_type = 'input-output', 
            pipe_connections = {
                {flow_direction = "input-output", position = {1, 0}, direction = 4},
                {flow_direction = "input-output", position = {-1, 0}, direction = 12},
                {flow_direction = "input-output", position = {0, 1}, direction = 8},
                {flow_direction = "input-output", position = {0, -1}, direction = 0},
            },
        },
        fluid_input = {
            name = 'el_desulfurized_kerosene',
            minimum_temperature = 0,
        },
        --animation
        vertical_animation = {
            filename = sprite('kerosene_entity_animation.png'),
            size = {420,448},
            --filename = sprite('test.png'),
            --size = {512,512},
            scale = 0.265,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.5,
            shift = {0,-0.5}
        },
        horizontal_animation = {
            filename = sprite('kerosene_entity_animation.png'),
            size = {420,448},
            --filename = sprite('test.png'),
            --size = {512,512},
            scale = 0.265,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.5,
            shift = {0,-0.5}
        },
        map_color = {r=0, g=0, b=1, a=1},
        working_sound =
        {
            sound = { filename = "__base__/sound/furnace.ogg" },
            apparent_volume = 1.5,
        },
        smoke = {
            {
                name = 'smoke',
                tape = 'trival-smoke',
                frequency = 0.5,
                position = {-0.6,-2.2},
                --deviation = {x = -2, y = -2},
                duration = 0.5,
            },
        },
    },
})