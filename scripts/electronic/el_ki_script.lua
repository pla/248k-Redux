local util = require("util")
local gui = require('scripts/gui')

--=================================================================================
--init
--=================================================================================
--[[
function el_ki_init(e)
    storage.ki = {}
    storage.ki.dirty = false
    storage.ki.total = 0
    storage.ki.channel = {}
    storage.ki.core = {}
    storage.ki.beacon = {}
    storage.ki.buffer1 = {}
    storage.ki.buffer2 = {}
    storage.ki.supported = 100
    storage.ki.supported1 = false
    storage.ki.supported2 = false
    storage.ki.supported3 = false
    storage.ki.supported4 = false

    --base channel
    storage.ki.channel[0] = {}
    storage.ki.channel[0].beacons = {}
    storage.ki.channel[0].core = {}
    storage.ki.channel[0].buffer1 = {}
    storage.ki.channel[0].buffer2 = {}

    storage.ki.standardchannel = 0
    storage.ki.selectchannel = 0

    --gui stuff
    storage.ki.gui = {}
    storage.ki.gui.core = {}
    storage.ki.gui.main = {}
    storage.ki.gui.buffer1 = {}
    storage.ki.gui.buffer2 = {}
end
]]

function el_ki_init(e)
    storage.ki = {}
    storage.ki.dirty = false
    storage.ki.total = 0
    storage.ki.channel = {}
    storage.ki.core = {}
    storage.ki.beacon = {}
    storage.ki.buffer1 = {}
    storage.ki.buffer2 = {}
    storage.ki.supported = 100
    storage.ki.supported1 = false
    storage.ki.supported2 = false
    storage.ki.supported3 = false
    storage.ki.supported4 = false

    --base channel
    storage.ki.channel[0] = {}
    storage.ki.channel[0].beacons = {}
    storage.ki.channel[0].core = {}
    storage.ki.channel[0].buffer1 = {}
    storage.ki.channel[0].buffer2 = {}

    storage.ki.standardchannel = 0
    storage.ki.selectchannel = 0

    --gui stuff
    storage.ki.gui = {}
    storage.ki.gui.core = {}
    storage.ki.gui.main = {}
    storage.ki.gui.buffer1 = {}
    storage.ki.gui.buffer2 = {}
end

--=================================================================================
--on built
--=================================================================================

function el_ki_on_built(e)
    if e['created_entity'] then
        if e['created_entity'].name == 'el_ki_core_entity' then
            make_ki_core(e['created_entity'])
        end
        if e['created_entity'].name == 'el_ki_beacon_entity' then
            make_ki_beacon(e['created_entity'])
        end

        if e['created_entity'].name == 'fi_ki_core_entity' then
            make_ki_buffer1(e['created_entity'])
        end
        if e['created_entity'].name == 'fi_ki_beacon_entity' then
            make_ki_beacon(e['created_entity'])
        end
        
        if e['created_entity'].name == 'fu_ki_core_entity' then
            make_ki_buffer2(e['created_entity'])
        end
        if e['created_entity'].name == 'fu_ki_beacon_entity' then
            make_ki_beacon(e['created_entity'])
        end
    end
    
    if e['entity'] then
        if e['entity'].name == 'el_ki_core_entity' then
            make_ki_core(e['entity'])
        end
        if e['entity'].name == 'el_ki_beacon_entity' then
            make_ki_beacon(e['entity'])
        end
        
        if e['entity'].name == 'fi_ki_core_entity' then
            make_ki_buffer1(e['entity'])
        end
        if e['entity'].name == 'fi_ki_beacon_entity' then
            make_ki_beacon(e['entity'])
        end
        
        if e['entity'].name == 'fu_ki_core_entity' then
            make_ki_buffer2(e['entity'])
        end
        if e['entity'].name == 'fu_ki_beacon_entity' then
            make_ki_beacon(e['entity'])
        end
    end    

    if e['entity'] then
        if e['entity'].name == "entity-ghost" then
            remove_request_ghost(e['entity'])
        end     
    end

    if e['created_entity'] then
        if e['created_entity'].name == "entity-ghost" then
            remove_request_ghost(e['created_entity'])
        end
    end
end

--=================================================================================
--on remove
--=================================================================================

function el_ki_on_remove(e)
    if e["entity"] then
        if e["entity"].name == "el_ki_core_entity" then
            if e["player_index"] then
                destroy_ki_core(e["entity"],e["player_index"],nil)
            elseif e["robot"] then
                destroy_ki_core(e["entity"],nil,e["robot"])
            else 
                destroy_ki_core(e["entity"],nil,nil)
            end
        end

        if e["entity"].name == "fi_ki_core_entity" then
            if e["player_index"] then
                destroy_fi_core(e["entity"],e["player_index"],nil)
            elseif e["robot"] then
                destroy_fi_core(e["entity"],nil,e["robot"])
            else 
                destroy_fi_core(e["entity"],nil,nil)
            end
        end

        if e["entity"].name == "fu_ki_core_entity" then
            if e["player_index"] then
                destroy_fu_core(e["entity"],e["player_index"],nil)
            elseif e["robot"] then
                destroy_fu_core(e["entity"],nil,e["robot"])
            else 
                destroy_fu_core(e["entity"],nil,nil)
            end
        end

        if (e["entity"].name == "el_ki_beacon_entity") or (e["entity"].name == "fi_ki_beacon_entity") or (e["entity"].name == "fu_ki_beacon_entity") then
            destroy_ki_beacon(e["entity"])
        end
    end
end

--=================================================================================
--make
--=================================================================================

function make_ki_core(entity)
    register_ki_core(entity)
    make_slave_ki_core(entity)
    storage.ki.dirty = true
    --gui.update_main()
end

function make_ki_buffer1(entity)
    register_ki_buffer1(entity)
    make_slave_ki_buffer1(entity)
    --make_container_ki_buffer1(entity)
    storage.ki.dirty = true
    --gui.update_main()
end

function make_ki_buffer2(entity)
    register_ki_buffer2(entity)
    make_slave_ki_buffer2(entity)
    --make_container_ki_buffer2(entity)
    storage.ki.dirty = true
    --gui.update_main()
end

function make_ki_beacon(entity)
    register_ki_beacon(entity)
    el_ki_single_beacon_update(entity.unit_number)
    gui.update_main()

    make_beacon_text(entity)
    --el_ki_beacon_make_text(entity)
end

function destroy_ki_core(entity,player_index,robot) 
    if not storage.ki.core[entity.unit_number] then
        return
    end
    if not storage.ki.core[entity.unit_number].slave then
        return
    end
    destroy_slave_ki_core(entity,storage.ki.core[entity.unit_number].slave,player_index,robot)
    unregister_ki_core(entity)
    storage.ki.dirty = true
    --gui.update_main()
end

function destroy_fi_core(entity,player_index,robot)
    if not storage.ki.buffer1[entity.unit_number] then
        return
    end
    if not storage.ki.buffer1[entity.unit_number].slave then
        return
    end
    destroy_slave_ki_core(entity,storage.ki.buffer1[entity.unit_number].slave,player_index,robot)

    if storage.ki.buffer1[entity.unit_number].container then 
        destroy_slave_ki_core(entity,storage.ki.buffer1[entity.unit_number].container,player_index,robot)
    end
    unregister_ki_buffer1(entity)
    storage.ki.dirty = true
    --gui.update_main()
end

function destroy_fu_core(entity,player_index,robot)
    if not storage.ki.buffer2[entity.unit_number] then
        return
    end
    if not storage.ki.buffer2[entity.unit_number].slave then
        return
    end
    destroy_slave_ki_core(entity,storage.ki.buffer2[entity.unit_number].slave,player_index,robot)

    if storage.ki.buffer2[entity.unit_number].container then 
        destroy_slave_ki_core(entity,storage.ki.buffer2[entity.unit_number].container,player_index,robot)
    end
    unregister_ki_buffer2(entity)
    storage.ki.dirty = true
    --gui.update_main()
end

function destroy_ki_beacon(entity)
    clear_ki_beacon(entity)
    unregister_ki_beacon(entity)
    count_total_beacons()

    if is_beacon_supported() then
        storage.ki.dirty = true
    end

    gui.update_main()
end

--=================================================================================
--register
--=================================================================================

function register_ki_core(entity)
    local unit = entity.unit_number
    local channel = make_channel(unit)

    storage.ki.core[unit] = {}
    storage.ki.core[unit].entity = entity
    storage.ki.core[unit].channel = channel
    storage.ki.core[unit].modules = {}
    storage.ki.core[unit].oldmodules = {}
    storage.ki.core[unit].active = false

    if storage.ki.standardchannel == 0 then
        storage.ki.standardchannel = channel
    end
end

function register_ki_buffer1(entity) 
    local unit = entity.unit_number
    local standardchannel = storage.ki.standardchannel

    storage.ki.buffer1[unit] = {}
    storage.ki.buffer1[unit].entity = entity
    storage.ki.buffer1[unit].channel = 0
    storage.ki.buffer1[unit].modules = {}
    storage.ki.buffer1[unit].oldmodules = {}
    storage.ki.buffer1[unit].active = false

    if not (standardchannel == 0) then
        if not storage.ki.channel[standardchannel].buffer1 then
            storage.ki.channel[standardchannel].buffer1 = unit
            storage.ki.buffer1[unit].channel = standardchannel
        end
    end
end

function register_ki_buffer2(entity) 
    local unit = entity.unit_number
    local standardchannel = storage.ki.standardchannel

    storage.ki.buffer2[unit] = {}
    storage.ki.buffer2[unit].entity = entity
    storage.ki.buffer2[unit].channel = 0
    storage.ki.buffer2[unit].modules = {}
    storage.ki.buffer2[unit].oldmodules = {}
    storage.ki.buffer2[unit].totalmodules = {}
    storage.ki.buffer2[unit].active = false

    if not (standardchannel == 0) then
        if not storage.ki.channel[standardchannel].buffer2 then
            storage.ki.channel[standardchannel].buffer2 = unit
            storage.ki.buffer2[unit].channel = standardchannel
        end
    end
end

function register_ki_beacon(entity)
    local unit = entity.unit_number

    storage.ki.beacon[unit] = {}
    storage.ki.beacon[unit].entity = entity
    storage.ki.beacon[unit].channel = storage.ki.standardchannel

    add_to_channel(unit)
    storage.ki.beacon[unit].supported = is_beacon_supported()

    entity.operable = false
end

--=================================================================================
--unregister
--=================================================================================

function unregister_ki_core(entity)
    local id = entity.unit_number

    if not storage.ki then
        return
    end
    if not storage.ki.core then
        return
    end
    if not storage.ki.core[id] then
        return
    end
    if not storage.ki.core[id].channel then
        return
    end

    local channel = storage.ki.core[id].channel

    storage.ki.core[id] = nil
    storage.ki.channel[channel].core = nil
end

function unregister_ki_buffer1(entity)
    local id = entity.unit_number

    if not storage.ki then
        return
    end
    if not storage.ki.buffer1 then
        return
    end
    if not storage.ki.buffer1[id] then
        return
    end
    if not storage.ki.buffer1[id].channel then
        return
    end

    local channel = storage.ki.buffer1[id].channel

    storage.ki.buffer1[id] = nil
    storage.ki.channel[channel].buffer1 = nil
end

function unregister_ki_buffer2(entity)
    local id = entity.unit_number

    if not storage.ki then
        return
    end
    if not storage.ki.buffer2 then
        return
    end
    if not storage.ki.buffer2[id] then
        return
    end
    if not storage.ki.buffer2[id].channel then
        return
    end

    local channel = storage.ki.buffer2[id].channel

    storage.ki.buffer2[id] = nil
    storage.ki.channel[channel].buffer2 = nil
end

function unregister_ki_beacon(entity)
    local id = entity.unit_number

    if not storage.ki then
        return
    end
    if not storage.ki.beacon then
        return
    end
    if not storage.ki.beacon[id] then
        return
    end
    if not storage.ki.beacon[id].channel then
        return
    end

    local channel = storage.ki.beacon[id].channel

    storage.ki.beacon[id] = nil
    for i,v in pairs(storage.ki.channel[channel].beacons) do
        if v == id then
            table.remove(storage.ki.channel[channel].beacons, i)
            break
        end
    end
end

--=================================================================================
--update
--=================================================================================
function el_ki_core_working() 
    for i in pairs(storage.ki.core) do
        if storage.ki.core[i].entity.valid then
            local oldactive = storage.ki.core[i].active
            storage.ki.core[i].active = storage.ki.core[i].entity.is_crafting()

            if storage.ki.core[i].active then
                if storage.ki.core[i].entity.energy < storage.ki.core[i].entity.prototype.energy_usage then
                    storage.ki.core[i].active = false
                    storage.ki.dirty = true
                end
            end

            if not oldactive == storage.ki.core[i].active then
                storage.ki.dirty = true
            end
        end
    end
end

function el_ki_buffer1_working() 
    for i in pairs(storage.ki.buffer1) do
        if storage.ki.buffer1[i].entity.valid then
            local entity = storage.ki.buffer1[i].entity
            local oldactive = storage.ki.buffer1[i].active

            storage.ki.buffer1[i].active = entity.is_crafting()
            if storage.ki.buffer1[i].active then
                if entity.energy < entity.prototype.energy_usage then
                    storage.ki.buffer1[i].active = false
                    storage.ki.dirty = true
                end
            end

            if oldactive ~= storage.ki.buffer1[i].active then
                storage.ki.dirty = true
            end
        else
        end
    end
end



function el_ki_buffer2_working() 
    for i in pairs(storage.ki.buffer2) do
        if storage.ki.buffer2[i].entity.valid then
            local oldactive = storage.ki.buffer2[i].active
            storage.ki.buffer2[i].active = storage.ki.buffer2[i].entity.is_crafting()

            if storage.ki.buffer2[i].active then
                if storage.ki.buffer2[i].entity.energy < storage.ki.buffer2[i].entity.prototype.energy_usage then
                    storage.ki.buffer2[i].active = false
                    storage.ki.dirty = true
                end
            end

            if not oldactive == storage.ki.buffer2[i].active then
                storage.ki.dirty = true
            end
        end
    end
end

--Actualizado
function el_ki_core_update()
  if not storage.ki or not storage.ki.core then return end

  for i, core in pairs(storage.ki.core) do
    core.oldmodules = util.table.deepcopy(core.modules or {})

    local slave = core.slave
    if slave and slave.valid then
      local slaveinv = slave.get_module_inventory()
      local slavemodules = slaveinv and slaveinv.get_contents() or {}

      core.modules = {}
      if slavemodules[1] then
        for _, module in pairs(slavemodules) do
          local amount = tonumber(module.count) or 0
          for _ = 1, amount do
            table.insert(core.modules, module.name)
          end
        end
      else
        for module_name, count in pairs(slavemodules) do
          local amount = tonumber(count) or 0
          for _ = 1, amount do
            table.insert(core.modules, module_name)
          end
        end
      end
    else
      core.modules = {}
    end

    local changed = false

    if #core.modules ~= #core.oldmodules then
      changed = true
    else
      for index, module in ipairs(core.modules) do
        if module ~= core.oldmodules[index] then
          changed = true
          break
        end
      end
    end

    if changed then
      storage.ki.dirty = true
    end
  end
end


function el_ki_buffer1_update()
  for i in pairs(storage.ki.buffer1) do
    local buffer = storage.ki.buffer1[i]

    buffer.oldmodules = util.table.deepcopy(buffer.modules or {})

    if buffer.slave then
      if buffer.slave.valid then
        local slaveinv = buffer.slave.get_module_inventory()
        local slavemodules = slaveinv and slaveinv.get_contents() or {}
        buffer.modules = {}
        if slavemodules[1] then
          for _, module in pairs(slavemodules) do
            local amount = tonumber(module.count) or 0
            for f = 1, amount do
              table.insert(buffer.modules, module.name)
            end
          end
        else
          for name, amount in pairs(slavemodules) do
            amount = tonumber(amount) or 0
            for f = 1, amount do
              table.insert(buffer.modules, name)
            end
          end
        end
      else
      end
    else
    end

    -- Detectar cambios
    if #buffer.modules ~= #buffer.oldmodules then
      storage.ki.dirty = true
    else
      for x, v in ipairs(buffer.modules) do
        if v ~= buffer.oldmodules[x] then
          storage.ki.dirty = true
          break
        end
      end
    end
  end
end

function el_ki_buffer2_update()
  for i in pairs(storage.ki.buffer2) do
    local buffer = storage.ki.buffer2[i]

    buffer.oldmodules = util.table.deepcopy(buffer.modules or {})

    if buffer.slave then
      if buffer.slave.valid then
        local slaveinv = buffer.slave.get_module_inventory()
        local slavemodules = slaveinv and slaveinv.get_contents() or {}
        buffer.modules = {}
        if slavemodules[1] then
          for _, module in pairs(slavemodules) do
            local amount = tonumber(module.count) or 0
            for f = 1, amount do
              table.insert(buffer.modules, module.name)
            end
          end
        else
          for name, amount in pairs(slavemodules) do
            amount = tonumber(amount) or 0
            for f = 1, amount do
              table.insert(buffer.modules, name)
            end
          end
        end
      else
      end
    else
    end

    if #buffer.modules ~= #buffer.oldmodules then
      storage.ki.dirty = true
    else
      for x, v in ipairs(buffer.modules) do
        if v ~= buffer.oldmodules[x] then
          storage.ki.dirty = true
          break
        end
      end
    end
  end
end



function el_ki_beacon_update()
    el_ki_buffer1_adder()

    --if now less beacons then support max 
    if is_beacon_supported() then
        local dif = storage.ki.supported - count_total_beacons()

        local unsupported = get_unsupported_beacons()
        for i,v in ipairs(unsupported) do
            storage.ki.beacon[v].supported = true
            dif = dif - 1
            if dif == 0 then 
                break 
            end
        end
    end

    for i,v in pairs(storage.ki.beacon) do 
      el_ki_single_beacon_update(i)  
    end
end

function el_ki_single_beacon_update(id)
    if storage.ki.beacon[id].supported then
        if storage.ki.beacon[id].entity.valid then
            local beacon_entity = storage.ki.beacon[id].entity
            local beacon_inv = beacon_entity.get_module_inventory()
            local channel = storage.ki.beacon[id].channel

            beacon_inv.clear()

            --[[if storage.ki.beacon[id].icon then
                rendering.destroy_object(storage.ki.beacon[id].icon)
                storage.ki.beacon[id].icon = nil
            end]]

            if storage.ki.beacon[id].icon then
                if storage.ki.beacon[id].icon.valid then
                    storage.ki.beacon[id].icon:destroy()
                end
                storage.ki.beacon[id].icon = nil
            end


            if storage.ki.channel[channel].core then
                local coreunit = storage.ki.channel[channel].core
                if storage.ki.core[coreunit] then
                    if storage.ki.core[coreunit].active then
                        local moduleset = storage.ki.core[coreunit].totalmodules
                        if beacon_entity.name == 'fu_ki_beacon_entity' then
                            if game.forces[1].technologies['fu_ki_plus_2_tech'].researched then
                                moduleset = storage.ki.core[coreunit].fu_ki_plus_2_modules
                            elseif game.forces[1].technologies['fu_ki_plus_1_tech'].researched then
                                moduleset = storage.ki.core[coreunit].fu_ki_plus_1_modules
                            end
                        end
                        for i,v in pairs(moduleset) do
                            if beacon_inv.can_insert({name=moduleset[i], count=1}) then
                                beacon_inv.insert({name=moduleset[i], count=1})
                            end
                        end
                    end
                end
            end
        end
    end

    if not storage.ki.beacon[id].supported then
        if not storage.ki.beacon[id].icon then
            if storage.ki.beacon[id].entity.valid then
                storage.ki.beacon[id].icon = make_not_operable_icon(storage.ki.beacon[id].entity)
            end
        end
    end
end

--=================================================================================
--util
--=================================================================================

function get_unsupported_beacons()
    local unsupported = {}
    for i,v in pairs(storage.ki.beacon) do
        if not v.supported then
            table.insert(unsupported,i)
        end
    end
    return unsupported
end

function make_beacon_text(entity)
  local channel = storage.ki.beacon[entity.unit_number] and storage.ki.beacon[entity.unit_number].channel or "?"
  
  rendering.draw_text{
    text = "CH: " .. channel,
    color = {r = 1, g = 1, b = 1},
    surface = entity.surface,
    position = entity.position,
    target = entity,
    target_offset = {0, -1.5},
    alignment = "center",
    use_rich_text = false,
    time_to_live = 120
  }
end

function remove_request_ghost(entity)
    --[[if (entity.ghost_name == "el_ki_beacon_entity") or  --no entiendo la funcion de esta funcion
       (entity.ghost_name == "fi_ki_beacon_entity") or      --quitarla no causa errores o cambios
       (entity.ghost_name == "fu_ki_beacon_entity") then
        if entity.valid then
            entity.destroy()
        end
    end]]
end

function make_not_operable_icon(entity)
    local sprite = rendering.draw_sprite({sprite="el_ki_not_operable_icon", target=entity, x_scale=0.5, y_scale=0.5, surface=entity.surface, render_layer=200})
    return sprite
end

function el_ki_buffer1_adder() 
    for i, v in pairs(storage.ki.channel) do
        if not (i == 0) then
            if storage.ki.channel[i].core then
                local coreid = storage.ki.channel[i].core
                storage.ki.core[coreid].totalmodules = {}
                storage.ki.core[coreid].fu_ki_plus_1_modules = {}
                storage.ki.core[coreid].fu_ki_plus_2_modules = {}

                -- Módulos base del core
                for x, f in pairs(storage.ki.core[coreid].modules) do
                    table.insert(storage.ki.core[coreid].totalmodules, f)
                end
                -- Buffer1
                if storage.ki.channel[i].buffer1 then
                    local buffer1id = storage.ki.channel[i].buffer1
                    if storage.ki.buffer1[buffer1id].active == true then
                        for x, f in pairs(storage.ki.buffer1[buffer1id].modules) do
                            table.insert(storage.ki.core[coreid].totalmodules, f)
                        end
                    else
                    end
                else
                end

                -- Buffer2
                if storage.ki.channel[i].buffer2 then  
                    local buffer2id = storage.ki.channel[i].buffer2
                    if storage.ki.buffer2[buffer2id].active == true then
                        for x, f in pairs(storage.ki.buffer2[buffer2id].modules) do
                            table.insert(storage.ki.core[coreid].totalmodules, f)
                        end
                    else
                    end
                else
                end
                -- Multiplicación por tecnologías
                if game.forces[1] then
                    if game.forces[1].technologies['fu_ki_plus_2_tech'].researched then
                        local moduletable = {}
                        for _, v in pairs(storage.ki.core[coreid].totalmodules) do 
                            table.insert(moduletable, v)
                            table.insert(moduletable, v)
                            table.insert(moduletable, v)
                        end
                        storage.ki.core[coreid].fu_ki_plus_2_modules = moduletable
                    elseif game.forces[1].technologies['fu_ki_plus_1_tech'].researched then
                        local moduletable = {}
                        for _, v in pairs(storage.ki.core[coreid].totalmodules) do 
                            table.insert(moduletable, v)
                            table.insert(moduletable, v)
                        end
                        storage.ki.core[coreid].fu_ki_plus_1_modules = moduletable
                    else
                    end
                end
            else
            end
        end
    end
end


function make_channel(unit)
    if storage.ki.channel then
        local max = #storage.ki.channel + 1

        storage.ki.channel[max] = {} 
        storage.ki.channel[max].core = unit
        storage.ki.channel[max].buffer1 = nil
        storage.ki.channel[max].buffer2 = nil
        storage.ki.channel[max].beacons = {}

        return max
    end
end

function count_total_beacons() 
    local count = 0
    for i,v in pairs(storage.ki.channel) do
        --if not (i == 0) then
            if #storage.ki.channel[i].beacons then
                count = count + #storage.ki.channel[i].beacons
            end
        --end
    end
    storage.ki.total = count
    return count
end

function is_beacon_supported()
    if storage.ki.supported >= count_total_beacons() then
        return true
    end
    return false
end

function add_to_channel(id)
    local channel = storage.ki.beacon[id].channel
    table.insert(storage.ki.channel[channel].beacons, id)
end

function el_ki_supported_adder()
    if storage.ki.supported1 == false then
        if game.forces[1] then
            if game.forces[1].technologies['el_ki_sup_1_tech'].researched then
                storage.ki.supported1 = true
                storage.ki.supported = storage.ki.supported + 150
                gui.update_main()
            end
        end
    end

    if storage.ki.supported2 == false then
        if game.forces[1] then
            if game.forces[1].technologies['el_ki_sup_2_tech'].researched then
                storage.ki.supported2 = true
                storage.ki.supported = storage.ki.supported + 250
                gui.update_main()
            end
        end
    end

    if storage.ki.supported3 == false then
        if game.forces[1] then
            if game.forces[1].technologies['el_ki_sup_3_tech'].researched then
                storage.ki.supported3 = true
                storage.ki.supported = storage.ki.supported + 500
                gui.update_main()
            end
        end
    end

    if storage.ki.supported4 == false then
        if game.forces[1] then
            if game.forces[1].technologies['el_ki_sup_4_tech'].researched then
                storage.ki.supported4 = true
                storage.ki.supported = 65535
                --storage.ki.supported = 10
                gui.update_main()
            end
        end
    end
end

--=================================================================================
--slaves
--=================================================================================

function make_slave_ki_core(entity)
    local pos = entity.position
    local slave = entity.surface.create_entity{
        name = 'el_ki_core_slave_entity',
        position = pos,
        force = entity.force
    }
    slave.destructible = false
    storage.ki.core[entity.unit_number]["slave"] = slave
end

function make_slave_ki_buffer1(entity)
    local pos = entity.position
    local slave = entity.surface.create_entity{
        name = 'fi_ki_core_slave_entity',
        position = pos,
        force = entity.force
    }
    slave.destructible = false
    storage.ki.buffer1[entity.unit_number]["slave"] = slave
end

function make_container_ki_buffer1(entity)
    local pos = {entity.position.x, entity.position.y + 2}
    local container = entity.surface.create_entity{
        name = 'fi_ki_core_slave_container_entity',
        position = pos,
        force = entity.force
    }
    container.destructible = false
    storage.ki.buffer1[entity.unit_number]["container"] = container
end

function make_slave_ki_buffer2(entity)
    local pos = entity.position
    local slave = entity.surface.create_entity{
        name = 'fu_ki_core_slave_entity',
        position = pos,
        force = entity.force
    }
    slave.destructible = false
    storage.ki.buffer2[entity.unit_number]["slave"] = slave
end

function make_container_ki_buffer2(entity)
    local pos = {entity.position.x, entity.position.y + 2}
    local container = entity.surface.create_entity{
        name = 'fu_ki_core_slave_container_entity',
        position = pos,
        force = entity.force
    }
    container.destructible = false
    storage.ki.buffer2[entity.unit_number]["container"] = container
end

function destroy_slave_ki_core(entity,slave,player_index,robot)
    local id = entity.unit_number
    local success = false
    
    if player_index then
        if game.get_player(player_index).character then
            if game.get_player(player_index).character.get_main_inventory() then
                success = slave.mine({inventory=game.get_player(player_index).character.get_main_inventory()})
            end
        end
    end

    if robot then
        if robot.get_inventory(defines.inventory.robot_cargo) then
            success = slave.mine({inventory=robot.get_inventory(defines.inventory.robot_cargo)})
        end
    end

    if not success then
        slave.get_inventory(defines.inventory.chest).clear()
        slave.destroy()
    end
end

function clear_ki_beacon(entity)
    entity.get_module_inventory().clear()
end