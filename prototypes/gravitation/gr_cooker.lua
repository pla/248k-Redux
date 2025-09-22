--local functions
local function config(name)
    return settings.startup['gr_cooker_'..name].value
end

local function sprite(name)
    return '__248k-Redux-graphics__/ressources/gravitation/gr_cooker/gr_cooker_'..name
end

--item
data:extend({
    {
        name = 'gr_cooker_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'gr_cooker_entity',
        stack_size = 20,
        subgroup = 'gr_item_subgroup_c',
        order = 'a-b',
        weight = 200 * kg,
    },

})

--entity
data:extend({
  --prototype
  {
      name = 'gr_cooker_entity',
      type = 'assembling-machine',
      icon = sprite('item.png'),
      icon_size = 64,
      flags = {"player-creation","placeable-neutral"},
      max_health = 300,
      corpse = 'big-remnants',
      collision_box = {{-2.4,-2.4},{2.4,2.4}},
      selection_box = {{-2.5,-2.5},{2.5,2.5}},
      map_color = {r=0, g=0, b=1, a=1},
      minable = {
          mining_time = 1,
          result = 'gr_cooker_item',
      },
      crafting_categories = {'gr_cooker_fluid'},
      crafting_speed = 1,
      ingredient_count = 2,
      --fixed_recipe = 'el_water_pressure_recipe',
      energy_source = {
          type = 'electric',
          usage_priority = 'secondary-input',
          input_flow_limit = '400MW',
      },
      energy_usage = '4MW',
      fluid_boxes = {
          {
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
              {type = "input", position = {0, -3}},
            },
            production_type = "input"
          },
          { 
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
              {type = "input", position = {-3, 0}}
            },
            production_type = "input"
          },
          { 
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
              {type = "input", position = {3, 0}},
              --{type = "output", position = {2, -2.5}}
            },
            production_type = "input"
          },
          {
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
              {type = "input", position = {0, 3}},
            },
            production_type = "input"
          },
      },
      --animation
      animation = {
          north = {
              filename = sprite('entity_animation.png'),
              size = {512,512},
              scale = 0.32,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.2,
              shift = {0, -0.2}
          },
          east = {
              filename = sprite('entity_animation.png'),
              size = {512,512},
              scale = 0.32,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.2,
              shift = {0, -0.2}
          },
          south = {
              filename = sprite('entity_animation.png'),
              size = {512,512},
              scale = 0.32,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.2,
              shift = {0, -0.2}
          },
          west = {
              filename = sprite('entity_animation.png'),
              size = {512,512},
              scale = 0.32,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.2,
              shift = {0, -0.2}
          },
      },
      working_sound =
      {
        sound = {filename = "__base__/sound/chemical-plant-3.ogg" },
        apparent_volume = 0.3,
      },
  },
})