// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_D4F4()
{
    level.callbackplayerspawned = ::playerspawnedcallbackhandler;
    level.callbackomnvarschanged = scripts\common\omnvars_shared::callbackomnvarschanged;
}

_id_00ED( var_0, var_1, var_2 )
{
    if ( isdefined( level.callbackomnvarschanged ) )
        [[ level.callbackomnvarschanged ]]( var_0, var_1, var_2 );
}

_id_00F7( var_0 )
{
    if ( isdefined( level.callbackplayerspawned ) )
        self [[ level.callbackplayerspawned ]]( var_0 );
}

_id_00FB()
{
    if ( isdefined( level._id_2F33 ) && ( !isdefined( level._id_60D7 ) || !level._id_60D7 ) )
    {
        [[ level._id_2F33 ]]();
        level._id_60D7 = 1;
    }
}

addlocalplayerspawnedcallback( var_0 )
{
    addcallback( "on_localplayer_spawned", var_0 );
}

removelocalplayerspawnedcallback( var_0 )
{
    removecallback( "on_localplayer_spawned", var_0 );
}

addplayerspawnedcallback( var_0 )
{
    addcallback( "on_player_spawned", var_0 );
}

removeplayerspawnedcallback( var_0 )
{
    removecallback( "on_player_spawned", var_0 );
}

_id_2EFD( var_0, var_1, var_2 )
{
    if ( isdefined( level._id_0B4F ) && isdefined( level._id_0B4F[var_0] ) )
    {
        for ( var_3 = 0; var_3 < level._id_0B4F[var_0].size; var_3++ )
        {
            var_4 = level._id_0B4F[var_0][var_3];

            if ( !isdefined( var_4 ) )
                continue;

            if ( isdefined( var_2 ) )
            {
                self thread [[ var_4 ]]( var_1, var_2 );
                continue;
            }

            self thread [[ var_4 ]]( var_1 );
        }
    }
}

addcallback( var_0, var_1 )
{
    if ( !isdefined( level._id_0B4F ) || !isdefined( level._id_0B4F[var_0] ) )
        level._id_0B4F[var_0] = [];

    var_2 = level._id_0B4F[var_0];

    for ( var_4 = _func_0022( var_2 ); isdefined( var_4 ); var_4 = _func_0024( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_1 )
            return;
    }

    __asm_var_clear( 2 )
    __asm_var_clear( 0 )
    level._id_0B4F[var_0] = _id_04E7::_id_1B63( level._id_0B4F[var_0], var_1 );
}

removecallback( var_0, var_1 )
{
    var_2 = level._id_0B4F[var_0];

    for ( var_4 = _func_0022( var_2 ); isdefined( var_4 ); var_4 = _func_0024( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == var_1 )
        {
            level._id_0B4F[var_0] = _id_04E7::_id_1B9C( level._id_0B4F[var_0], var_4, 0 );
            return;
        }
    }

    __asm_var_clear( 2 )
}

playerspawnedcallbackhandler( var_0 )
{
    var_1 = self _meth_802D();

    if ( var_0 == var_1 )
        thread _id_2EFD( "on_localplayer_spawned", var_0 );

    thread _id_2EFD( "on_player_spawned", var_0 );
}
