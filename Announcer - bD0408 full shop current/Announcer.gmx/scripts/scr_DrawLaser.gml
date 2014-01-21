/*
argument0 = startx
argument1 = starty
srgument2 = direction
argument3 = maximum distance
argument4 = object checking
argument5 = precision (in pixels)
argument6 = color
argument7 = width
argument8 = laser damage
*/

var dir, dis, obj, prec, str, ok, len, loc, wid, tempx, tempy, dmg;

xx = argument[0];
yy = argument[1];
dir = argument[2];
dis = argument[3];
obj = argument[4];
prec = argument[5];
str = argument[6];
wid = argument[7];
dmg = argument[8];

tempx = xx;
tempy = yy;

len = 0;
ok = 0;

do
{
    xx += lengthdir_x(prec, dir)
    yy += lengthdir_y(prec, dir)
    len += prec;
    
    if position_meeting(xx, yy, obj)
    {
        loc = instance_position(xx, yy, obj);
        ok = 1;
    }
}
until ((len > dis) or (ok = 1))

draw_sprite_ext(spr_PlayerLaserEnd, 0, tempx, tempy, point_distance(tempx, tempy, xx, yy)/4, argument[7]/4, dir, argument[6], .9)
effect_create_above(ef_spark, xx, yy, 0, c_red);


if(collision_line(x, y, xx, yy, obj_EnemyParent, 0, 0))
{
    var c
    c = collision_line(x, y, xx, yy, obj_EnemyParent, 0, 0)
    
    with c
    {
        HP -= dmg;
    }
}
  
