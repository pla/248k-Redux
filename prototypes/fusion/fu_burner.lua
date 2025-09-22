--local functions
local function config(name)
    return settings.startup['fu_burner_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/fusion/fu_burner/fu_burner_'..name
end

--item
data:extend({
    {
        name = 'fu_burner_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'fu_burner_entity',
        stack_size = 20,
        subgroup = 'el_item_subgroup_c',
        order = 'a-a',
        weight = 100 * kg,
    },
})

--entity
data:extend({
{
    name = 'fu_burner_entity',
    type = 'furnace',
    icon = sprite('entity_icon.png'),
    icon_size = 64,
    flags = {"player-creation","placeable-neutral"},
    --minable
    minable = {
        mining_time = 1,
        result = 'fu_burner_item',
    },
    max_health = 150,
    corpse = 'small-remnants',
    crafting_categories = {'fu_burner_category'},
    collision_box = {{-1.4,-1.4},{1.4,1.4}},
    selection_box = {{-1.5,-1.5},{1.5,1.5}},
    result_inventory_size = 2,
    source_inventory_size = 1,
    --energy
    effectivity = 1,
    energy_source = {
        type = 'electric',
        usage_priority = 'secondary-input',
        buffer_capacity = '5MJ',
    },
    module_slots = 4,
    allowed_effects = {"speed", "consumption", "pollution"},
        module_specification = {
            module_info_icon_shift = {
              0,
              0.8
            },
            module_slots = 4
        },
    crafting_speed = 1,
    energy_usage = '500kW',
    fluid_boxes = {
        {
            base_area = 1,
            height = 2,
            base_level = -1,
            volume = 100,
            production_type = "input", 
            pipe_covers = pipecoverspictures(),
            pipe_picture = south_basic_pipe_picture,
            pipe_connections = {
                {flow_direction = "input", position = {1, 0}, direction = 4},  --Toca especificar la direccion de la tuberia, tambien se cambio la position de 2,0 a 1,0
                --tambien se cambio type a flow_direction
                --{type = "output", position = {-2, 0}},  
            },
        },
        {
            base_area = 1,
            height = 2,
            base_level = 1,
            volume = 100,
            production_type = 'output', 
            pipe_covers = pipecoverspictures(),
            pipe_picture = south_basic_pipe_picture,
            pipe_connections = {
                {flow_direction = "output", position = {-1, 0}, direction = 12},
                --{type = "output", position = {-2, 0}},  
                --{type = "output", position = {-2, 0}},  
            },
        }
    },
    --animation
    graphics_set = {
        animation = {
            filename = sprite('entity_animation.png'),
            size = {420,448},
            scale = 0.265,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.5,
            shift = {0,-0.5}
        },
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
            position = {-0.6,-1.8},
            --deviation = {x = -2, y = -2},
            duration = 0.5,
        },
    },
},
})