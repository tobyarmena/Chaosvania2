//save x position
if is_undefined(ds_map_find_value(obj_data.current_data,"x"))
    ds_map_add(obj_data.current_data,"x",obj_player.phy_position_x)
else
    ds_map_replace(obj_data.current_data,"x",obj_player.phy_position_x)   
 
//save y position  
if is_undefined(ds_map_find_value(obj_data.current_data,"y"))
    ds_map_add(obj_data.current_data,"y",obj_player.phy_position_y)
else
    ds_map_replace(obj_data.current_data,"y",obj_player.phy_position_y)  
    
//save room
if is_undefined(ds_map_find_value(obj_data.current_data,"room"))
    ds_map_add(obj_data.current_data,"room",room)
else
    ds_map_replace(obj_data.current_data,"room",room)   
    
show_debug_message(string(ds_map_find_value(obj_data.current_data,"x"))+ " " + string(ds_map_find_value(obj_data.current_data,"y")))  
