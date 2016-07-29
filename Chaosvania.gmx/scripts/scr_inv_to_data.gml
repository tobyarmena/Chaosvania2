with(obj_inv)
    {
    //transfer equipment slots
    for (i=0; i<maxslots; i+=1)
        {
        if is_undefined(ds_map_find_value(obj_data.current_data,obj_data.inventory[i]))
            ds_map_add(obj_data.current_data,obj_data.inventory[i],inv[i,0])
        else
            ds_map_replace(obj_data.current_data,obj_data.inventory[i],inv[i,0])
        }
    //transfer skull slot 
    if is_undefined(ds_map_find_value(obj_data.current_data,"skull"))
        ds_map_add(obj_data.current_data,"skull",skull[0])
    else
        ds_map_replace(obj_data.current_data,"skull",skull[0])
    //transfer arm1 slot 
    if is_undefined(ds_map_find_value(obj_data.current_data,"arm1"))
        ds_map_add(obj_data.current_data,"arm1",arm1[0])
    else
        ds_map_replace(obj_data.current_data,"arm1",arm1[0])
    //transfer arm2 slot 
    if is_undefined(ds_map_find_value(obj_data.current_data,"arm2"))
        ds_map_add(obj_data.current_data,"arm2",arm2[0])
    else
        ds_map_replace(obj_data.current_data,"arm2",arm2[0])
    //transfer core slot 
    if is_undefined(ds_map_find_value(obj_data.current_data,"core"))
        ds_map_add(obj_data.current_data,"core",core[0])
    else
        ds_map_replace(obj_data.current_data,"core",core[0])
    //transfer legs slot 
    if is_undefined(ds_map_find_value(obj_data.current_data,"legs"))
        ds_map_add(obj_data.current_data,"legs",legs[0])
    else
        ds_map_replace(obj_data.current_data,"legs",legs[0])
    }
