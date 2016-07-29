//save 1
save[0,0] = "save game 1"
save[0,1] = scr_savegame1

//save 2
save[1,0] = "save game 2"
save[1,1] = scr_savegame2

//save 3
save[2,0] = "save game 3"
save[2,1] = scr_savegame3

//save 1
save[3,0] = "save game 4"
save[3,1] = scr_savegame4



//Back
save[4,0] = "resume"
save[4,1] = scr_resume
    
    


//Find max length and height
max_sength_s = 0
max_height_s = 0
for(h=0;h<array_height_2d(save);h++)
    {
    max_sength_s = max(max_sength_s,string_width(save[h,0]))
    max_height_s = max(max_height_s,string_height(save[h,0]))
    }

    
//Position variables
yspacing_s = 16
total_height_s = max_height_s*array_height_2d(save) + yspacing_s*(array_height_2d(save)-1)

startx_s = display_get_gui_width()/2 - max_sength_s/2
starty_s = display_get_gui_height()/2 - total_height_s/2

//Set positioning for each button
for(h=0;h<array_height_2d(save);h++)
    {
    save[h,2] = startx_s
    save[h,3] = starty_s+(h*(max_height_s+yspacing_s))
    }
    

