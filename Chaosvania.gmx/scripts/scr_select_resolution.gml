
//show_message(string(view_wview)+ " " + string(view_hview))
//find current array
for(j=0;j<=11;j++)
    {
    if view_wport == resolution[j,0] && view_hport == resolution[j,1]
        {
        //show_message("n is set")
        n = j
        }    
    }
if n == 11
    {
    n=0
    }
else
    {
    n++
    }
global.width = resolution[n,0]
global.height = resolution[n,1]

//save the surface when changing
if instance_exists(obj_control)
    if surface_exists(pause_screen)
        surface_save(pause_screen, "pausescreen.png");
    
//Update the resolution
scr_update_resolution()

//Write new resolution in ini file
ini_open("config.ini");
ini_write_real("resolution","width",global.width);
ini_write_real("resolution","height",global.height);
ini_write_real("resolution","set",1);
ini_close();





