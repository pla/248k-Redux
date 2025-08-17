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
--Encontre el error,en "data.raw.item[v].flags ="el "hidden" ya no es valido
-- Que es lo que estaba intentando lograr con esta función?
--Voy a ocultarlo por el momento para poder continuar con el resto del mod ya cuando pueda abrir el juego vere que hace esto

local function clean_up(clean_up_list)
    for i,v in ipairs(clean_up_list) do
        if data.raw.item[v] then
            data.raw.item[v].hidden = true
        end

--Encontre el error,en "data.raw["item-with-tags"][v].flags ="el "hidden" ya no es valido
        if data.raw["item-with-tags"][v] then
            data.raw["item-with-tags"][v].hidden = true
        end
    end
end

clean_up(clean_up_list)
