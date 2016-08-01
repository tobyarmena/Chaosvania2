if room != rm_startmenu
    {
    room_goto(global.startroom)
    with(obj_control)
        {
        alarm[4] = 1
        }
    }
else
    {
    game_end()
    }
