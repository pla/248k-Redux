local clean_up_list = {
    "el_aluminum_ore_item",
    "el_lithium_ore_item",
    "el_ki_linker",
    "fi_crushed_iron_item",
    "fi_crushed_copper_item",
    "fi_crushed_aluminum_item",
    "fi_crushed_uranium_item",
    "fi_industrial_steel_blend_item",
    "fi_industrial_steel_item",
    "fi_compound_material_item",
    "fi_miner_item",
    "fi_base_crystal_item",
    "fi_catalyst_crystal_item"
}
--Encontre el error,en "data.raw.item[v].flags ="el "hidden" ya no es valido
-- Que es lo que estaba intentando lograr con esta función?

local function clean_up(clean_up_list)
    for i,v in ipairs(clean_up_list) do
        if data.raw.item[v] then
            data.raw.item[v].flags = { 
                "hidden"
             }
        end

--Encontre el error,en "data.raw["item-with-tags"][v].flags ="el "hidden" ya no es valido
        if data.raw["item-with-tags"][v] then
            data.raw["item-with-tags"][v].flags = { 
                "hidden"
             }
        end
    end
end

clean_up(clean_up_list)