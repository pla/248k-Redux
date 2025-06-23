function gr_make_white_hole_recipe(item)
    local blank = {
        name = 'blank',
        type = 'recipe',
        enabled = true,
        hidden = true,
        allow_as_intermediate = false,
        category = 'gr_white_hole_category',
        ingredients = {
            {type = "item", name = 'blank', amount = 1}
        },
        results = {
            {type = 'item', name = 'blank', amount = 2},
        },
        energy_required = 10,
    }
    blank["name"] = "gr_white_hole_cycle_"..item.."_recipe"
    blank["ingredients"] = {
            {type = "item", name = item, amount = 1}
        }
    blank["results"] = {
            {type = "item", name = item, amount = 1}
        }

    --table.insert(data.raw.recipe, base)
    data:extend({blank})
end

function gr_white_hole_recipe_generator()
    local items = data.raw.item
    for i,v in pairs(items) do
        if tonumber(data.raw.item[i].stack_size) > 1 then
            gr_make_white_hole_recipe(data.raw.item[i].name)
        end
    end
end


gr_white_hole_recipe_generator()