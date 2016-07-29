//scrmaps = ds_map_create()
//ds_map_add(scrmaps,"test",debug_test())

if asset_get_index(argument0) = asset_unknown
    show_debug_message("Script does not exsist")
else
    {
        script_execute(asset_get_index(argument0),argument1)
    }
    



/*
if ds_map_exists(scrmaps,argument0)
    ds_map_find_value(scrmaps,argument0)
else
    show_debug_message("cmd_run")
    */
//ds_map_destroy(scrmaps)
