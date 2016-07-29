//create a surface and copy the screen to the surface
pause_screen = surface_create(global.width, global.height);



surface_copy(pause_screen, 0, 0, application_surface);

//Store camera position
//camerax = obj_camera.x
//cameray = obj_camera.y

//Store mouse position and put mouse in the middle
mousex = window_mouse_get_x() 
mousey = window_mouse_get_y() 
window_mouse_set(window_get_width()/2,window_get_height()/2)

instance_deactivate_all(true);
instance_activate_object(obj_inv);
instance_activate_object(obj_control);
instance_activate_object(obj_data);

//pause physics
physics_pause_enable(true)


global.paused = true;
