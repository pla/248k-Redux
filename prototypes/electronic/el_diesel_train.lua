local meld = require("__core__.lualib.meld")
--local functions
local function config(name)
  return settings.startup["el_diesel_train_" .. name].value
end

local function sprite(name)
  return "__248k-Redux__/ressources/electronic/el_diesel_train/el_diesel_train_" .. name
end

--item
data:extend({
  {
    name = "el_diesel_train_item",
    type = "item-with-entity-data",
    icon = sprite("item.png"),
    icon_size = 64,
    place_result = "el_diesel_train_entity",
    stack_size = 20,
    subgroup = "el_item_subgroup_d",
    order = "a-a",
  },
})

--entity
data:extend({
  meld(table.deepcopy(data.raw.locomotive.locomotive), {
    name = "el_diesel_train_entity",
    type = "locomotive",
    icon = sprite("entity_icon.png"),
    icon_size = 64,
    flags = { "player-creation", "placeable-neutral", "placeable-off-grid" },
    max_health = 1200,
    collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
    selection_box = { { -1, -3 }, { 1, 3 } },
    drawing_box = { { -1, -4 }, { 1, 3 } },
    connection_distance = 3,
    joint_distance = 4,
    rail_category = "regular",
    allow_manual_color = false,
    minable = {
      mining_time = 1,
      result = "el_diesel_train_item",
    },
    --stats
    max_speed = 1.20,
    max_power = "1800kW",
    braking_force = 40,
    friction_force = 0.00825,
    air_resistance = 0.00225,
    vertical_selection_shift = -0.5,
    energy_per_hit_point = 8,
    reversing_power_modifier = 0.5,
    weight = 3200,
    --grid
    equipment_grid = "el_train_equipment_grid",
    --burner
    energy_source = meld.overwrite({
      type = "burner",
      fuel_categories = { "el_train_fuel" },
      fuel_inventory_size = 3,
      effectivity = 1,
      emissions = { emissions_per_minute = 20 },
      smoke = {
        {
          name = "train-smoke",
          deviation = { 0.3, 0.3 },
          frequency = 300,
          position = { 0, 0 },
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        },
      },
    }),
    --animation
    pictures = meld.overwrite({
      rotated = {
        layers = {
          {
            priority = "low",
            width = 512,
            height = 512,
            direction_count = 128,
            filenames = { sprite("animation_1.png"), sprite("animation_2.png") },
            line_length = 8,
            lines_per_file = 8,
            shift = { 0.2, -0.6 },
            scale = 0.5,
          },
        },
      },
    }),
  })
})
