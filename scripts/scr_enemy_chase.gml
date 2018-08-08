switch (state)
{
    case e_state.idle:
    {
        hsp = 0;
        vsp = (min(7,vsp+grav));
        if (distance_to_object(obj_player) < 256 && distance_to_object(obj_player.x) > 3.5) state = e_state.chase;
        run = 0;
    }
    break;
    
    case e_state.chase:
    {
        dir = sign(obj_player.x - x);
        if dir > 0
        {
            direct = "right";
            run = 1;
        }
        else if dir < 0
        {
            direct = "left";
            run = 1;
        }
        
        hsp = dir * movespeed;
        vsp = (min(7,vsp+grav));
        if (distance_to_object(obj_player) > 127) state = e_state.idle;
    }
    break;
}
