--local gr_gui = require('scripts/gravitation/gui')
--===================================================================================================================
--TODO
--===================================================================================================================

--init storage 
--when builded register
--when destroyed unregister

--build gui when base opend
--start button

--spawn, register energy
--check nth tick for stabilizer and other

--calc output, stable
--write in storage

--output power, clear inv

--===================================================================================================================
--init
--===================================================================================================================

function gr_black_hole_init()
    if not storage.black_hole then --init is not guaranteed to run only once during whole game(?)
        storage.black_hole =  {}
        storage.black_hole.base = {}
        storage.black_hole.energy = {}
        storage.black_hole.dirty = false
        storage.black_hole.counter = 0

        storage.black_hole.gui = {}
        storage.black_hole.gui.frame = nil
        storage.black_hole.gui.id = nil
    end
end

--===================================================================================================================
--on built
--===================================================================================================================

function gr_black_hole_on_built(e)
    if e['entity'] then
        if e['entity'].name == "gr_black_hole_base_entity" then
           make_black_hole(e['entity'])
           --game.print("make")
        end     
    end

    if e['created_entity'] then
        if e['created_entity'].name == "gr_black_hole_base_entity" then
            make_black_hole(e['created_entity'])
        end
    end
end

--===================================================================================================================
--on remove
--===================================================================================================================

function gr_black_hole_on_remove(e)
    if e["entity"] then
        if e["entity"].name == "gr_black_hole_base_entity" then
            if e["player_index"] then
                destroy_black_hole(e["entity"],e["player_index"],nil)
            elseif e["robot"] then
                destroy_black_hole(e["entity"],nil,e["robot"])
            else 
                destroy_black_hole(e["entity"],nil,nil)
            end
        end
    end
end

--===================================================================================================================
--make
--===================================================================================================================

function make_black_hole(entity)
    register_black_hole_base(entity)

    storage.black_hole.dirty = true
    --gr_gui.update_main()
end

function make_black_hole_energy(base_entity)
    local slave = create_black_hole_energy(base_entity)
    register_black_hole_energy(slave)
    link_base_energy(base_entity,slave)
    --game.print("from make: "..slave.unit_number)

    storage.black_hole.dirty = true
    --gr_gui.update_main()
end
--===================================================================================================================
--destoy
--===================================================================================================================

function destroy_black_hole(entity,player,robot)
    local slave = nil

    if storage.black_hole.base then
        if storage.black_hole.base[entity.unit_number] then

            if storage.black_hole.base[entity.unit_number].energy then
                if storage.black_hole.energy[storage.black_hole.base[entity.unit_number].energy] then
                    if storage.black_hole.energy[storage.black_hole.base[entity.unit_number].energy].entity then
                        slave = storage.black_hole.energy[storage.black_hole.base[entity.unit_number].energy].entity
                    end
                end
            end

            unregister_black_hole(entity)
            if slave then
                destroy_energy(slave)
            end
        end
    end

    

    storage.black_hole.dirty = true
    --gr_gui.update_main()
end

--===================================================================================================================
--register
--===================================================================================================================

function register_black_hole_base(entity)
    local unit = entity.unit_number

    storage.black_hole.base[unit] = {}
    storage.black_hole.base[unit].entity = entity
    storage.black_hole.base[unit].energy = nil

    storage.black_hole.base[unit].active = false

    --game.print("register base: "..unit)
end

function register_black_hole_energy(entity)
    local unit = entity.unit_number

    storage.black_hole.energy[unit] = {}
    storage.black_hole.energy[unit].entity = entity
    storage.black_hole.energy[unit].base = nil
    storage.black_hole.energy[unit].total = 0
    storage.black_hole.energy[unit].stabilizers = 100
    storage.black_hole.energy[unit].power_gen = 0
    storage.black_hole.energy[unit].matter_consumption = 0
    storage.black_hole.energy[unit].stable = 0

    --game.print("from erngy make: "..unit)
end

function link_base_energy(base_entity,energy)
    local unit_base = base_entity.unit_number
    local unit_energy = energy.unit_number
    if storage.black_hole.base[unit_base] then
        if storage.black_hole.energy[unit_energy] then
            storage.black_hole.base[unit_base].energy = unit_energy
            storage.black_hole.energy[unit_energy].base = unit_base
            storage.black_hole.base[unit_base].active = true
        end
    end
end
--===================================================================================================================
--unregister
--===================================================================================================================

function unregister_black_hole(entity)
    local unit = entity.unit_number
    if storage.black_hole.base[unit].energy then
        --game.print("unregister base.energy: "..storage.black_hole.base[unit].energy)
        unregister_black_hole_energy(nil,storage.black_hole.base[unit].energy)
        unregister_black_hole_base(entity,nil)
    else
        --game.print("2")
        unregister_black_hole_base(entity,nil)
    end
end

function unregister_black_hole_base(entity,unitin)
    local unit = nil
    if entity then
        unit = entity.unit_number
    else
        unit = unitin
    end
    storage.black_hole.base[unit] = nil

    --game.print(unit)

    if storage.black_hole.energy then
        for i,v in pairs(storage.black_hole.energy) do 
            if storage.black_hole.energy[i].base == unit then
                storage.black_hole.energy[i].base = nil
            end
        end
    end
end

function unregister_black_hole_energy(entity,unitin)
    local unit = nil
    if entity then
        unit = entity.unit_number
        --game.print("entity")
    else
        unit = unitin
        --game.print("unitin")
    end
    storage.black_hole.energy[unit] = nil

    if storage.black_hole.base then
        for i,v in pairs(storage.black_hole.base) do
            if storage.black_hole.base[i].energy == unit then
                storage.black_hole.base[i].energy = nil
                storage.black_hole.base[i].active = false
            end
        end
    end
end

--===================================================================================================================
--slaves
--===================================================================================================================

function create_black_hole_energy(base_entity)
    local pos = base_entity.position
    local slave = base_entity.surface.create_entity{
        name = 'gr_black_hole_energy_entity',
        position = pos,
        force = base_entity.force
    }
    slave.destructible = false
    return slave
end

function destroy_energy(entity)
    entity.destroy()
end


--===================================================================================================================
--update
--===================================================================================================================

function black_hole_base_update()
    if storage.black_hole then
        if storage.black_hole.base then
            for i,v in pairs(storage.black_hole.base) do 
                if storage.black_hole.base[i].entity then
                    if storage.black_hole.base[i].entity.valid then
                        if storage.black_hole.base[i].energy then
                            local energy = storage.black_hole.base[i].energy
                            local entity = storage.black_hole.base[i].entity
                            local inv = entity.get_inventory(defines.inventory.chest)
                            
                            local total = storage.black_hole.energy[energy].total
                            local stable = storage.black_hole.energy[energy].stable
                            local power_gen, matter_consumption = calc_black_hole_stats(stable)

                            
                            local new_matter = inv.get_item_count() - inv.get_item_count("gr_materials_stabilizer_item")
                            local new_stabilizer = inv.get_item_count("gr_materials_stabilizer_item")

                            stable = stable - 1
                            if total then
                                if new_stabilizer then --have no idea why "stabilizer" stated here
                                    stable = stable + new_stabilizer
                                end
                            end
                            if stable >= 100 then
                                stable = 100
                            end

                            total = total - matter_consumption + new_matter

                            storage.black_hole.energy[energy].power_gen = power_gen
                            storage.black_hole.energy[energy].matter_consumption = matter_consumption
                            storage.black_hole.energy[energy].stable = stable
                            storage.black_hole.energy[energy].total = total

                            --game.print(stable.." "..power_gen.." "..total)

                            black_hole_make_energy(energy, power_gen)

                            inv.clear()

                            if (total <= 0) or (stable <= 0) then
                                storage.black_hole.counter = storage.black_hole.counter + 1
                                if storage.black_hole.counter == 10 then
                                    local energy_entity = storage.black_hole.energy[energy].entity
                                    unregister_black_hole_energy(energy_entity)
                                    energy_entity.destroy()
                                    storage.black_hole.counter = 0
                                end
                            end
                            storage.black_hole.dirty = true
                        end
                    end
                end
            end
        end
    end
end

--===================================================================================================================
--util
--===================================================================================================================

function can_make_black_hole_energy(entity)
    if entity.valid then
        -- local statement is very important to avoid MP desync and save/load cycle mismatch
        local inv = entity.get_inventory(defines.inventory.chest)
        local total = inv.get_item_count() - inv.get_item_count("gr_materials_stabilizer_item")
        local stabilizer = inv.get_item_count("gr_materials_stabilizer_item")
        if (stabilizer >= 100) and (total >= 1000) then
            return true
        else
            return false
        end
    end
end

function calc_black_hole_stats(stable)
    -- power_gen: Power gen/s in MW
    -- matter_consumption: matter consumed/s
    -- stable: max 100, each stabilizer put in will add 1 stable regardless
    -- every 10 ticks - 1

    local matter_consumption_rate = black_hole_stable_function(stable)
    local power_gen = black_hole_energy_function(matter_consumption_rate)
    return power_gen, matter_consumption_rate
end

function black_hole_stable_function(stable)
    --stable from 0 to 100
    if stable <= 0 then
        return 0
    end
    return stable
end

function black_hole_energy_function(matter_consumption_rate)
    if matter_consumption_rate <= 0 then
        return 0
    end
    return (matter_consumption_rate * matter_consumption_rate * matter_consumption_rate) * 64 * 1000 * 0.3
end

function black_hole_make_energy(energy, power_gen)
    if storage.black_hole.energy[energy].entity then
        if storage.black_hole.energy[energy].entity.valid then
            --game.print("spawn energy: "..power_gen.."W")
            local entity = storage.black_hole.energy[energy].entity
            entity.power_production = power_gen
        end
    end
end

--TODO

--k2 fix
--KI tech description