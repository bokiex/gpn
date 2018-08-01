if (global.checkpointR != 0)
{
    room_goto(global.checkpointR);
    
    if (global.checkpointR == room)
    {
        obj_player.hp = 100;
        obj_player.x = global.checkpointx;
        obj_player.y = global.checkpointy;
    }
}
else
{
    game_restart();
}
