// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_100DE()
{
    if ( !isdefined( level._id_FFF1 ) )
        level._id_FFF1 = _func_020F();

    level._id_FFF1._id_102F4 = [];
    [[ _id_099D::_id_6D05( "vehicle", "init" ) ]]();
    _id_09B8::_id_100F4();
    _id_09BA::_id_101B7();
    _id_09BC::_id_102BE();
    _id_09B9::_id_10145();
    _id_09B6::_id_1004B();
    _id_09BB::_id_10275();
    _id_09B7::_id_1009A();
    _id_09B5::_id_10010();
    _id_09A1::_id_1037A();
    [[ _id_099D::_id_6D05( "vehicle", "initVehicles" ) ]]();
}

_id_8ADC()
{
    return isdefined( self._id_1031C );
}

_id_8ADE()
{
    return istrue( self._id_87E1 );
}

_id_102EC()
{
    var_0 = _id_100BF( self._id_1031C );

    if ( isdefined( var_0 ) )
        return istrue( var_0._id_315D );

    return undefined;
}

_id_100BF( var_0, var_1 )
{
    var_2 = level._id_FFF1._id_102F4[var_0];

    if ( !isdefined( var_2 ) )
    {
        if ( istrue( var_1 ) )
        {
            var_2 = _func_020F();
            level._id_FFF1._id_102F4[var_0] = var_2;
            var_2._id_FC1E = undefined;
            var_2._id_4820 = undefined;
            var_2._id_315D = undefined;
        }
    }

    return var_2;
}

_id_10024( var_0, var_1, var_2 )
{
    var_0._id_027F = 2147483647;
    var_0._id_01FF = var_0._id_027F;
    var_0._id_1031C = var_1;
    var_0 setneargoalnotifydist( 1 );
    var_0 _meth_8225();

    if ( isdefined( var_2._id_02F2 ) )
        _id_09BA::_id_101F8( var_0, var_2._id_02F2 );

    if ( isdefined( var_2._id_045B ) )
        _id_09BA::_id_101FA( var_0, var_2._id_045B );
    else
        _id_09BA::_id_101FA( var_0, "neutral" );

    var_0 _id_0764::_id_D3AD( ::_id_100A2 );
    var_0 _id_0764::_id_D17C( ::_id_100A1 );
    _id_09A2::_id_D5DA( var_0, ::_id_1013A );
    _id_09A2::_id_D5DB( var_0, ::_id_1013B );
    _id_09A2::_id_D5A8( var_0, ::_id_100DB );
    _id_09A2::_id_D5A9( var_0, ::_id_100DC );
    _id_09BA::_id_101F0( var_0 );

    if ( !_id_06BB::_id_87BA() || !istrue( var_2._id_4AD9 ) )
        _id_09B8::_id_10105( var_0 );

    if ( _id_099D::_id_8A10( "vehicle", "create" ) )
        [[ _id_099D::_id_6D05( "vehicle", "create" ) ]]( var_0, var_2 );

    thread _id_102CF( var_0 );
}

vehicle_create( var_0, var_1 )
{
    var_0 _id_09B6::_id_1006B( 1 );
    _id_09BC::_id_102C3( var_0, var_1._id_02F2, var_1._id_045B );
    _id_09B7::_id_1009B( var_0, var_1._id_E39A );

    if ( _id_099D::_id_8A10( "vehicle", "createLate" ) )
        [[ _id_099D::_id_6D05( "vehicle", "createLate" ) ]]( var_0, var_1 );
}

_id_1008D( var_0 )
{
    if ( istrue( var_0._id_87E1 ) )
        return;

    var_0 notify( "death" );
    var_0._id_87E1 = 1;

    if ( isdefined( var_0._id_AA96 ) && !istrue( var_0._id_A71B ) )
        var_0 thread [[ var_0._id_AA96 ]]();

    var_0 _id_09B6::_id_1006B( 0 );
    var_0 setnodeploy( 1 );
    _id_09A2::_id_3930( var_0 );
    var_0 _id_0764::_id_38A7( 1 );
    _id_09B5::_id_1000F( var_0 );
    _id_09B6::_id_10031( var_0 );
    _id_09B8::_id_100E8( var_0 );
    _id_09BC::_id_102B9( var_0 );

    if ( _id_099D::_id_8A10( "vehicle", "deleteNextFrame" ) )
        [[ _id_099D::_id_6D05( "vehicle", "deleteNextFrame" ) ]]( var_0 );
}

_id_1008E( var_0 )
{
    _id_09BA::_id_10178( var_0 );
    _id_09BB::_id_1026D( var_0._id_1031C, var_0 getentitynumber() );

    if ( _id_099D::_id_8A10( "vehicle", "deleteNextFrameLate" ) )
        [[ _id_099D::_id_6D05( "vehicle", "deleteNextFrameLate" ) ]]( var_0 );

    var_1 = _id_100CB( var_0 );

    if ( isdefined( var_1 ) )
    {
        foreach ( var_3 in var_1 )
            var_3 _meth_809A();
    }

    _id_09BC::_id_0B8F( var_0 );
}

_id_102CF( var_0 )
{
    level endon( "game_ended" );
    var_1 = _id_100BF( var_0._id_1031C );

    while ( isdefined( var_0 ) )
    {
        var_2 = _func_020F();
        _id_09A1::_id_10393( var_0 );

        if ( isdefined( var_1._id_FC1E ) )
            var_0 [[ var_1._id_FC1E ]]( var_2 );

        waitframe();
    }
}

_id_1023E( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1._id_A90B ) )
        var_1._id_A90B = var_2;

    if ( !isdefined( var_0._id_F894 ) )
        var_0._id_F894 = [];

    var_4 = undefined;

    if ( _func_0120( var_2 ) )
        var_4 = var_2;
    else
        var_4 = var_2._id_0084;

    var_0._id_F894[var_4] = var_1;
    var_5 = var_0._id_3555;

    if ( !isdefined( var_5 ) )
        var_5 = [ var_0 ];

    if ( !_id_077B::_id_1B78( var_5, var_1 ) )
        var_5 = _id_077B::_id_1B63( var_5, var_1 );

    var_0._id_3555 = var_5;

    if ( istrue( var_3 ) )
        thread _id_102C4( var_0, var_1 );
}

_id_10090( var_0, var_1 )
{
    if ( !isdefined( var_0._id_F894 ) )
        return;

    var_2 = undefined;

    if ( _func_0120( var_1 ) )
        var_2 = var_1;
    else
        var_2 = var_1._id_0084;

    var_3 = var_0._id_F894[var_2];
    var_0._id_F894[var_2] = undefined;

    if ( isdefined( var_3 ) )
    {
        var_4 = var_0._id_3555;

        if ( isdefined( var_4 ) )
        {
            var_4 = _id_077B::_id_1B96( var_4, var_3 );
            var_0._id_3555 = var_4;
        }

        var_3 notify( "vehicle_trackTurretProjectile" );
    }
}

_id_100CA( var_0, var_1 )
{
    if ( !isdefined( var_0._id_F894 ) )
        return undefined;

    var_2 = undefined;

    if ( _func_0120( var_1 ) )
        var_2 = var_1;
    else
        var_2 = var_1._id_0084;

    return var_0._id_F894[var_2];
}

_id_100CB( var_0 )
{
    var_1 = [];

    if ( isdefined( var_0._id_F894 ) )
        var_1 = var_0._id_F894;

    return var_1;
}

_id_102C4( var_0, var_1 )
{
    var_1 endon( "death" );
    var_1 notify( "vehicle_trackTurretProjectile" );
    var_1 endon( "vehicle_trackTurretProjectile" );

    for (;;)
    {
        var_1 waittill( "missile_fire", var_2 );

        if ( isdefined( var_2 ) )
            var_2._id_FFF1 = var_0;
    }
}

_id_10122( var_0, var_1 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101BD( var_0, var_1 );
    else if ( level._id_EF62 )
    {
        var_2 = var_0._id_045B;

        if ( !isdefined( var_2 ) || var_2 == "neutral" )
        {
            if ( isdefined( var_0._id_02F2 ) )
                var_0._id_045B = var_0._id_02F2._id_045B;
        }

        if ( !isdefined( var_2 ) )
            return 0;

        return var_0._id_045B == var_1._id_045B;
    }
    else
        return isdefined( var_0._id_02F2 ) && var_0._id_02F2 == var_1;
}

_id_10120( var_0, var_1 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101BB( var_0, var_1 );
    else if ( level._id_EF62 )
    {
        var_2 = var_0._id_045B;

        if ( !isdefined( var_2 ) || var_2 == "neutral" )
        {
            if ( isdefined( var_0._id_02F2 ) )
                var_0._id_045B = var_0._id_02F2._id_045B;
        }

        if ( !isdefined( var_2 ) )
            return 0;

        return var_0._id_045B == var_1._id_045B;
    }
    else
        return isdefined( var_0._id_02F2 ) && var_0._id_02F2 != var_1;
}

_id_10124( var_0, var_1 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101BF( var_0, var_1 );
    else if ( level._id_EF62 )
        return ( !isdefined( var_0._id_045B ) || var_0._id_045B == "neutral" ) && !isdefined( var_0._id_02F2 );
    else
        return !isdefined( var_0._id_02F2 );
}

_id_10123( var_0, var_1 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101BE( var_0, var_1 );
    else
    {
        if ( level._id_EF62 )
            return isdefined( var_0._id_045B ) && var_0._id_045B != var_1;

        return undefined;
    }
}

_id_10121( var_0, var_1 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101BC( var_0, var_1 );
    else
    {
        if ( level._id_EF62 )
            return isdefined( var_0._id_045B ) && var_0._id_045B == var_1;

        return undefined;
    }
}

_id_10125( var_0, var_1 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101C0( var_0, var_1 );
    else
    {
        if ( level._id_EF62 )
            return !isdefined( var_0._id_045B ) || var_0._id_045B == "neutral";

        return undefined;
    }
}

_id_100C9( var_0 )
{
    if ( _id_09BA::_id_101B9( var_0 ) )
        return _id_09BA::_id_101AB( var_0 );
    else
    {
        if ( isdefined( var_0._id_045B ) && var_0._id_045B != "neutral" )
            return var_0._id_045B;

        return undefined;
    }
}

_id_1009C( var_0, var_1 )
{
    if ( _id_10258( var_0, var_1 ) )
    {
        var_2 = istrue( var_1._id_82AC );
        var_3 = var_1._id_01FF;

        if ( isdefined( var_0._id_A90B ) )
            level._id_AD44 = "MOD_EXPLOSIVE";

        var_1 _meth_80B7( 1000, var_0._id_02EA, var_0._id_02F2, var_0, "MOD_CRUSH", var_0._id_A90B );
        level._id_AD44 = undefined;

        if ( !isai( var_1 ) )
            return 1;

        if ( !var_2 && istrue( var_1._id_82AC ) )
            return 1;

        if ( var_3 > var_1._id_01FF )
            return 1;
    }

    return 0;
}

_id_10258( var_0, var_1 )
{
    if ( level._id_EF62 )
    {
        if ( level._id_5F86 == 0 )
        {
            if ( isdefined( var_0._id_02F2 ) )
            {
                if ( var_0._id_02F2 != var_1 )
                {
                    if ( var_0._id_02F2._id_045B == var_1._id_045B )
                        return 0;
                }
            }
            else if ( isdefined( var_0._id_045B ) && var_0._id_045B != "neutral" )
            {
                if ( var_0._id_045B == var_1._id_045B )
                    return 0;
            }
        }
    }

    return 1;
}

_id_10239( var_0, var_1 )
{
    var_1 endon( "disconnect" );
    var_1 notify( "vehicle_preventCollisionDamageForTimeAfterExit" );
    var_1 endon( "vehicle_preventCollisionDamageForTimeAfterExit" );
    var_1._id_102F0 = [];
    var_1._id_102F0["inflictor"] = var_0;
    var_1._id_102F0["objWeapon"] = var_0._id_A90B;
    var_1._id_102F0["meansOfDeath"] = "MOD_CRUSH";
    _id_1023A( var_1 );
    thread _id_10008( var_1 );
}

_id_1023A( var_0 )
{
    var_0 endon( "death" );
    wait 2;
}

_id_10008( var_0 )
{
    var_0 notify( "vehicle_preventCollisionDamageForTimeAfterExit" );
    var_0._id_102F0 = undefined;
}

_id_1025B( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1._id_102F0 ) )
        return 0;

    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0 != var_1._id_102F0["inflictor"] )
        return 0;

    if ( !isdefined( var_3 ) )
        return 0;

    if ( !_id_06BB::_id_87BA() )
    {
        if ( var_3 != var_1._id_102F0["objWeapon"] )
            return 0;
    }

    if ( var_2 != var_1._id_102F0["meansOfDeath"] )
        return 0;

    return 1;
}

_id_10005( var_0 )
{
    if ( !isdefined( var_0._id_9CBF ) || var_0._id_9CBF != "MOD_CRUSH" )
        return 0;

    if ( !isdefined( var_0._id_7E78 ) || !var_0._id_7E78 _id_8ADC() )
        return 0;

    return 1;
}

_id_10233( var_0 )
{
    if ( !_id_10005( var_0 ) )
        return;

    if ( var_0._id_7E78._id_1031C == "little_bird" || var_0._id_7E78._id_1031C == "loot_chopper" || var_0._id_7E78._id_1031C == "magma_plunder_chopper" )
        thread _id_10234( var_0._id_103C0 );
    else
        _func_019D( var_0._id_103C0._id_02EA, "kstreak_goliath_imp_default_med" );
}

_id_10234( var_0 )
{
    var_1 = 35;
    var_0._id_A533 = 1;
    _func_019D( var_0._id_02EA, "kstreak_goliath_imp_default_med" );
    var_2 = _id_099C::_id_69C5();

    if ( var_2.size < var_1 )
    {
        var_3 = _func_0205( "script_model", var_0 gettagorigin( "j_mainroot" ) );
        var_3._id_0054 = var_0._id_0054;
        var_3 setmode( "player_death_fx" );
        var_3 _meth_8373( "effects", "gib", 0 );

        foreach ( var_5 in var_2 )
            var_3 _meth_847B( var_5 );

        wait 0.5;
        var_3 _meth_809A();
    }
}

_id_102E0( var_0, var_1, var_2, var_3 )
{
    var_0 endon( "death" );
    level endon( "game_ended" );

    if ( isdefined( var_3 ) )
        var_0 endon( var_3 );

    var_4 = 0;
    var_5 = undefined;
    var_6 = undefined;

    for (;;)
    {
        var_7 = 0;
        var_8 = anglestoup( var_0._id_0054 )[2];

        if ( var_8 <= 0.0872 )
        {
            var_7 = 1;
            var_5 = undefined;
        }
        else if ( var_8 <= 0.5736 )
        {
            if ( !isdefined( var_5 ) )
                var_5 = gettime() + 3000;

            if ( gettime() > var_5 )
            {
                var_7 = 1;
                var_5 = undefined;
            }
        }
        else
        {
            if ( var_4 )
            {
                _id_09B8::_id_100E3( var_0, 1 );
                var_4 = 0;
            }

            var_7 = 0;
            var_5 = undefined;
        }

        if ( var_7 )
        {
            if ( isdefined( var_1 ) )
                thread [[ var_1 ]]( var_0 );

            if ( !var_4 )
            {
                _id_09B8::_id_100E3( var_0, 0 );
                var_4 = 1;
            }

            _id_09BA::_id_1017B( var_0 );
            var_9 = 0;
            var_6 = gettime() + 3000;

            for (;;)
            {
                if ( _func_0257( anglestoup( var_0._id_0054 ), ( 0, 0, 1 ) ) > 0.0872 )
                    break;

                if ( gettime() >= var_6 )
                {
                    var_9 = 1;
                    break;
                }

                waitframe();
            }

            var_6 = undefined;

            if ( isdefined( var_2 ) )
                thread [[ var_2 ]]( var_0, var_9 );
        }

        waitframe();
    }
}

_id_100A8( var_0, var_1 )
{
    if ( var_1 )
    {
        var_2 = _id_100BF( var_0._id_1031C );

        if ( isdefined( var_2._id_4820 ) )
            var_0 [[ var_2._id_4820 ]]();
    }
}

_id_1008C()
{
    level notify( "vehicle_deleteCollmapVehicles" );
    level endon( "vehicle_deleteCollmapVehicles" );
    wait 1;
    var_0 = getentarray( "delete_me", "targetname" );

    if ( isdefined( var_0 ) && var_0.size > 0 )
    {
        for ( var_1 = var_0.size - 1; var_1 >= 0; var_1-- )
            var_0[var_1] _meth_809A();
    }
}

_id_1013A()
{
    var_0 = _id_09BA::_id_10189( self, 0 );
    _id_09A1::_id_1038E( "missileLocking", var_0, self._id_1031C );
}

_id_1013B()
{
    var_0 = _id_09BA::_id_10189( self, 0 );
    _id_09A1::_id_10379( "missileLocking", var_0, self._id_1031C );
}

_id_100DB()
{
    var_0 = _id_09BA::_id_10189( self, 0 );
    _id_09A1::_id_1038E( "missileIncoming", var_0, self._id_1031C );
}

_id_100DC()
{
    var_0 = _id_09BA::_id_10189( self, 0 );
    _id_09A1::_id_10379( "missileIncoming", var_0, self._id_1031C );
}

_id_100A2( var_0 )
{
    if ( _id_099D::_id_8A10( "emp", "onVehicleEMPed" ) )
        self [[ _id_099D::_id_6D05( "emp", "onVehicleEMPed" ) ]]( var_0 );

    _id_09BA::_id_10159( self, 0 );
}

_id_100A1( var_0 )
{
    _id_09BA::_id_10159( self, 1 );
}
