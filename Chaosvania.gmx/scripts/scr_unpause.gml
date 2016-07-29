//return mouse to original position
window_mouse_set(mousex,mousey)

//application_surface_draw_enable(false);

//activate all instances (alarm in obj_control does this, I needed to delay activating by one step)
with(obj_control)
    alarm[0] = 1

//return camera to original position
with(obj_camera)
    {
    x = other.camerax
    y = other.cameray
    }

//unpause physics
physics_pause_enable(false)
    
global.paused = false
