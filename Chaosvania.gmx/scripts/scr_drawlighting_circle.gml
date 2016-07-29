///Draw the lighting circle onto the lighting surface
/*
argument0 = x
argument1 = y
argument2 = scale (1=almost fullscreen)
argument3 = color
argument4 = intensity
*/
with(obj_lighting)
    {
    if surface_exists(s_lighting)
        {
        draw_set_blend_mode(bm_subtract)
        surface_set_target(s_lighting)
        draw_sprite_ext(spr_lighting2,0,other.argument0-view_xview,other.argument1-view_yview,argument2,argument2,0,c_white,argument3)
        surface_reset_target()
        draw_set_blend_mode(bm_normal)
    
        }
    else
        {
        s_lighting = surface_create(view_wview,view_hview)
        }
    }
