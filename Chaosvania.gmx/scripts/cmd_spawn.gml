if asset_get_type(argument0) == asset_unknown
    show_debug_message("Object does not exsist")
else
    instance_create(view_xview[0]+argument1,view_yview[0]+argument2,asset_get_index(argument0))//ds_map_find_value(objmap,argument0))


