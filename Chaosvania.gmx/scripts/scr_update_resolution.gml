max_w = 1920
max_h = 1080
ratio = global.width/global.height
xx = max_h*ratio
yy = max_h

if room = rm_startmenu
    {
    view_visible = true
    view_enabled = true
    view_wview = global.width;
    view_hview = global.height;
    view_xport = 0
    view_yport = 0
    view_wport = global.width;
    view_hport = global.height;
    surface_resize(application_surface,global.width,global.height);
    window_set_size(global.width,global.height);
    display_set_gui_size(global.width,global.height);
    }
    
else
    {
    view_visible[0] = true
    view_enabled[0] = true
    view_object[0] = obj_camera
    view_hborder[0] = xx/2
    view_vborder[0] = yy/2
    view_xport[0] = 0
    view_yport[0] = 0
    view_wport[0] = global.width
    view_hport[0] = global.height
    view_wview[0] = xx
    view_hview[0] = yy
    surface_resize(application_surface,global.width,global.height);
    window_set_size(global.width,global.height);
    display_set_gui_size(xx,yy);
    }


if room == rm_startmenu
    scr_initialize_startmenu()
else
    scr_initialize_mainmenu()
scr_initialize_optionsmenu()


