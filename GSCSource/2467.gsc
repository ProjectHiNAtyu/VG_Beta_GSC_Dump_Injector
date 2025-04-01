// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_1960()
{
    var_0 = _id_09B4::_id_100BF( "apc_russian", 1 );
    var_0._id_FC1E = ::_id_1976;
    var_0._id_4820 = ::_id_195E;
    _id_1965();
    _id_1963();
    _id_1966();
    _id_1961();
    _id_1962();

    if ( _id_099D::_id_8A10( "apc_russian", "init" ) )
        [[ _id_099D::_id_6D05( "apc_russian", "init" ) ]]();

    _id_1967();
    _id_1964();
}

_id_1964()
{
    if ( _id_099D::_id_8A10( "apc_russian", "initLate" ) )
        [[ _id_099D::_id_6D05( "apc_russian", "initLate" ) ]]();
}

_id_1965()
{
    var_0 = _id_09BA::_id_101A1( "apc_russian", 1 );
    var_0._id_54B6 = ::_id_1959;
    var_0._id_5770 = _id_09BA::_id_10183;
    var_0._id_575B = ::_id_195C;
    var_0._id_C718 = _id_09BA::_id_101A5();
    var_0._id_575C["front"] = 136;
    var_0._id_575C["back"] = 129;
    var_0._id_575C["left"] = 68;
    var_0._id_575C["right"] = 68;
    var_0._id_575C["top"] = 87;
    var_0._id_575C["bottom"] = 0;
    var_1 = "front";
    var_0._id_5768[var_1] = ( 100, 0, 65 );
    var_0._id_5758[var_1] = "right";
    var_1 = "middle_left";
    var_0._id_5768[var_1] = ( -31, 14, 65 );
    var_0._id_5758[var_1] = "left";
    var_1 = "middle_right";
    var_0._id_5768[var_1] = ( -31, -20, 65 );
    var_0._id_5758[var_1] = "right";
    var_1 = "back_left";
    var_0._id_5768[var_1] = ( -90, 35, 65 );
    var_0._id_5758[var_1] = "back";
    var_1 = "back_right";
    var_0._id_5768[var_1] = ( -90, -35, 65 );
    var_0._id_5758[var_1] = "back";
    var_0._id_42EE = 0;
    var_0._id_78F1 = 1;
    var_0._id_2FD2 = "cam_vindia_passenger";
    var_0._id_42DF = "all";
    var_0._id_42DE = "all";
    var_2 = [ "driver", "front_right", "back_right", "back", "back_left", "front_left" ];
    var_3 = "driver";
    var_4 = _id_09BA::_id_101A0( "apc_russian", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ var_3, "middle_left", "back_left", "middle_right", "front" ];
    var_0._id_5768[var_3] = ( 80, 14, 65 );
    var_0._id_5758[var_3] = "left";
    var_4._id_C718 = _id_09BA::_id_10192();
    var_4._id_C718 = _id_077B::_id_1B96( var_4._id_C718, "fire" );
    var_4._id_103D0["top"] = 30;
    var_4._id_103D0["bottom"] = 10;
    var_4._id_103D0["left"] = 180;
    var_4._id_103D0["right"] = 180;
    var_4._id_18CA = "tag_seat_0";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_E351 = 10;
    var_4._id_F888 = _func_034C( "tur_apc_rus_mp" );
    var_4._id_AAB3 = "ping_vehicle_driver";
    var_3 = "front_left";
    var_4 = _id_09BA::_id_101A0( "apc_russian", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ "driver", "middle_left", "back_left", "middle_right", "front" ];
    var_4._id_18CA = "tag_seat_1";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
    var_3 = "front_right";
    var_4 = _id_09BA::_id_101A0( "apc_russian", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ "middle_right", "back_right", "middle_left", "front" ];
    var_4._id_18CA = "tag_seat_2";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
    var_3 = "back_left";
    var_4 = _id_09BA::_id_101A0( "apc_russian", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ "middle_left", "back_left", "middle_right", "front" ];
    var_4._id_18CA = "tag_seat_3";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
    var_3 = "back_right";
    var_4 = _id_09BA::_id_101A0( "apc_russian", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ "middle_right", "back_right", "middle_left", "front" ];
    var_4._id_18CA = "tag_seat_4";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
    var_3 = "back";
    var_4 = _id_09BA::_id_101A0( "apc_russian", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ "back_left", "back_right", "middle_left", "middle_right", "front" ];
    var_4._id_18CA = "tag_seat_5";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
}

_id_1963()
{
    var_0 = _id_09B8::_id_100ED( "apc_russian", 1 );
    var_0._id_CFB3["single"] = [ "driver", "front_right", "back_right", "back", "back_left", "front_left" ];
}

_id_1966()
{
    var_0 = _id_09A1::_id_10371( "apc_russian", 1 );
    var_0._id_7C71 = 15;
    var_0._id_CFB6["driver"] = 0;
    var_0._id_CFB6["front_left"] = 1;
    var_0._id_CFB6["front_right"] = 2;
    var_0._id_CFB6["back_right"] = 4;
    var_0._id_CFB6["back_left"] = 3;
    var_0._id_CFB6["back"] = 5;
    var_0._id_16F2["driverTurret"] = 0;
    var_0._id_C923["chassis"] = 0;
    var_0._id_C923["turret"] = 1;
    var_0._id_C924["driver"]["apc_rus_mp"] = "chassis";
    var_0._id_C924["driver"]["tur_apc_rus_mp"] = "turret";
    var_0._id_C924["front_left"]["apc_rus_mp"] = "chassis";
    var_0._id_C924["front_left"]["tur_apc_rus_mp"] = "turret";
    var_0._id_C924["front_right"]["apc_rus_mp"] = "chassis";
    var_0._id_C924["front_right"]["tur_apc_rus_mp"] = "turret";
    var_0._id_C924["back_right"]["apc_rus_mp"] = "chassis";
    var_0._id_C924["back_right"]["tur_apc_rus_mp"] = "turret";
    var_0._id_C924["back_left"]["apc_rus_mp"] = "chassis";
    var_0._id_C924["back_left"]["tur_apc_rus_mp"] = "turret";
    var_0._id_C924["back"]["apc_rus_mp"] = "chassis";
    var_0._id_C924["back"]["tur_apc_rus_mp"] = "turret";
}

_id_1961()
{
    _id_09B6::_id_10067( "apc_russian", 2000 );
    var_0 = _id_09B6::_id_1003F( "apc_russian" );
    var_0._id_37D9 = "super_heavy";
    _id_09B6::_id_1002A( "apc_russian" );
    _id_09B6::_id_10071( "apc_russian", 18 );
    _id_09B6::_id_1006F( "apc_russian", ::_id_1975 );
    _id_09B6::_id_1006E( "apc_russian", ::_id_1974 );
    _id_09B6::_id_1006C( "apc_russian", ::_id_1956 );
    _id_09B6::_id_10074( "tur_apc_rus_mp", 2 );
    _id_09B6::_id_10074( "apc_rus_mp", 5 );
}

_id_1962()
{
    level._id_0BA3["apc_rus_explode"] = _func_0139( "vfx/iw8_mp/vehicle/vfx_rusapc_mp_death_exp.vfx" );
    level._id_0BA3["apc_rus_explode_alt"] = _func_0139( "vfx/iw8_mp/vehicle/vfx_rusapc_mp_death_west_exp.vfx" );
}

_id_1953( var_0, var_1 )
{
    if ( !isdefined( var_0._id_0054 ) )
        var_0._id_0054 = ( 0, 0, 0 );

    if ( istrue( var_0._id_FE20 ) )
        var_0._id_02AF = "veh8_mil_lnd_vindia_a1_west_physics_mp";
    else
        var_0._id_02AF = "veh8_mil_lnd_vindia_a1_physics_mp";

    var_0._id_045A = "apc_russian";
    var_0.type = "vindia_physics_mp";
    var_2 = _id_09BC::_id_0D58( var_0, var_1 );

    if ( !isdefined( var_2 ) )
        return undefined;

    var_3 = _id_1954( var_2, var_0 );
    _id_09B4::_id_1023E( var_2, var_3, _func_034C( "tur_apc_rus_mp" ), 1 );
    _id_09B4::_id_10024( var_2, "apc_russian", var_0 );
    var_2._id_A90B = _func_034C( "apc_rus_mp" );
    var_4 = _id_09B6::_id_1003C( var_2, 1 );
    var_4._id_4840 = "none";
    var_4._id_481E = "kill_apc_rus";
    var_4._id_481F = 1;
    _id_09B4::vehicle_create( var_2, var_0 );
    thread _id_09B4::_id_102E0( var_2, undefined, _id_09B4::_id_100A8 );
    var_2 thread _id_1969();

    if ( _id_099D::_id_8A10( "apc_russian", "create" ) )
        [[ _id_099D::_id_6D05( "apc_russian", "create" ) ]]( var_2 );

    return var_2;
}

_id_1954( var_0, var_1 )
{
    var_2 = _func_0210( "misc_turret", var_0 gettagorigin( "tag_turret" ), "tur_apc_rus_mp", 0 );
    var_2._id_0054 = var_0 gettagangles( "tag_turret" );
    var_2 _meth_820B( var_0, "tag_turret", ( 0, 0, 0 ), ( 0, 0, 0 ) );

    if ( istrue( var_1._id_FE20 ) )
        var_2 setmode( "veh8_mil_lnd_vindia_a1_turret_west_mp" );
    else
        var_2 setmode( "veh8_mil_lnd_vindia_a1_turret_mp" );

    var_2 _meth_834F( "sentry_offline" );
    var_2 _meth_8376( undefined );
    var_2 _meth_8225();
    var_2 _meth_8309( 0 );
    var_2 _meth_839C( 1 );
    var_2._id_FFF1 = var_0;
    return var_2;
}

_id_195E( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
    {
        if ( _id_099D::_id_8A10( "killstreak", "processScrapAssist" ) )
            self thread [[ _id_099D::_id_6D05( "killstreak", "processScrapAssist" ) ]]( var_0._id_006E );
    }
    else
    {
        var_0 = _func_020F();
        var_0._id_7E78 = self;
        var_0._id_A90B = "apc_rus_mp";
        var_0._id_9CBF = "MOD_EXPLOSIVE";
    }

    if ( level._id_60D1 == "base" && isdefined( var_0._id_006E ) && _func_0117( var_0._id_006E ) && _id_099D::_id_8A10( "game", "addCashForScoreEvent" ) )
        var_0._id_006E thread [[ _id_099D::_id_6D05( "game", "addCashForScoreEvent" ) ]]( "destroyed_apc", undefined, undefined );

    _id_09B6::_id_1005E( var_0 );
    _id_09BA::_id_101C3( self, var_0 );
    _id_09B6::_id_1002E( undefined, undefined, 1 );
    thread _id_1957();

    if ( !istrue( level._id_EBC0 ) )
    {
        var_2 = self gettagorigin( "tag_origin" );
        var_3 = _id_077B::_id_F07F( isdefined( var_0._id_006E ), var_0._id_006E, self );
        self _meth_8287( var_2, 256, 140, 70, var_3, "MOD_EXPLOSIVE", "apc_rus_mp" );
        var_4 = _id_077B::_id_F07F( istrue( self._id_E290._id_FE20 ), "apc_rus_explode_alt", "apc_rus_explode" );
        _func_0196( _id_077B::_id_6A40( var_4 ), var_2, anglestoforward( self._id_0054 ), anglestoup( self._id_0054 ) );
        _func_019D( var_2, "veh_bradley_expl_destr" );
        earthquake( 0.4, 800, var_2, 0.7 );
        playfxontag( "grenade_rumble", var_2 );
        _func_0190( var_2, 500, 200, 1 );
    }
}

_id_1957()
{
    _id_09B4::_id_1008D( self );

    if ( _id_099D::_id_8A10( "apc_russian", "delete" ) )
        [[ _id_099D::_id_6D05( "apc_russian", "delete" ) ]]( self );

    waitframe();
    _id_09B4::_id_1008E( self );
}

_id_1975( var_0 )
{
    if ( _id_09B6::_id_10052( self, var_0 ) )
        return 0;

    var_1 = self._id_02EA - var_0._id_0317;
    var_2 = anglestoup( self._id_0054 );
    var_3 = _func_0257( var_1, var_2 );
    var_4 = var_0._id_0317 + var_2 * var_3;
    var_5 = _func_025A( var_4 - self._id_02EA );
    var_6 = anglestoforward( self._id_0054 );
    var_7 = anglestoright( self._id_0054 );
    var_8 = getdvarfloat( "scr_vehicleCriticalRearDot", -0.892 );

    if ( _func_0257( var_5, var_6 ) < var_8 )
        var_0._id_89D4 = _id_1955( var_0 );

    return 1;
}

_id_1974( var_0 )
{
    if ( istrue( var_0._id_89D4 ) )
        var_0._id_0134 = int( var_0._id_0134 * 1.6 );

    if ( _id_099D::_id_8A10( "killstreak", "updateScrapAssistData" ) )
        self thread [[ _id_099D::_id_6D05( "killstreak", "updateScrapAssistData" ) ]]( var_0._id_006E, var_0._id_0134 );

    return 1;
}

_id_1956( var_0 )
{
    thread _id_195E( var_0 );
    return 1;
}

_id_1955( var_0 )
{
    if ( isdefined( var_0._id_7E78 ) && isdefined( var_0._id_7E78._id_10D06 ) && var_0._id_7E78._id_10D06 == "gl" )
        return isdefined( var_0._id_9CBF ) && var_0._id_9CBF == "MOD_GRENADE";

    if ( isdefined( var_0._id_A90B ) && isdefined( var_0._id_A90B._id_0084 ) )
    {
        switch ( var_0._id_A90B._id_0084 )
        {
            case "lighttank_tur_mp":
            case "lighttank_tur_ks_mp":
                return isdefined( var_0._id_9CBF ) && ( var_0._id_9CBF == "MOD_PROJECTILE" || var_0._id_9CBF == "MOD_RIFLE_BULLET" );
            case "iw8_la_rpapa7_mp":
            case "tur_apc_rus_mp":
            case "iw8_la_gromeoks_mp":
            case "iw8_la_gromeo_mp":
            case "pac_sentry_turret_mp":
                return isdefined( var_0._id_9CBF ) && var_0._id_9CBF == "MOD_PROJECTILE";
            case "iw8_la_kgolf_mp":
                return isdefined( var_0._id_9CBF ) && var_0._id_9CBF == "MOD_GRENADE";
        }
    }

    return 0;
}

_id_1959( var_0, var_1, var_2, var_3, var_4 )
{
    if ( istrue( var_4._id_EAC8 ) )
        _id_195A( var_0, var_1, var_2, var_3, var_4 );

    if ( istrue( var_0._id_89BF ) )
    {
        if ( _id_099D::_id_8A10( "game", "objectivePlayerMaskAddShowPlayer" ) )
        {
            foreach ( var_6 in level._id_B758 )
            {
                if ( istrue( var_0._id_C7A3 ) || var_6._id_045B == var_0._id_045B )
                    [[ _id_099D::_id_6D05( "game", "objectivePlayerMaskAddShowPlayer" ) ]]( var_0._id_9B36._id_A8F5, var_6 );
            }
        }

        if ( _id_099D::_id_8A10( "game", "objectivePlayerMaskHideFrom" ) )
        {
            foreach ( var_9 in var_0._id_A911 )
                [[ _id_099D::_id_6D05( "game", "objectivePlayerMaskHideFrom" ) ]]( var_0._id_9B36._id_A8F5, var_9 );

            [[ _id_099D::_id_6D05( "game", "objectivePlayerMaskHideFrom" ) ]]( var_0._id_9B36._id_A8F5, var_3 );
        }
    }
}

_id_195A( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_1 == "driver" )
    {
        var_0 setorigin( var_3 );
        var_0 _meth_8312( var_3 );
        var_3 _meth_8694();
        var_3 _meth_8093( var_0 );
        thread _id_09BA::_id_1017A( var_3, 0.1 );
        var_5 = _id_09B4::_id_100CA( var_0, "tur_apc_rus_mp" );

        if ( isdefined( var_5 ) )
        {
            var_5._id_02F2 = var_3;
            var_5 setorigin( var_3 );
            var_5 _meth_8312( var_3 );
            var_5 _meth_8376( var_3 );
            var_3 _meth_828E( var_5 );
        }
    }

    var_3 thread _id_09BA::_id_1015C( var_0, var_1, var_2 );
    _id_09A1::_id_10391( var_0, var_2, var_1, var_3 );
    _id_1979( var_0, var_2, var_1, var_3 );

    if ( var_1 == "driver" )
        var_0 thread _id_196A( var_3 );
}

_id_195C( var_0, var_1, var_2, var_3, var_4 )
{
    if ( istrue( var_4._id_EAC8 ) )
        _id_195D( var_0, var_1, var_2, var_3, var_4 );
}

_id_195D( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_1 == "driver" )
    {
        var_5 = _id_09B4::_id_100CA( var_0, "tur_apc_rus_mp" );

        if ( isdefined( var_5 ) )
            var_5._id_02F2 = undefined;

        var_0 setorigin( undefined );
        var_0 _meth_8312( undefined );

        if ( !istrue( var_4._id_B682 ) )
        {
            if ( isdefined( var_5 ) )
            {
                var_5 _meth_8398( var_3._id_02EA );
                var_3 _meth_828F( var_5 );
            }

            var_3 _meth_8094();
        }

        if ( isdefined( var_5 ) )
        {
            var_5 setorigin( undefined );
            var_5 _meth_8312( undefined );
            var_5 _meth_8376( undefined );
        }
    }

    if ( !istrue( var_4._id_B682 ) )
    {
        var_3 _id_09BA::_id_10200();
        var_6 = _id_09BA::_id_101D0( var_3, var_2, var_4 );

        if ( !var_6 )
            var_3 _meth_83FD();
        else if ( istrue( var_0._id_89BF ) && _id_099D::_id_8A10( "game", "objectivePlayerMaskAddShowPlayer" ) )
            [[ _id_099D::_id_6D05( "game", "objectivePlayerMaskAddShowPlayer" ) ]]( var_0._id_9B36._id_A8F5, var_3 );
    }

    _id_09A1::_id_10392( var_0, var_1, var_2, var_3 );
}

_id_1967()
{
    var_0 = _id_09BB::_id_10274( "apc_russian", 1 );
    var_0._id_9C64 = 30;
    var_0._id_BD19 = 50;
    var_0._id_6D3F = ::_id_195F;
    var_0._id_E271 = _id_099D::_id_6D05( "apc_russian", "spawnCallback" );
    var_0._id_38FF = 150;
    var_0._id_38FB = 135;
    var_0._id_38FD = 150;
}

_id_195F()
{
    var_0 = _id_077B::_id_6D7C( "apcrussian_spawn", "targetname" );

    if ( var_0.size > 0 )
    {
        var_0 = _id_09BB::_id_10288( var_0, 1 );

        if ( var_0.size > 1 )
            var_0 = _id_077B::_id_1B94( var_0 );
    }

    return var_0;
}

_id_1976( var_0 )
{
    _id_09BA::_id_10209( "driver" );
}

_id_1969()
{
    self endon( "death" );
    var_0 = _id_09B4::_id_100CA( self, "tur_apc_rus_mp" );
    var_0 endon( "death" );
    var_0._id_DA65 = 14;
    _id_1978();

    for (;;)
    {
        var_1 = var_0 _id_077B::waittill_any_return( "turret_fire", "turret_reload" );

        if ( var_1 == "turret_reload" )
        {
            var_0._id_DA65 = 0;
            _id_1978();
            _id_1958();
            continue;
        }

        _id_1948( -1 );
        var_2 = _id_09BA::_id_101AA( self, "driver" );

        if ( var_0._id_DA65 <= 0 )
            _id_1958();
    }
}

_id_1958()
{
    var_0 = _id_09B4::_id_100CA( self, "tur_apc_rus_mp" );
    var_0 _meth_840F();
    var_1 = _id_09BA::_id_101AA( self, "driver" );

    if ( isdefined( var_1 ) )
        var_1 _meth_8275( "weap_bradley_reload_plr" );

    foreach ( var_3 in level._id_EF86 )
        self playsoundtoplayer( "weap_bradley_reload_npc", var_3, var_1 );

    wait 2.7;
    _id_1948( 14 );
    wait 0.15;
    var_0 _meth_8410();
}

_id_196A( var_0 )
{
    self endon( "death" );
    var_1 = _id_09B4::_id_100CA( self, "tur_apc_rus_mp" );

    if ( isdefined( var_0 ) )
    {
        var_0 endon( "vehicle_change_seat" );
        var_0 endon( "vehicle_seat_exit" );
        var_0 endon( "death_or_disconnect" );

        while ( var_0 cancelreloading() )
            waitframe();

        var_2 = getdvarint( "bg_useholdtimeshort", 250 ) / 1000;

        for (;;)
        {
            var_3 = 0.0;
            var_4 = var_0 _meth_8748();

            while ( var_0 cancelreloading() )
            {
                if ( !var_0 _meth_8427() && var_1._id_DA65 < 14 )
                {
                    var_1 notify( "turret_reload" );
                    break;
                }
                else
                {
                    if ( var_1._id_DA65 < 14 && var_4 > 0 && var_3 >= var_2 )
                        var_1 notify( "turret_reload" );

                    var_3 = var_3 + level._id_5F1B;
                    waitframe();
                }
            }

            if ( var_0 _meth_8427() && var_1._id_DA65 < 14 && ( var_4 == 0 && var_3 > 0.0 && var_3 < 0.2 || var_4 > 0 && var_3 >= var_2 ) )
                var_1 notify( "turret_reload" );

            waitframe();
        }
    }
}

_id_1948( var_0 )
{
    var_1 = _id_09B4::_id_100CA( self, "tur_apc_rus_mp" );
    var_1._id_DA65 = var_1._id_DA65 + var_0;
    var_1._id_DA65 = int( clamp( var_1._id_DA65, 0, 14 ) );
    _id_1978();
}

_id_1979( var_0, var_1, var_2, var_3 )
{
    if ( var_2 == "driver" )
        var_0 _id_1978();
}

_id_1978()
{
    var_0 = _id_09BA::_id_101AA( self, "driver" );

    if ( isdefined( var_0 ) )
    {
        var_1 = _id_09B4::_id_100CA( self, "tur_apc_rus_mp" );
        _id_09A1::_id_10380( "apc_russian", "driverTurret", var_1._id_DA65, var_0 );
    }
}
