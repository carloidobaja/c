///scr_attack_state

//attack and attack animation
image_speed = .5 ;
if (sprite_index == spr_player_right)
{
    sprite_index = spr_player_attack_right;
}
if (sprite_index == spr_player_left)
{
    sprite_index = spr_player_attack_left;
}
if (sprite_index == spr_player_up)
{
    sprite_index = spr_player_attack_up;
}
if (sprite_index == spr_player_down)
{
    sprite_index = spr_player_attack_down;
}
//attack with damage object

if (image_index >= 3 and attacked = false)
{
    var xx = 0;
    var yy = 0;
    if (sprite_index == spr_player_attack_right)
    {
       xx = x+12;
       yy = y+2;
    }
    if (sprite_index == spr_player_attack_left)
    {
        xx = x-12;
        yy = y+2;
    }
    if (sprite_index == spr_player_attack_up)
    {
        xx = x;
        yy = y-14
    }
    if (sprite_index == spr_player_attack_down)
    {
       xx = x;
       yy = y+14
    }
    var damage = instance_create (xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.attack;
    attacked = true;
}

