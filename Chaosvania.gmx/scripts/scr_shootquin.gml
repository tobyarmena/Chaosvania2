bullet1 = instance_create(x,y,argument0);
bullet2 = instance_create(x,y,argument0);
bullet3 = instance_create(x,y,argument0);
bullet4 = instance_create(x,y,argument0);
bullet5 = instance_create(x,y,argument0);

with (bullet1){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player);
    yy = lengthdir_y(argument1,player);

    physics_apply_impulse(x,y,xx,yy)
}
with (bullet2){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player-15);
    yy = lengthdir_y(argument1,player-15);

    physics_apply_impulse(x,y,xx,yy)
}
with (bullet3){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player+15);
    yy = lengthdir_y(argument1,player+15);

    physics_apply_impulse(x,y,xx,yy)
}
with (bullet4){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player-30);
    yy = lengthdir_y(argument1,player-30);

    physics_apply_impulse(x,y,xx,yy)
}
with (bullet5){
    player = point_direction(x,y,obj_player.x,obj_player.y)
    
    xx = lengthdir_x(argument1,player+30);
    yy = lengthdir_y(argument1,player+30);

    physics_apply_impulse(x,y,xx,yy)
}

