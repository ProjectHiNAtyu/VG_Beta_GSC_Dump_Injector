// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    if ( !getdvarint( "scr_br_alt_mode_inflation", 0 ) )
        return;

    level._id_29D2 = _func_020F();
    level._id_29D2._id_4A67 = 0;
    level._id_29D2._id_3D6D = getdvarint( "scr_br_alt_mode_inflation_cost", 45 );
    level._id_29D2._id_4FD8 = getdvarfloat( "scr_br_alt_mode_inflation_drop_percent", 1.0 );
    level._id_1F29 = getdvarfloat( "scr_br_alt_mode_inflation_respawn_delay", 10.0 );
    scripts\mp\gametypes\br_gametypes::_id_C235( "playerDropPlunderOnDeath", ::_id_B68A );
    scripts\mp\gametypes\br_gametypes::_id_C235( "circleTimer", ::_id_3710 );

    if ( !getdvarint( "scr_br_alt_mode_inflation_gulag", 0 ) )
        scripts\mp\gametypes\br_gametypes::_id_4A97( "gulag" );

    level._id_7DCE = 0.0;
    level._id_C6B7 = 0;
}

_id_B68A( var_0, var_1 )
{
    var_2 = self._id_B943;

    if ( istrue( level._id_2A82 ) && !level._id_29D2._id_4A67 && var_2 >= level._id_29D2._id_3D6D )
    {
        var_2 = var_2 - level._id_29D2._id_3D6D;
        self._id_7E77 = 1;
    }

    var_2 = int( var_2 * level._id_29D2._id_4FD8 );
    scripts\mp\gametypes\br_plunder::_id_B790( 0 );
    scripts\mp\gametypes\br_plunder::_id_5006( var_2, var_0 );
    return 1;
}

_id_3710( var_0 )
{
    if ( !var_0 )
        scripts\mp\gametypes\br_gulag::_id_D86F();

    var_1 = scripts\mp\gametypes\br_gulag::_id_6A64();

    if ( !level._id_29D2._id_4A67 && var_0 >= var_1 )
    {
        level._id_29D2._id_4A67 = 1;

        foreach ( var_3 in level._id_B758 )
        {
            if ( !isdefined( var_3 ) || !isai( var_3 ) )
                continue;

            scripts\mp\gametypes\br_killstreaks::_id_4322( var_3, "gulag_closed", undefined, 2 );
        }
    }

    return 0;
}
