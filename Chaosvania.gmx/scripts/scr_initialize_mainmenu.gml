

///Menu Buttons:

/*
[x,0] = string 
[x,1] = script
[x,2] = x coordinate (left most)
[x,3] = y coordinate (top most)
*/

draw_set_font(fnt_menu)

//Resume
main[0,0] = "resume"
main[0,1] = scr_resume

//Options
main[1,0] = "options"
main[1,1] = scr_options

//Back to start menu
main[2,0] = "main menu"
main[2,1] = scr_goto_startmenu

//Exit
main[3,0] = "exit"
main[3,1] = scr_exit

//Find max length and height
max_length = 0
max_height = 0
for(h=0;h<array_height_2d(main);h++)
    {
    max_length = max(max_length,string_width(main[h,0]))
    max_height = max(max_height,string_height(main[h,0]))
    }

    
//Position variables
yspacing = 16
total_height = max_height*array_height_2d(main) + yspacing*(array_height_2d(main)-1)

startx = display_get_gui_width()/2 - max_length/2
starty = display_get_gui_height()/2 - total_height/2

//Set positioning for each button
for(h=0;h<array_height_2d(main);h++)
    {
    main[h,2] = startx
    main[h,3] = starty+(h*(max_height+yspacing))
    }
