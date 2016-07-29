///SET STATES

///PERFORM ACTIONS
if state == "dead"
    {
    sprite_index = spr_minigun_dead
    if mouse_check_button_pressed(button) || keyboard_check_pressed(ord('R'))
        {
        state = "reloading"
        image_index = 0
        }
    }
else if state == "idle"
    {
    sprite_index = spr_minigun
    image_speed = 0.4*spin
    
    if mouse_check_button(button) && alarm[1] <= 0 
        {
        spin  = min(spin+0.025,1)
        
        
        if spin>=1
            {
            knockback = 8
            //Reset alarm
            alarm[1] = 4
            
            //Find target
            var temp_dir = direction+random_range(-vari,vari);
            var temp_x = shootx - lengthdir_x(8*whichside,xaxis)+lengthdir_x(35,direction)+lengthdir_x(irandom_range(-16,16),direction+90)
            var temp_y = shooty - lengthdir_y(8*whichside,xaxis)+lengthdir_y(35,direction)+lengthdir_y(irandom_range(-16,16),direction+90)
            
            //muzzle effect
            muzzle = instance_create(temp_x,temp_y,obj_minigun_muzzle)
            with(muzzle){image_angle = temp_dir}
            
            //projectile
            projectile = instance_create(temp_x,temp_y,obj_minigun_projectile)
            with(projectile)
                {
                scr_apply_impulse(temp_dir,2000)
                phy_rotation = -temp_dir
                }
            //Screen Shake
        obj_camera.shake = true
        obj_camera.alarm[0] = 6
        obj_camera.magnitude = 5
            }
            
            
        
        
        }
    else
        {
        spin = max(spin - 0.025,0)
        }
    if keyboard_check_pressed(ord('R')) 
        {
        if clip_ammo < clip_size
            {
            state = "reloading"
            image_index = 0
            }
        }
    if clip_ammo <= 0
        {
        state = "dead"
        }
    }
else if state == "reloading"
    {
    if sprite_index != spr_armbasic_reload2
        sprite_index = spr_armbasic_reload2
    image_speed = 0.2
    }
