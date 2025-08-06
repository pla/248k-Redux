--local functions
local function config(name)
    return settings.startup['fu_star_engine_core_'..name].value
end

local function sprite(name)
    return '__248k-Redux__/ressources/fusion/fu_star_engine/fu_star_engine_core/fu_star_engine_core_'..name
end

--item
data:extend({
    {
        name = 'fu_star_engine_core_item',
        type = 'item',
        icon = sprite('icon.png'),
        icon_size = 64,
        place_result = 'fu_star_engine_core_entity',
        stack_size = 1,
        subgroup = 'fu_item_subgroup_d-b',
        order = 'a-a',
    },

})

--entity
data:extend({
    --prototype
    {
        name = 'fu_star_engine_core_entity',
        type = 'assembling-machine',
        icon = sprite('icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","not-rotatable"},
        max_health = 300,
        corpse = 'big-remnants',
        collision_box = {{-8.4,-4.4},{8.4,8.4}},
        selection_box = {{-8.5,-4.5},{8.5,8.5}},
        map_color = {r=0, g=0, b=1, a=1},
        minable = {
            mining_time = 1,
            result = 'fu_star_engine_core_item',
        },
        crafting_categories = {'fu_star_engine_core_crafting_category'},
        crafting_speed = 1,
        energy_source = {
          type = 'electric',
          usage_priority = 'secondary-input',
          input_flow_limit = '4GW',
        },
        energy_usage = '1GW',
        --fluids
        fluid_boxes = {
            --in
            --left
            { 
                base_area = 1,
                height = 2,
                base_level = -1,
                volume = 100,
                pipe_connections =
                {
                  {flow_direction = "input", position = {-8, 4}, direction = 12},
                },
                production_type = "input"
            },
            { 
                base_area = 1,
                height = 2,
                base_level = -1,
                volume = 100,
                pipe_connections =
                {
                  {flow_direction = "input", position = {-8, 2}, direction = 12},
                },
                production_type = "input"
            },
            { 
                base_area = 1,
                height = 2,
                base_level = -1,
                volume = 100,
                pipe_connections =
                {
                  {flow_direction = "input", position = {-8, 0}, direction = 12},
                },
                production_type = "input"
            },
            --right
            { 
              base_area = 1,
              height = 2,
              base_level = -1,
                volume = 1000,
              pipe_connections =
              {
                {flow_direction = "input", position = {8, 4}, direction = 4},
              },
              production_type = "input"
          },
          { 
              base_area = 1,
              height = 2,
              base_level = -1,
                volume = 1000,
              pipe_connections =
              {
                {flow_direction = "input", position = {8, 2}, direction = 4},
              },
              production_type = "input"
          },
          { 
              base_area = 1,
              height = 2,
              base_level = -1,
                volume = 1000,
              pipe_connections =
              {
                {flow_direction = "input", position = {8, 0}, direction = 4},
              },
              production_type = "input"
          },
            --out
            --up
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
                volume = 100,
              pipe_connections =
              {
                {flow_direction = "output", position = {-2, -4}, direction = 0},
              },
              production_type = "output"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
                volume = 100,
              pipe_connections =
              {
                {flow_direction = "output", position = {2, -4}, direction = 0},
              },
              production_type = "output"
            },
            --down
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
                volume = 100,
              pipe_connections =
              {
                {flow_direction = "output", position = {-2, 8}, direction = 8},
              },
              production_type = "output"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
                volume = 100,
              pipe_connections =
              {
                {flow_direction = "output", position = {2, 8}, direction = 8},
              },
              production_type = "output"
            },
        },
        --animation
        graphics_set = {
          animation = {
            filename = sprite('base.png'),
            size = {1080, 1080},
            scale = 0.52,
            shift = {0,2.6},
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
                size = {1080, 1080},
                scale = 0.52,
                line_length = 3,
                lines_per_file = 3,
                frame_count = 9,
                animation_speed = 0.3,
                shift = {0,2.6} 
              },
              light = {
                type = "basic",
                intensity = 1,
                size = 24,
                color = {r=0.87 ,g=0.64 ,b=0.08 },
              }
            }
          },
        },
        working_sound = { 
            sound = { filename = '__base__/sound/heat-exchanger.ogg'},
            apparent_volume = 2.5,
        },
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions.create_vector(
          universal_connector_template, 
            {
              { variation =  1, main_offset = util.by_pixel( 112, 82.125), shadow_offset = util.by_pixel( 112, 82.125), show_shadow = true },
              { variation =  1, main_offset = util.by_pixel( 112, 82.125), shadow_offset = util.by_pixel( 112, 82.125), show_shadow = true },
              { variation =  1, main_offset = util.by_pixel( 112, 82.125), shadow_offset = util.by_pixel( 112, 82.125), show_shadow = true },
              { variation =  1, main_offset = util.by_pixel( 112, 82.125), shadow_offset = util.by_pixel( 112, 82.125), show_shadow = true },
            }
        )
    },
})