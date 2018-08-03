switch (state)
{
    case e_state.idle:
    {
        hsp = 0;
        vsp = (min(7,vsp+grav));
        if (distance_to_object(obj_player) < 96 && distance_to_object(obj_player.x) > 3.5) state = e_state.chase;
    }
    break;
    
    case e_state.chase:
    {
        dir = sign(obj_player.x - x);
        hsp = dir * movespeed;
        vsp = (min(7,vsp+grav));
        if (distance_to_object(obj_player) > 128) state = e_state.idle;
    }
    break;
}
