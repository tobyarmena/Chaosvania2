if window_get_fullscreen()
   {
   window_set_fullscreen(false);
   }
else
   {
   window_set_fullscreen(true);
   }
   
ini_open("config.ini");
ini_write_real("resolution","full",window_get_fullscreen());
ini_close();
    
