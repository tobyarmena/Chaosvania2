//argument0 = item index

//initiate library
scr_itemlibrary()

//Find the first empty slot and set it as the target slot
for (i=0; i<obj_inv.maxslots; i+=1)
    {
    if obj_inv.inv[i,0] == ""
        {
        target_slot = i
        break;
        }
    }
    
//Bring item dimensions from item to inventory slot
for (i=0; i<obj_inv.maxdimension; i+=1)
{
    obj_inv.inv[target_slot,i] = item_lib[argument0,i];
};



