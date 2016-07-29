//Resolution
options[0,0] = "select resolution: " + string(view_wport)+"x"+string(view_hport)
options[0,1] = scr_select_resolution

//Change to full screen
if window_get_fullscreen()
    options[1,0] = "windowed mode"
else
    options[1,0] = "fullscreen mode"
options[1,1] = scr_select_fullscreen

//Back
options[2,0] = "back"
if room = rm_test
    options[2,1] = scr_back_to_main
else if room = rm_startmenu
    options[2,1] = scr_back_to_start
    
    


//Find max length and height
max_length_o = 0
max_height_o = 0
for(h=0;h<array_height_2d(options);h++)
    {
    max_length_o = max(max_length_o,string_width(options[h,0]))
    max_height_o = max(max_height_o,string_height(options[h,0]))
    }

    
//Position variables
yspacing_o = 16
total_height_o = max_height_o*array_height_2d(options) + yspacing_o*(array_height_2d(options)-1)

startx_o = display_get_gui_width()/2 - max_length_o/2
starty_o = display_get_gui_height()/2 - total_height_o/2

//Set positioning for each button
for(h=0;h<array_height_2d(options);h++)
    {
    options[h,2] = startx_o
    options[h,3] = starty_o+(h*(max_height_o+yspacing_o))
    }
    
//resolutions
resolution[0,0] = 800
resolution[0,1] = 600

resolution[1,0] = 1024
resolution[1,1] = 768

resolution[2,0] = 1152
resolution[2,1] = 864

resolution[3,0] = 1280
resolution[3,1] = 800

resolution[4,0] = 1280
resolution[4,1] = 960

resolution[5,0] = 1360
resolution[5,1] = 768

resolution[6,0] = 1366
resolution[6,1] = 768

resolution[7,0] = 1440
resolution[7,1] = 900

resolution[8,0] = 1600
resolution[8,1] = 900

resolution[9,0] = 1600
resolution[9,1] = 1024

resolution[10,0] = 1680
resolution[10,1] = 1050

resolution[11,0] = 1920
resolution[11,1] = 1080


