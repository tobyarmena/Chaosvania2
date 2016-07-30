knockbackspd = 0.8


///PERFORM ACTIONS
if state == "dead"
    {
    sprite_index = spr_armbasic_dead
    if mouse_check_button_pressed(button) || keyboard_check_pressed(ord('R'))
        {
        state = "reloading"
        image_index = 0
        }
    }
else if state == "idle"
    {
    /*
    if knockback>2
        sprite_index = spr_armbasic_shoot
    else
        sprite_index = spr_armbasic_idle
    */
    image_speed = 0.3
    if knockback == 0
        sprite_index = spr_armbasic_idle
    
    if mouse_check_button_pressed(button) && alarm[1] <= 0 
        {
        sprite_index = spr_armbasic_shoot
        knockback = 12
       
        //Reset alarm
        alarm[1] = shotdelay
        
        //Find target
        temp_dir = direction+random_range(-vari,vari);
        var temp_x = shootx
        var temp_y = shooty
        var startx = temp_x
        var starty = temp_y
        var collision = (position_meeting(temp_x, temp_y, par_wall))
        var collision_enemy = (position_meeting(temp_x, temp_y, par_enemies))
        var tracking_bullet = (position_meeting(temp_x, temp_y, obj_trackingshootproj))
        var large_bullet = (position_meeting(temp_x, temp_y, obj_largeshootproj))
        while (!collision && !collision_enemy && !tracking_bullet && !large_bullet && distance_to_point(temp_x,temp_y) < view_wview)
            {
            temp_x += lengthdir_x(4, temp_dir)
            temp_y += lengthdir_y(4, temp_dir)
            collision = (position_meeting(temp_x, temp_y, par_wall))
            collision_enemy = (position_meeting(temp_x, temp_y, par_enemies))
            tracking_bullet = (position_meeting(temp_x, temp_y, obj_trackingshootproj))
            large_bullet = (position_meeting(temp_x, temp_y, obj_largeshootproj))
            }
        /*
        //knockback on player
        with(par_arm)
            {
            sideknockback = 12*other.whichside
            }
        with(obj_player)
            {
            scr_apply_impulse((other.temp_dir)+180,1000)
            }
        */
            
        obj_camera.shake = true
        obj_camera.alarm[0] = 6
        obj_camera.magnitude = 10
        muzzle = instance_create(startx-lengthdir_x(8*whichside,xaxis)+lengthdir_x(35,direction),starty-lengthdir_y(8*whichside,xaxis)+lengthdir_y(35,direction),obj_armbasic_muzzle)
        muzzle.image_angle = temp_dir
        shot = instance_create(temp_x,temp_y,obj_shot1)
        clip_ammo --
        shot.startx = startx-lengthdir_x(8*whichside,xaxis)+lengthdir_x(35,direction)
        shot.starty = starty-lengthdir_y(8*whichside,xaxis)+lengthdir_y(35,direction)
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
        if sprite_index != spr_armbasic_shoot
            state = "dead"
        }
    }
else if state == "reloading"
    {
    if sprite_index != spr_armbasic_reload2
        sprite_index = spr_armbasic_reload2
    image_speed = 0.2
    }
    
/*
/*
if keyboard_check_pressed(ord('R')) && alarm[1] <= 0
    {
    if clip_ammo < clip_size
        {
        reloading = true
        }
    }  
*/  
/*
//Sprites
if reloading == true
    {
    sprite_index = spr_armbasic_reload  
    image_speed = 0.1
    if image_index <=3
        knockback +=1.1
    }  
else if clip_ammo <= 0
    {
    sprite_index = spr_armbasic_dead
    image_speed = 0.3
    }
else if knockback>1
    {
    sprite_index = spr_armbasic_shoot
    image_speed = 0.3
    }
else
    {
    sprite_index = spr_armbasic_idle
    image_speed = 0.3
    }
    

