local clean_up_list = {
  "el_aluminum_ore",
  "el_lithium_ore",
  "el_ki_linker",
  "fi_crushed_iron",
  "fi_crushed_copper",
  "fi_crushed_aluminum",
  "fi_crushed_uranium",
  "fi_industrial_steel_blend",
  "fi_industrial_steel",
  "fi_compound_material",
  "fi_miner",
  "fi_base_crystal",
  "fi_catalyst_crystal",
}

for i, v in ipairs(clean_up_list) do
  if data.raw.item[v] then
    data.raw.item[v].hidden = true
  end

  if data.raw["item-with-tags"][v] then
    data.raw["item-with-tags"][v].hidden = true
  end
end
