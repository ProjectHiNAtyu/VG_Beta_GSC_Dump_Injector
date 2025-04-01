// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    var_0 = getentarray( "turret_mp", "targetname" );

    if ( level._id_60D1 == "br" )
    {
        foreach ( var_2 in var_0 )
            var_2 _meth_809A();

        return;
    }

    foreach ( var_2 in var_0 )
        _id_1041( var_2 );
}

_id_1041( var_0 )
{
    var_0 _meth_8225();
    var_0 setneargoalnotifydist( 1 );
    var_0 _meth_8309( 0 );
    var_1 = _func_034C( var_0._id_04D5 );
    var_0._id_A90B = var_1;

    if ( isdefined( var_0._id_0375 ) )
    {
        var_2 = _func_021A( var_0._id_0375, "," );

        foreach ( var_4 in var_2 )
        {
            var_5 = _func_021A( var_4, "|" );

            if ( isdefined( var_5 ) )
            {
                if ( var_5[0] == "arc" )
                {
                    if ( isdefined( var_5[1] ) && var_5[1] != "0" )
                        var_0 _meth_8330( int( var_5[1] ) );

                    if ( isdefined( var_5[2] ) && var_5[2] != "0" )
                        var_0 _meth_8371( int( var_5[2] ) );

                    if ( isdefined( var_5[3] ) && var_5[3] != "0" )
                        var_0 _meth_8394( int( var_5[3] ) );

                    if ( isdefined( var_5[4] ) && var_5[4] != "0" )
                        var_0 _meth_82EF( int( var_5[4] ) );
                }
            }
        }
    }

    var_7 = var_0 gettagorigin( "tag_turret_pitch" );
    var_8 = _id_07AD::_id_3FCE( var_7, "HINT_BUTTON", "hud_icon_turret", &"KILLSTREAKS_HINTS/SENTRY_USE_GL" );
    var_8 _meth_820B( var_0, "tag_turret_pitch", ( 0, 0, 5 ), ( 0, 0, 0 ) );
    var_0._id_FE8E = var_8;
    var_8 thread _id_F897( var_0 );
    var_9 = var_0 gettagorigin( "tag_player" );
    var_0._id_8D49 = _func_0205( "script_model", var_9 );
    var_0._id_8D49 _meth_820B( var_0, "tag_player", ( -60, 0, 20 ), ( 0, 0, 0 ) );
}

_id_F897( var_0 )
{
    for (;;)
    {
        self waittill( "trigger", var_1 );
        self _meth_8225();
        thread _id_5331( var_1 );
        var_1._id_BC5D = var_1 getcurrentweapon();
        var_1._id_FEF0 = _func_034D( var_0._id_A90B );
        var_1 _id_099A::_id_0BEB( var_1._id_FEF0, undefined, undefined, 1 );

        while ( var_1 _id_099A::_id_4D21( var_1._id_FEF0, 1 ) == 0 )
            waitframe();

        thread _id_5332( var_1, var_0 );
        self waittill( "end_turret_use" );

        if ( isdefined( var_1 ) )
        {
            var_1 controlturreton( var_0 );
            var_1 switchtoweapon( var_1._id_BC5D );
            var_1 _id_099A::_id_0D6A( var_1._id_FEF0 );
        }

        self makeunusable();
    }
}

_id_5332( var_0, var_1 )
{
    while ( var_0 useanimtree() )
        waitframe();

    for (;;)
    {
        if ( var_0 useanimtree() )
        {
            self notify( "end_turret_use" );
            break;
        }

        waitframe();
    }
}

_id_5331( var_0 )
{
    var_0 waittill( "death_or_disconnect" );
    self notify( "end_turret_use" );
}
