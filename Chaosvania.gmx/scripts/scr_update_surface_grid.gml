///update surface grid


for (xx=playerx-lim-1; xx<=playerx+lim+1; xx += 1)
{
    for (yy=playery-lim-1; yy<=playery+lim+1; yy += 1)
    {
        if (xx>=0 && yy>=0) && (xx< max_x && yy < max_y)
            {
            if (playerx>xx-lim)&&(playerx<xx+lim)&&(playery>yy-lim)&&(playery<yy+lim)
                {
                if !surface_exists(surface[xx,yy])
                    {
                    surface[xx,yy] = surface_create(surface_width,surface_height)
                    } 
                if activated[xx,yy] == false
                    {
                    if surface_exists(surface[xx,yy])
                        {
                        surface_set_target(surface[xx,yy])
                        draw_clear_alpha(c_red,0)
                        surface_reset_target()   
                        }
                    }
                activated[xx,yy] = true
                     
                }
            else
                {
                activated[xx,yy] = false
                if surface_exists(surface[xx,yy])
                    {
                    surface_set_target(surface[xx,yy])
                    draw_clear_alpha(c_red,0)
                    surface_reset_target()  
                    surface_free(surface[xx,yy]) 
                    }
                }
            }
        
        }   
    }
 
