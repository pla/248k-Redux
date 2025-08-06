--local functions
local function config(name)
    return settings.startup['el_tank_'..name].value
end

local function sprite(name)
    return '__248k-Redux__/ressources/electronic/el_tank/el_tank_'..name
end

local tank_color = {r=1.7,g=1.7,b=1.7}

if data.raw["storage-tank"]["storage-tank"] then
    tank_color = data.raw["storage-tank"]["storage-tank"].map_color
end

--item
data:extend({
    {
        name = 'el_tank_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'el_tank_entity',
        stack_size = 20,
        subgroup = 'el_item_subgroup_c',
        order = 'a-c',
    },

})

--entity
data:extend({
    --prototype
    {
        name = 'el_tank_entity',
        type = 'storage-tank',
        icon = sprite('item.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        --minable
        minable = {
            mining_time = 1,
            result = 'el_tank_item',
        },
        max_health = 300,
        corpse = 'small-remnants',
        collision_box = {{-3.4,-3.4},{3.4,3.4}},
        selection_box = {{-3.5,-3.5},{3.5,3.5}},
        pictures = {
            picture = {
                filename = sprite('entity_picture.png'),
                width = 512,
                height = 512,
                scale = 1.11/2,
                shift = {0,-0.96},
            },
            window_background = {
                filename = sprite('blank.png'),
                width = 64,
                height = 64,
                scale = 0.5,
            },
            fluid_background = {
                filename = sprite('blank.png'),
                width = 64,
                height = 64,
                scale = 0.5,
            },
            flow_sprite = {
                filename = sprite('blank.png'),
                width = 64,
                height = 64,
                scale = 0.5,
            },
            gas_flow = {
                filename = sprite('blank.png'),
                width = 64,
                height = 64,
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                animation_speed = 1,
            }
        },
        flow_length_in_ticks = 1,
        fluid_box = {
            base_area = 5000,
            height = 1,
            base_level = 0,
            volume = 100000,
            pipe_covers = pipecoverspictures(),
            pipe_picture = grey_south_pipe_picture,
            pipe_connections =
            {
              {flow_direction = "input-output", position = {-3, 1}, direction = 12},
              {flow_direction = "input-output", position = {-3, -1}, direction = 12},

              {flow_direction = "input-output", position = {3, 1}, direction = 4},
              {flow_direction = "input-output", position = {3, -1}, direction = 4},

              {flow_direction = "input-output", position = {1, 3}, direction = 8},
              {flow_direction = "input-output", position = {1, -3}, direction = 0},

              {flow_direction = "input-output", position = {-1, 3}, direction = 8},
              {flow_direction = "input-output", position = {-1, -3}, direction = 0}
            },
            production_type = "input-output"
        },
        window_bounding_box = {{0,0},{1,1}},
        map_color = tank_color,
    circuit_wire_max_distance = 20,
    circuit_connector = circuit_connector_definitions.create_vector(
      universal_connector_template, 
      {
        { variation =  2, main_offset = util.by_pixel( 50.25, -126.25), shadow_offset = util.by_pixel( 50.25, -126.25), show_shadow = true },
        { variation =  2, main_offset = util.by_pixel( 50.25, -126.25), shadow_offset = util.by_pixel( 50.25, -126.25), show_shadow = true },
        { variation =  2, main_offset = util.by_pixel( 50.25, -126.25), shadow_offset = util.by_pixel( 50.25, -126.25), show_shadow = true },
        { variation =  2, main_offset = util.by_pixel( 50.25, -126.25), shadow_offset = util.by_pixel( 50.25, -126.25), show_shadow = true },
      }
    )
      },
})