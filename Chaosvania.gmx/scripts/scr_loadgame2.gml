if file_exists("save_data_2.dat")
    {
    show_debug_message("loaded!")
    obj_data.current_data = ds_map_secure_load("save_data_2.dat")
    //ds_map_copy(ocurrent_data,data)
    }
room_goto(startroom)
