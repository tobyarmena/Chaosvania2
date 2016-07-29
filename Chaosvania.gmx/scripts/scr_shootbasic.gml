xx = lengthdir_x(argument1,point_direction(x,y,obj_player.x,obj_player.y));
yy = lengthdir_y(argument1,point_direction(x,y,obj_player.x,obj_player.y));

bullet = instance_create(x,y,argument0);

with (bullet){
    physics_apply_impulse(x,y,other.xx,other.yy)
    
}

