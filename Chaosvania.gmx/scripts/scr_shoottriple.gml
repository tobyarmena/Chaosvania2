bullet1 = instance_create(x,y,argument0);
bullet2 = instance_create(x,y,argument0);
bullet3 = instance_create(x,y,argument0);

with (bullet1){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player);
    yy = lengthdir_y(argument1,player);

    physics_apply_impulse(x,y,xx,yy)
}
with (bullet2){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player-25);
    yy = lengthdir_y(argument1,player-25);

    physics_apply_impulse(x,y,xx,yy)
}
with (bullet3){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player+25);
    yy = lengthdir_y(argument1,player+25);

    physics_apply_impulse(x,y,xx,yy)
}

