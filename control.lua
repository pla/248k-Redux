require('scripts/electronic/el_ki_script')
require('scripts/bk_main')
require('scripts/gravitation/gr_black_hole_script')
local gui = require('scripts/gui')
local gr_gui = require('scripts/gravitation/gui')

--informatron
require('scripts/informatron/inf_main')

--===================================================================================================================
--                              other functions
--===================================================================================================================

function print_start_message()
    if settings.startup['overhaul_mode'].value == false then
        game.print({"inf_248k.standalone_mode_msg_1"}, {r=0.5, g=0, b=0.5})
        game.print({"inf_248k.standalone_mode_msg_2"}, {r=0.5, g=0, b=0.5})
    elseif settings.startup['overhaul_mode'].value == true then
        game.print({"inf_248k.overhaul_mode_msg_1"}, {r=0.5, g=0, b=0.5})
        game.print({"inf_248k.overhaul_mode_msg_2"}, {r=0.5, g=0, b=0.5})
    end
end

--===================================================================================================================
--                              Event handlers
--===================================================================================================================

--init

script.on_init(
    function(e)
        el_ki_init(e)
        gr_black_hole_init(e)

        if script.active_mods["Booktorio"] then
            registerThread_248k()
        end

        for i,v in pairs(game.players) do
            gui.add_top_gui(game.players[i])
        end

        print_start_message()
    end
)

--===================================================================================================================

--on player creation

script.on_event({
    defines.events.on_player_created
    },
    function(e)
        gui.add_top_gui(game.get_player(e["player_index"]))

        if not storage.message_printed then
            print_start_message()
            storage.message_printed = true
        end

    end
)

--===================================================================================================================

--on built

script.on_event({
    defines.events.on_built_entity,
    defines.events.on_robot_built_entity,
    defines.events.script_raised_built,
    defines.events.script_raised_revive,
    --defines.events.on_entity_cloned
    },
    function(e)
        el_ki_on_built(e)
        gr_black_hole_on_built(e)
    end
)

--===================================================================================================================

--on remove

script.on_event({
    defines.events.on_entity_died,
	defines.events.on_pre_player_mined_item,
	defines.events.on_robot_pre_mined,
	defines.events.script_raised_destroy
    },
    function(e)
        el_ki_on_remove(e)
        gr_black_hole_on_remove(e)
    end
)

--===================================================================================================================

--on tick

script.on_nth_tick(60,
    function(e)
    el_ki_buffer1_working()
    el_ki_buffer1_update()

    el_ki_buffer2_working()
    el_ki_buffer2_update()

    el_ki_core_working()
    el_ki_core_update()

    el_ki_supported_adder()

    if storage.ki.dirty then  
        el_ki_beacon_update()
        gui.update_main()
        storage.ki.dirty = false
    end

    if storage.black_hole.dirty then
        gr_gui.update_main()
        storage.black_hole.dirty = false
    end
    gr_gui.update_main()
    end

)

script.on_nth_tick(30,
    function(e)
        black_hole_base_update()
    end
)
--===================================================================================================================

script.on_event({
    defines.events.on_gui_click,
    defines.events.on_gui_text_changed
    },
    function(e)
        gui.on_change(e)
        gr_gui.on_change(e)
    end
)

script.on_event({
    defines.events.on_player_selected_area
    },
    gui.on_selected
)

script.on_event({
    defines.events.on_gui_opened,
    defines.events.on_gui_closed
    },
    function(e)
        if e["entity"] then
            if e["entity"].name == "el_ki_core_entity" then
                gui.add_core_gui(e,false)
            end

            if e["entity"].name == "fi_ki_core_entity" then
                gui.add_buffer1_gui(e,false)
            end

            if e["entity"].name == "fu_ki_core_entity" then
                gui.add_buffer2_gui(e,false)
            end

            if e["entity"].name == "gr_black_hole_base_entity" then
                gr_gui.add_black_hole_gui(e,false)
            end
        end
    end
)

script.on_event({
    defines.events.on_research_finished
    },
    function(e)
        if e.research and (e.research.name == "fu_ki_plus_1_tech" or e.research.name == "fu_ki_plus_2_tech") then
            if not storage.ki then storage.ki = {} end
            storage.ki.dirty = true
        end
    end
)

--===================================================================================================================

--config change

script.on_configuration_changed(
    function()
        if script.active_mods["Booktorio"] then
            registerThread_248k()
        end
    end
)
