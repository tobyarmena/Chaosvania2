draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
for(i=0;i<array_height_2d(main);i++)
    {
    //Set hotboxes
    x1 = main[i,2]
    x2 = x1+ max_length
    y1 = main[i,3]
    y2 = y1 + max_height
    
    //check for mouse click
    if (mouse_x-view_xview>x1)&&(mouse_x-view_xview<x2)&&(mouse_y-view_yview>y1)&&(mouse_y-view_yview<y2)
        {
        if mouse_check_button_pressed(mb_left)
            {
            script_execute(main[i,1])
            }
        draw_set_alpha(1)
        }
    else
        {
        draw_set_alpha(0.5)
        }
        
    //Draw rectangle
    draw_set_color(c_black)
    draw_rectangle(x1,y1,x2,y2,false)
    
    //Draw text
    draw_set_alpha(1)
    draw_set_color(c_white)
    draw_text(x1+max_length/2,y1,main[i,0])
    }

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(1)
