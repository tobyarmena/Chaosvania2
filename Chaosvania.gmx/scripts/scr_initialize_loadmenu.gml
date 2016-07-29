//load 1
load[0,0] = "load game 1"
load[0,1] = scr_loadgame1

//load 2
load[1,0] = "load game 2"
load[1,1] = scr_loadgame2

//load 3
load[2,0] = "load game 3"
load[2,1] = scr_loadgame3

//load 1
load[3,0] = "load game 4"
load[3,1] = scr_loadgame4



//Back
load[4,0] = "back"
if room = rm_test
    load[4,1] = scr_back_to_main
else if room = rm_startmenu
    load[4,1] = scr_back_to_start
    
    


//Find max length and height
max_length_l = 0
max_height_l = 0
for(h=0;h<array_height_2d(load);h++)
    {
    max_length_l = max(max_length_l,string_width(load[h,0]))
    max_height_l = max(max_height_l,string_height(load[h,0]))
    }

    
//Position variables
yspacing_l = 16
total_height_l = max_height_l*array_height_2d(load) + yspacing_l*(array_height_2d(load)-1)

startx_l = display_get_gui_width()/2 - max_length_l/2
starty_l = display_get_gui_height()/2 - total_height_l/2

//Set positioning for each button
for(h=0;h<array_height_2d(load);h++)
    {
    load[h,2] = startx_l
    load[h,3] = starty_l+(h*(max_height_l+yspacing_l))
    }
    

