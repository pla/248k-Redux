--local functions
local function config(name)
    return settings.startup['el_water_generator_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/electronic/el_water_generator/el_water_generator_'..name
end

local function water_output()
    if config("power_output") == "4MW (normal)" then
        return "4MW"
    end

    if config("power_output") == "5MW (high)" then
        return "5MW"
    end

    if config("power_output") == "3MW (low)" then
        return "3MW"
    end
    
    return "3MW"
end

--item
data:extend({
    {
        name = 'el_water_generator_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'el_water_generator_entity',
        stack_size = 20,
        subgroup = 'el_item_subgroup_c',
        order = 'a-d',
        weight = 50 * kg
    },

})

--entity
data:extend({
    --prototype
    {
        name = 'el_water_generator_entity',
        type = 'generator',
        icon = sprite('entity_icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        max_health = 300,
        corpse = 'big-remnants',
        collision_box = {{-1.4, -3.4}, {1.4, 3.4}},
        selection_box = {{-1.5, -3.5}, {1.5, 3.5}},
        map_color = {r=0, g=0, b=1, a=1},
        minable = {
            mining_time = 1,
            result = 'el_water_generator_item',
        },
        --energy
        maximum_temperature = 500,
        fluid_usage_per_tick = 1,
        max_power_output = water_output(),
        effectivity = 0.9,
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -1,
            volume = 100,
            filter = 'el_pressurized_water',
            minimum_temperature = 0,
            maximum_temperature = 500,
            production_type = 'input-output',
            pipe_covers = pipecoverspictures(),
            pipe_picture = south_basic_pipe_picture,
            pipe_connections = {
                {flow_direction = "input-output", position = {1, 0}, direction = 4},  
                {flow_direction = "input-output", position = {-1, 0}, direction = 12},  
            },
        },
        fluid_input = {
            name = 'el_pressurized_water',
            amout = 0.0,
            minimum_temperature = 0,
        },
        energy_source = {
            type = 'electric',
            usage_priority = 'primary-output',
            input_flow_limit = '0W',
        },
        --animation
        vertical_animation = {
            filename = sprite('entity_animation_vertikal_1.png'),
            size = {480,896},
            scale = 0.22,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
        },
        horizontal_animation = {
            filename = sprite('entity_animation_horizontal_1.png'),
            size = {896,480},
            scale = 0.2,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
        },
        working_sound = { 
            sound = { filename ='__base__/sound/pipe.ogg'},
            apparent_volume = 0.1,
        },
    },
})