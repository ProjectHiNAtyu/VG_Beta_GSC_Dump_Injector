// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _id_D78A();
}

_id_D78A()
{
    level._id_2777["gametype_think"] = ::bot_monuments_think;
}

bot_monuments_think()
{
    self notify( "bot_monuments_think" );
    self endon( "bot_monuments_think" );
    self endon( "death" );
    self endon( "disconnect" );
    level endon( "game_ended" );

    for (;;)
    {
        self [[ self._id_B012 ]]();
        waitframe();
    }
}
