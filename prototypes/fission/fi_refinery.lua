--local functions
local function config(name)
    return settings.startup['fi_refinery_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/fission/fi_refinery/fi_refinery_'..name
end

--item
data:extend({
    {
        name = 'fi_refinery_item',
        type = 'item',
        icon = sprite('icon.png'),
        icon_size = 64,
        place_result = 'fi_refinery_entity',
        stack_size = 20,
        subgroup = 'fi_item_subgroup_c',
        order = 'a-c',
    },

})

--entity
data:extend({
    --prototype
    {
        name = 'fi_refinery_entity',
        type = 'assembling-machine',
        icon = sprite('icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        max_health = 300,
        corpse = 'big-remnants',
        collision_box = {{-3.4,-3.4},{3.4,3.4}},
        selection_box = {{-3.5,-3.5},{3.5,3.5}},
        map_color = {r=0, g=0, b=1, a=1},
        minable = {
            mining_time = 1,
            result = 'fi_refinery_item',
        },
        crafting_categories = {'fi_refining'},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions = {emissions_per_minute = 20},
            --input_flow_limit = '4MW',
        },
        energy_usage = '1MW',
        module_slots = 4,
        allowed_effects = {"speed", "productivity", "consumption", "pollution"},
        module_specification = {
            module_info_icon_shift = {
              0,
              0.8
            },
            module_slots = 4
        },

        fluid_boxes = {
            {
              base_area = 1,
              height = 2,
              base_level = -1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "input", position = {1, 3}, direction = 8},
              },
              production_type = "input"
            },
            {
              base_area = 1,
              height = 2,
              base_level = -1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "input", position = {-1, 3}, direction = 8},
              },
              production_type = "input"
            },

            {
              base_area = 1,
              height = 2,
              base_level = 1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "output", position = {1, -3}, direction = 0},
              },
              production_type = "output"
            },
            {
              base_area = 1,
              height = 2,
              base_level = 1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "output", position = {-1, -3}, direction = 0},
              },
              production_type = "output"
            },

            {
              base_area = 1,
              height = 2,
              base_level = -1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "input", position = {-3, -1}, direction = 12},
              },
              production_type = "input"
            },
            {
              base_area = 1,
              height = 2,
              base_level = -1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "input", position = {-3, 1}, direction = 12},
              },
              production_type = "input"
            },

            {
              base_area = 1,
              height = 2,
              base_level = 1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "output", position = {3, 1}, direction = 4},
              },
              production_type = "output"
            },
            {
              base_area = 1,
              height = 2,
              base_level = 1,
              volume = 100,
              pipe_covers = pipecoverspictures(),
              pipe_picture = grey_south_pipe_picture,
              pipe_connections =
              {
                {flow_direction = "output", position = {3, -1}, direction = 4},
              },
              production_type = "output"
            },
            
        },

        --animation
        graphics_set = {
          animation = {
            filename = sprite('base.png'),
            size = {1024, 1024},
            scale = 0.339,
            shift = {1.31,-1.9},
            line_length = 1,
            lines_per_file = 1,
            frame_count = 1,
            animation_speed = 1,
          },
          working_visualisations = {
            {
              animation = 
              {
                filename = sprite('animation.png'),
                size = {1024, 1024},
                scale = 0.339,
                line_length = 3,
                lines_per_file = 3,
                frame_count = 9,
                animation_speed = 0.3,
                shift = {1.31,-1.9} 
              },
              light = {
                type = "basic",
                intensity = 1,
                size = 16,
                color = {r=1 ,g=1 ,b=1 },
              }
            }
          },
        },
        working_sound = { 
            sound = { filename ='__base__/sound/electric-mining-drill.ogg'},
            apparent_volume = 2.7,
        },
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions.create_vector(
      universal_connector_template, 
      {
        { variation =  0, main_offset = util.by_pixel( 31.125, -5.125), shadow_offset = util.by_pixel( 31.125, -5.125), show_shadow = true },
        { variation =  0, main_offset = util.by_pixel( 31.125, -5.125), shadow_offset = util.by_pixel( 31.125, -5.125), show_shadow = true },
        { variation =  0, main_offset = util.by_pixel( 31.125, -5.125), shadow_offset = util.by_pixel( 31.125, -5.125), show_shadow = true },
        { variation =  0, main_offset = util.by_pixel( 31.125, -5.125), shadow_offset = util.by_pixel( 31.125, -5.125), show_shadow = true },
      }
    )
    },
})