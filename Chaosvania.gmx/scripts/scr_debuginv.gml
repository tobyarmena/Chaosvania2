for (i=0; i<obj_inv.maxslots; i+=1)
{ 
    if obj_inv.inv[i,0] == ""
         show_debug_message("empty")
    else
        show_debug_message(string(obj_inv.inv[i,0]));
};


