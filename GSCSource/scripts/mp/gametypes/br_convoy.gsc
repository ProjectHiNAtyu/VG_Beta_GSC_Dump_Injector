// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_F94A( var_0 )
{
    level thread _id_E38F( var_0 );
}

_id_F949( var_0 )
{
    level thread _id_E37C( var_0 );
}

_id_E38F( var_0 )
{
    level._id_2A07 = [];
    var_1 = _func_00E6( "br_convoy", "targetname" );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
        var_2[var_3] = var_1[var_3];

    var_4 = ( level._id_2A4D._id_2A52[0] + level._id_2A4D._id_2A52[1] ) * 0.5;
    var_5 = var_0._id_E712 - var_4;
    var_6 = _func_025B( var_5 )[1];
    var_7 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_8 = var_2[var_3]._id_02EA - var_4;
        var_7[var_3] = _func_025B( var_8 )[1];
    }

    var_9 = -1;
    var_10 = -1;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_6 < var_7[var_3] )
        {
            var_10 = var_3;
            continue;
        }

        if ( var_10 != -1 )
            break;
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_6 > var_7[var_3] )
        {
            var_9 = var_3;
            continue;
        }

        if ( var_9 != -1 )
            break;
    }

    if ( var_9 == -1 )
        var_9 = var_1.size - 1;

    if ( var_10 == -1 )
        var_10 = 0;

    for ( var_3 = 0; var_3 < var_7.size; var_3++ )
    {

    }

    var_11 = 1;
    var_12 = [ var_9, var_10 ];

    for ( var_3 = 0; var_3 < var_11; var_3++ )
    {
        if ( var_9 - 1 - var_3 <= 0 )
            var_12[var_12.size] = var_1.size - 1 - var_3;
        else
            var_12[var_12.size] = var_9 - 1 - var_3;

        if ( var_10 + 1 + var_3 >= var_1.size )
        {
            var_12[var_12.size] = 0;
            continue;
        }

        var_12[var_12.size] = var_10 + 1 + var_3;
    }

    for ( var_3 = 0; var_3 < var_12.size; var_3++ )
    {

    }

    for ( var_3 = 0; var_3 < var_12.size; var_3++ )
        thread _id_E288( var_1[var_12[var_3]] );
}

_id_E37C( var_0 )
{
    level._id_2A07 = [];
    var_1 = _func_00E6( "br_convoy", "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( distancesquared( var_4._id_02EA, ( 19328, 2944, 512 ) ) < 40000 )
            var_2[var_2.size] = var_4;
    }

    var_1 = _id_077B::_id_1B97( var_1, var_2 );
    var_6 = [];

    for ( var_7 = 0; var_7 < var_1.size; var_7++ )
        var_6[var_7] = var_1[var_7];

    var_8 = ( level._id_2A4D._id_2A52[0] + level._id_2A4D._id_2A52[1] ) * 0.5;
    var_9 = var_0._id_E712 - var_8;
    var_10 = _func_025B( var_9 )[1];
    var_11 = [];

    for ( var_7 = 0; var_7 < var_1.size; var_7++ )
    {
        var_12 = var_6[var_7]._id_02EA - var_8;
        var_11[var_7] = _func_025B( var_12 )[1];
    }

    var_13 = -1;
    var_14 = -1;

    for ( var_7 = 0; var_7 < var_1.size; var_7++ )
    {
        if ( var_10 < var_11[var_7] )
        {
            var_14 = var_7;
            continue;
        }

        if ( var_14 != -1 )
            break;
    }

    for ( var_7 = 0; var_7 < var_1.size; var_7++ )
    {
        if ( var_10 > var_11[var_7] )
        {
            var_13 = var_7;
            continue;
        }

        if ( var_13 != -1 )
            break;
    }

    if ( var_13 == -1 )
        var_13 = var_1.size - 1;

    if ( var_14 == -1 )
        var_14 = 0;

    for ( var_7 = 0; var_7 < var_11.size; var_7++ )
    {

    }

    var_15 = 4;
    var_16 = [ var_13, var_14 ];

    for ( var_7 = 0; var_7 < var_15; var_7++ )
    {
        if ( var_13 - 1 - var_7 <= 0 )
            var_16[var_16.size] = var_1.size - 1 - var_7;
        else
            var_16[var_16.size] = var_13 - 1 - var_7;

        if ( var_14 + 1 + var_7 >= var_1.size )
        {
            var_16[var_16.size] = 0;
            continue;
        }

        var_16[var_16.size] = var_14 + 1 + var_7;
    }

    for ( var_7 = 0; var_7 < var_16.size; var_7++ )
    {

    }

    for ( var_7 = 0; var_7 < var_16.size; var_7++ )
        thread _id_E2F4( var_1[var_16[var_7]] );
}

_id_E2F4( var_0 )
{
    level endon( "game_ended" );
    var_1 = 0;

    if ( isdefined( var_0._id_0375 ) )
    {
        if ( var_0._id_0375 == "left" )
            var_1 = 1;
    }

    var_2 = [];

    for ( var_3 = 0; var_3 < 2; var_3++ )
    {
        var_4 = _id_E399( var_0, var_0._id_0054, var_1 );
        var_2[var_2.size] = var_4;
        wait 1.333;
    }

    if ( level._id_9AA7 == "mp_torez" )
    {
        var_5 = 3;
        var_6 = 17;
    }
    else
    {
        var_5 = 15;
        var_6 = 25;
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3] vehicle_setspeed( var_5, 30, 30 );

    wait 10;

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3] vehicle_setspeed( var_5 * 2, 30, 30 );

    wait 4;

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3] vehicle_setspeed( var_6, 30, 30 );
}

_id_E288( var_0 )
{
    level endon( "game_ended" );
    var_1 = 0;

    if ( isdefined( var_0._id_0375 ) )
    {
        if ( var_0._id_0375 == "left" )
            var_1 = 1;
    }

    var_2 = [];

    for ( var_3 = 0; var_3 < 4; var_3++ )
    {
        var_2[var_2.size] = _id_E399( var_0, var_0._id_0054, var_1 );
        wait 1.333;
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3] vehicle_setspeed( 15, 30, 30 );

    wait 12;

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3] vehicle_setspeed( 25, 30, 30 );
}

_id_E399( var_0, var_1, var_2 )
{
    var_3 = _func_0211( "veh8_mil_lnd_umike", "umike", "umike", var_0._id_02EA, var_1 );
    var_3._id_1887 = "umikeVeh";
    var_3 vehicle_setspeed( 25, 30, 30 );
    var_3 thread _id_10300( var_0 );
    var_3 _meth_8373( "dustFX", "normal" );
    var_3 _meth_8373( "exhaustFX", "active" );
    level._id_2A07[level._id_2A07.size] = var_3;
    var_3._id_B7B3 = [];
    var_3._id_2A4B = var_2;
    return var_3;
}

_id_10300( var_0 )
{
    self endon( "death" );
    self endon( "stop_follow_path" );
    self _meth_83DB( var_0 );
    self playlocalsound( "iw8_mp_snatch_convoy_lp" );

    for ( var_1 = _func_00E5( var_0._id_0457, "targetname" ); isdefined( var_1 ); var_1 = _func_00E5( var_1._id_0457, "targetname" ) )
    {
        var_1 waittill( "trigger" );

        if ( !isdefined( var_1._id_0457 ) )
            break;
    }

    self _meth_8436( 0, 30, 30 );

    for ( var_2 = self _meth_842D(); var_2 > 1; var_2 = self _meth_842D() )
        wait 0.1;

    self stoplookat( "iw8_mp_snatch_convoy_lp" );
    self stoplookat( "veh_technical_temp_surface" );
    level notify( "infil_locked" );
    thread _id_8CC8();
    wait 3;
    var_3 = _func_0205( "script_model", self._id_02EA );
    var_3 setmode( "veh8_mil_lnd_umike_static_allied" );
    var_3._id_0054 = self._id_0054;
    _id_07D0::_id_C78C( self._id_A8F3 );
    self _meth_809A();
}

_id_E33C()
{
    if ( isai( self ) )
    {
        if ( !isdefined( self._id_4953 ) )
        {
            if ( !scripts\mp\gametypes\br_public::_id_8971() )
                return;
        }

        if ( level._id_EF62 )
            var_0 = _id_0A7C::_id_6DAC( self._id_045B, "players" );
        else
            var_0 = [ self ];

        foreach ( var_2 in var_0 )
        {
            var_2 notify( "cancel_c130" );
            var_2 notify( "cancel_heli" );
            var_2 _meth_8415();

            if ( !isdefined( var_2._id_2A9F ) )
            {
                var_2._id_2A9F = _id_6B73( var_2._id_045B );
                var_2._id_2A9F._id_B7B3[var_2._id_2A9F._id_B7B3.size] = var_2;
            }

            var_3 = var_2._id_2A9F;
            var_2._id_0054 = var_3._id_0054;

            if ( !isdefined( var_3._id_DCCF ) )
            {
                var_3 _id_DCB2();
                var_3._id_DCCF = 1;
            }

            var_2 thread _id_8C89( var_3 );
        }
    }
}

_id_8C89( var_0 )
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "cancel_convoy" );
    self endon( "br_jump" );
    self._id_2A38 = "convoy";
    thread _id_AC4B( var_0 );
    thread _id_9538( var_0 );
    thread _id_9539( var_0 );
}

_id_8CC8()
{
    foreach ( var_1 in self._id_B7B3 )
    {
        if ( isdefined( var_1 ) && isdefined( var_1._id_2A38 ) && var_1._id_2A38 == "convoy" )
        {
            var_1 _meth_8694();
            var_1 _meth_8415();
            var_1 thread _id_8C8A( self );
            var_1 notify( "br_jump" );
        }
    }
}

_id_9539( var_0 )
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "cancel_c130" );
    self endon( "cancel_heli" );
    self endon( "br_jump" );
    self waittill( "halo_kick_c130" );
    var_0 thread _id_8CC8();
}

_id_9538( var_0 )
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "cancel_convoy" );
    self endon( "br_jump" );

    for (;;)
    {
        self waittill( "halo_jump_c130" );

        if ( !scripts\mp\gametypes\br_public::_id_8971() )
            continue;

        if ( scripts\mp\gametypes\br_c130::_id_8998( var_0._id_02EA ) )
        {
            if ( scripts\mp\gametypes\br_public::_id_8971() )
            {
                var_1 = _id_0A7C::_id_6DAC( self._id_045B, "players" );

                foreach ( var_3 in var_1 )
                {
                    if ( var_3 != self )
                        var_3 notify( "halo_kick_c130" );
                }

                break;
            }
        }
        else
            self iprintlnbold( &"MP_BR_INGAME/NOT_PLAYABLE" );

        waitframe();
    }

    self _meth_8694();
    thread _id_8C8A( var_0 );
    self notify( "br_jump" );
}

_id_8C8A( var_0 )
{
    self _meth_82F6( "ui_br_infiled", 1 );
    self._id_2A38 = undefined;
    var_1 = self getplayerangles();
    self _meth_8415();

    if ( istrue( var_0._id_2A4B ) )
        var_2 = _func_0301( var_0._id_0054 ) * 180;
    else
        var_2 = anglestoright( var_0._id_0054 ) * 180;

    var_3 = anglestoforward( var_0._id_0054 );

    if ( !isdefined( var_0._id_A969 ) )
        var_0._id_A969 = 0;
    else
        var_0._id_A969++;

    if ( var_0._id_A969 == 0 )
        var_2 = var_2 + var_3 * 36;
    else if ( var_0._id_A969 == 1 )
        var_2 = var_2 - var_3 * 36;
    else if ( var_0._id_A969 == 2 )
        var_2 = var_2 + var_3 * 72;
    else
        var_2 = var_2 - var_3 * 72;

    var_4 = var_0._id_02EA + var_2 + ( 0, 0, 18000 );
    var_5 = _func_02C4( [ "physicscontents_glass", "physicscontents_water", "physicscontents_playerclip", "physicscontents_vehicleclip" ] );
    var_6 = _func_02BC( var_4, var_4 + ( 0, 0, -20000 ), var_5, undefined, 0, "physicsquery_closest", 1 );

    if ( isdefined( var_6 ) && var_6.size > 0 )
    {
        var_7 = var_6[0]["position"];
        self _meth_835E( var_7, 1, 1 );
    }
    else
        self _meth_835E( var_0._id_02EA + var_2, 1, 1 );

    waitframe();
    var_8 = game["music"]["snatch_spawn"].size;
    level._id_410D = _func_01B8( var_8 );
    self _meth_84A8( game["music"]["snatch_spawn"][level._id_410D] );
    self _meth_8498();
    self _meth_8362( var_1 );
    self notify( "fallDone" );
    _id_076E::_id_AE17();
}

_id_AC4B( var_0 )
{
    self._id_0054 = var_0._id_0054;
    self _meth_8269( var_0, "tag_origin" );
    self _meth_8260();
    _id_0A74::_id_0D99( "", 0 );
    self _meth_8695( "camera_custom_orbit_1" );
}

_id_1AE6()
{
    foreach ( var_1 in level._id_2A07 )
    {
        if ( !isdefined( var_1 ) || !isdefined( var_1._id_B7B3 ) )
            return 0;
    }

    return 1;
}

_id_6B73( var_0 )
{
    if ( level._id_EF62 )
    {
        foreach ( var_2 in level._id_2A07 )
        {
            if ( isdefined( var_2._id_E38E ) && var_2._id_E38E == var_0 && !_id_8A9B( var_2 ) )
                return var_2;
        }

        foreach ( var_2 in level._id_2A07 )
        {
            if ( !isdefined( var_2._id_E38E ) )
            {
                var_2._id_E38E = var_0;
                return var_2;
            }
        }
    }
    else
    {
        var_6 = _id_077B::_id_1BAE( level._id_2A07, ::_id_E038 );

        foreach ( var_2 in var_6 )
        {
            if ( !_id_8A9B( var_2 ) )
                return var_2;
        }
    }

    return undefined;
}

_id_8A9B( var_0 )
{
    return var_0._id_B7B3.size == 8;
}

_id_E038( var_0, var_1 )
{
    return var_0._id_B7B3.size < var_1._id_B7B3.size;
}

_id_DCB2()
{
    var_0 = _id_07D0::_id_C56F( 10 );

    if ( var_0 == -1 )
        return -1;

    _id_07D0::_id_A854( var_0, "invisible", ( 0, 0, 0 ) );
    _id_07D0::_id_FB91( var_0, self );
    _id_07D0::_id_FB9B( var_0, "active" );
    var_1 = "icon_minimap_bradley";
    _id_07D0::_id_FB8C( var_0, var_1 );
    _id_07D0::_id_FB95( var_0, 1 );
    _id_07D0::_id_A88F( var_0 );
    self._id_A8F3 = var_0;
}
