// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _id_D78A();
    _id_D764();
}

_id_D78A()
{
    level._id_2777["gametype_think"] = ::_id_2750;
}

_id_D764()
{

}

_id_2750()
{
    self notify( "bot_dm_think" );
    self endon( "bot_dm_think" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );

    for (;;)
    {
        self [[ self._id_B012 ]]();
        wait 0.05;
    }
}
