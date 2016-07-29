legs[0] = ds_map_find_value(obj_data.current_data,"legs")
for(j=0;j<array_height_2d(item_lib);j++)
    {
    if item_lib[j,0] == legs[0]
        {
        legs[1] = item_lib[j,1]
        legs[2] = item_lib[j,2]
        legs[3] = item_lib[j,3]
        legs[4] = item_lib[j,4]
        legs[5] = item_lib[j,5]
        legs[6] = item_lib[j,6]
        }
    }
