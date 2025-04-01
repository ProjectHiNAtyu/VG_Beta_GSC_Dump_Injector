// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    if ( getdvar( "#x32ea5e908954bfea7" ) == "mp_background" )
        return;

    _id_07B3::_id_021D();
    _id_07B3::_id_D849();
    _id_5BE8();
    var_0[0] = _id_0A69::_id_6A43();
    _id_07AD::_id_0271( var_0 );

    if ( isusingmatchrulesdata() )
    {
        level._id_81CB = ::_id_81CB;
        [[ level._id_81CB ]]();
        level thread _id_0A69::_id_C2DD();
    }
    else
    {
        _id_0A69::registersharedfunc( _id_0A69::_id_6A43(), 300 );
        _id_0A69::_id_C29F( _id_0A69::_id_6A43(), 3 );
        _id_0A69::_id_C29B( _id_0A69::_id_6A43(), 2 );
        _id_0A69::_id_C2C2( _id_0A69::_id_6A43(), 1 );
        _id_0A69::_id_C270( _id_0A69::_id_6A43(), 0 );
        _id_0A69::_id_C24F( _id_0A69::_id_6A43(), 0 );
        _id_0A69::_id_C29C( _id_0A69::_id_6A43(), 1, 0, 1 );
    }

    _id_FC7A();

    if ( level._id_10E5F )
        level._id_10E49 = "teamScores";
    else
        level._id_10E49 = "roundsWon";

    level._id_EF62 = 1;
    level._id_A8C1 = 1;
    level._id_AD60 = 1;
    level._id_AB9A = ::_id_AB9A;
    level._id_AB46 = ::_id_AB46;
    level._id_6D2C = ::_id_6D2C;
    level._id_AB5D = ::_id_AB5D;
    level._id_9FD5 = ::_id_AB91;
    level._id_E32A = "mp_ctf_spawn";
    game["dialog"]["gametype"] = "gametype_blitz";

    if ( getdvarint( "#x33b8132c2bbd3f240" ) )
        game["dialog"]["gametype"] = "hc_" + game["dialog"]["gametype"];
    else if ( getdvarint( "#x3863d66ab814c070" ) )
        game["dialog"]["gametype"] = "thirdp_" + game["dialog"]["gametype"];

    game["dialog"]["offense_obj"] = "boost_blitz";
    game["dialog"]["defense_obj"] = "boost_blitz";
    game["dialog"]["enemyblitzflag_capt"] = "enemyblitzflag_capt";
    game["dialog"]["enemyblitzflag_drop"] = "enemyblitzflag_drop";
    game["dialog"]["enemyblitzflag_return"] = "enemyblitzflag_return";
    game["dialog"]["enemyblitzflag_taken"] = "enemyblitzflag_taken";
    game["dialog"]["ourblitzflag_capt"] = "ourblitzflag_capt";
    game["dialog"]["ourblitzflag_drop"] = "ourblitzflag_drop";
    game["dialog"]["ourblitzflag_getback"] = "ourblitzflag_getback";
    game["dialog"]["ourblitzflag_return"] = "ourblitzflag_return";
    game["dialog"]["ourblitzflag_taken"] = "ourblitzflag_taken";
    _func_01E4( "ui_ctf_flag_axis", -2 );
    _func_01E4( "ui_ctf_flag_allies", -2 );
}

_id_81CB()
{
    _id_0A69::_id_D4D3();
    _func_01D2( "scr_blitz_winRule", getmatchrulesdata( "blitzData", "winRule" ) );
    _func_01D2( "scr_blitz_captureCondition", getmatchrulesdata( "blitzData", "captureCondition" ) );
    _func_01D2( "scr_blitz_returnTime", getmatchrulesdata( "blitzData", "returnTime" ) );
    _func_01D2( "scr_blitz_showEnemyCarrier", getmatchrulesdata( "carryData", "showEnemyCarrier" ) );
    _func_01D2( "scr_blitz_idleResetTime", getmatchrulesdata( "carryData", "idleResetTime" ) );
    _func_01D2( "scr_blitz_pickupTime", getmatchrulesdata( "carryData", "pickupTime" ) );
    _func_01D2( "scr_blitz_halftime", 0 );
    _id_0A69::_id_C24F( "blitz", 0 );
    _func_01D2( "scr_blitz_promode", 0 );
}

_id_AB91()
{

}

_id_AB9A()
{
    var_0 = _id_0A69::_id_82B7();
    var_1 = game["overtimeRoundsPlayed"] == 0;
    var_2 = _id_0A69::_id_8A89();

    if ( var_0 )
    {
        if ( var_1 )
        {
            _func_01E4( "ui_round_hint_override_attackers", 1 );
            _func_01E4( "ui_round_hint_override_defenders", 1 );
        }
        else if ( var_2 )
        {
            _func_01E4( "ui_round_hint_override_attackers", _id_077B::_id_F07F( game["timeToBeatTeam"] == game["attackers"], 2, 3 ) );
            _func_01E4( "ui_round_hint_override_defenders", _id_077B::_id_F07F( game["timeToBeatTeam"] == game["defenders"], 2, 3 ) );
        }
        else
        {
            _func_01E4( "ui_round_hint_override_attackers", 4 );
            _func_01E4( "ui_round_hint_override_defenders", 4 );
        }
    }

    if ( !isdefined( game["switchedsides"] ) )
        game["switchedsides"] = 0;

    if ( _id_0A69::_id_82B7() )
        _func_01D0( "ui_override_halftime", 0 );
    else if ( game["switchedsides"] )
        _func_01D0( "ui_override_halftime", 2 );
    else
        _func_01D0( "ui_override_halftime", 1 );

    if ( !isdefined( game["original_defenders"] ) )
        game["original_defenders"] = game["defenders"];

    _func_01CE( "auto_change" );

    if ( level._id_E427 )
    {
        _id_0A69::_id_D60E( game["attackers"], &"OBJECTIVES_ONE_FLAG_ATTACKER" );
        _id_0A69::_id_D60E( game["defenders"], &"OBJECTIVES_ONE_FLAG_DEFENDER" );
    }
    else
    {
        _id_0A69::_id_D60E( game["attackers"], &"OBJECTIVES_ONE_FLAG_ATTACKER_SCORE" );
        _id_0A69::_id_D60E( game["defenders"], &"OBJECTIVES_ONE_FLAG_DEFENDER_SCORE" );
    }

    _id_0A69::_id_D610( game["attackers"], &"OBJECTIVES/BLITZ" );
    _id_0A69::_id_D610( game["defenders"], &"OBJECTIVES/BLITZ" );
    _id_0A69::_id_D609( game["attackers"], &"OBJECTIVES_ONE_FLAG_ATTACKER_HINT" );
    _id_0A69::_id_D609( game["defenders"], &"OBJECTIVES_ONE_FLAG_DEFENDER_HINT" );
    _id_5BFE();
    _id_3FAC();
    _id_827A();
}

_id_FC7A()
{
    scripts\mp\gametypes\common::_id_FC36();
    level._id_10E5F = _id_0A66::_id_507C( "winRule", 0, 0, 1 );
    level._id_DC9D = _id_0A66::_id_507C( "showEnemyCarrier", 5, 0, 6 );
    level._id_7CB5 = _id_0A66::_id_507A( "idleResetTime", 30, 0, 60 );
    level._id_3202 = _id_0A66::_id_507C( "captureCondition", 0, 0, 1 );
    level._id_B0A0 = _id_0A66::_id_507A( "pickupTime", 0, 0, 10 );
    level._id_C792 = _id_0A66::_id_507A( "returnTime", 0, -1, 25 );
}

_id_3FAC()
{
    level._id_5C1F["allies"] = "ctf_game_flag_west";
    level._id_5C18["allies"] = "ctf_game_flag_base";
    level._id_32C0["allies"] = "prop_ctf_game_flag_west";
    level._id_5C1F["axis"] = "ctf_game_flag_east";
    level._id_5C18["axis"] = "ctf_game_flag_base";
    level._id_32C0["axis"] = "prop_ctf_game_flag_east";
    level._id_39AE = [];
    level._id_39AE["allies"] = undefined;
    level._id_39AE["axis"] = undefined;
    _id_D8BA();
    level._id_7C3A = "waypoint_blitz_escort";
    level._id_7C4F = "waypoint_blitz_kill";
    level._id_7C5D = "waypoint_blitz_pickup";
    level._id_7C47 = "waypoint_blitz_goal";
    level._id_7C67 = "waypoint_blitz_reset";
    level._id_7C66 = "waypoint_blitz_resetting";
    level._id_7C57 = "waypoint_blitz_pickup_losing";
    level._id_7C33 = "waypoint_blitz_defend";
    level._id_7C5C = "waypoint_blitz_pickup_defend";
    level._id_EF6F[game["defenders"]] = _id_403C( game["defenders"], "axis" );
    level._id_EF6F[game["attackers"]] = _id_403C( game["attackers"], "allies" );
    level._id_3214[game["defenders"]] = _id_3F84( game["defenders"], "axis" );
    level._id_3214[game["attackers"]] = _id_3F84( game["attackers"], "allies" );
}

_id_5BFE()
{

}

_id_827A()
{
    _id_07EE::_id_D454( "AwayFromEnemies", "Crit_Default" );
    level._id_E324 = ( 0, 0, 0 );
    level._id_E321 = ( 0, 0, 0 );
    _id_07EE::_id_1111( "mp_ctf_spawn_allies_start" );
    _id_07EE::_id_1111( "mp_ctf_spawn_axis_start" );
    _id_07EE::_id_110D( "allies", "mp_ctf_spawn" );
    _id_07EE::_id_110D( "axis", "mp_ctf_spawn" );
    level._id_9A95 = _id_07EE::_id_5AC1( level._id_E324, level._id_E321 );
    setgameendtime( level._id_9A95 );
    _id_1CFE();
    level._id_40F9["allies"] = "allies";
    level._id_40F9["axis"] = "axis";
    _id_07EE::_id_C2AB( "allies", level._id_EFA8["allies"] );
    _id_07EE::_id_C2AB( "axis", level._id_EFA8["axis"] );
    _id_07EE::_id_C2AB( "neutral", level._id_EFA8["neutral"] );
    _id_07EE::_id_0EBC();
}

_id_1CFE()
{
    var_0 = _id_07EE::_id_6D30( level._id_E32A );
    var_1 = _id_07EE::_id_895A();
    level._id_EFA8["axis"] = [];
    level._id_EFA8["allies"] = [];
    level._id_EFA8["neutral"] = [];

    if ( level._id_EF6F.size == 2 )
    {
        var_2 = level._id_EF6F["allies"];
        var_3 = level._id_EF6F["axis"];
        var_4 = ( var_2._id_411F[0], var_2._id_411F[1], 0 );
        var_5 = ( var_3._id_411F[0], var_3._id_411F[1], 0 );
        var_6 = var_5 - var_4;
        var_7 = _func_0131( var_6 );

        foreach ( var_9 in var_0 )
        {
            var_10 = ( var_9._id_02EA[0], var_9._id_02EA[1], 0 );
            var_11 = var_10 - var_4;
            var_12 = _func_0257( var_11, var_6 );
            var_13 = var_12 / ( var_7 * var_7 );

            if ( var_13 < 0.33 )
            {
                var_9._id_EF61 = var_2._id_AD9B;
                level._id_EFA8[var_9._id_EF61][level._id_EFA8[var_9._id_EF61].size] = var_9;
                continue;
            }

            if ( var_13 > 0.67 )
            {
                var_9._id_EF61 = var_3._id_AD9B;
                level._id_EFA8[var_9._id_EF61][level._id_EFA8[var_9._id_EF61].size] = var_9;
                continue;
            }

            var_14 = undefined;
            var_15 = undefined;

            if ( var_1 )
                var_14 = _func_00C4( var_9._id_02EA, var_2._id_411F, 999999 );

            if ( isdefined( var_14 ) && var_14 != -1 )
                var_15 = _func_00C4( var_9._id_02EA, var_3._id_411F, 999999 );

            if ( !isdefined( var_15 ) || var_15 == -1 )
            {
                var_14 = distance2d( var_2._id_411F, var_9._id_02EA );
                var_15 = distance2d( var_3._id_411F, var_9._id_02EA );
            }

            var_16 = _func_0147( var_14, var_15 );
            var_17 = _func_0148( var_14, var_15 );
            var_18 = var_17 / var_16;

            if ( var_18 > 0.5 )
                level._id_EFA8["neutral"][level._id_EFA8["neutral"].size] = var_9;
        }
    }
    else
    {
        foreach ( var_9 in var_0 )
        {
            var_9._id_EF61 = _id_6B53( var_9 );

            if ( var_9._id_EF61 == "axis" )
            {
                level._id_EFA8["axis"][level._id_EFA8["axis"].size] = var_9;
                continue;
            }

            level._id_EFA8["allies"][level._id_EFA8["allies"].size] = var_9;
        }
    }
}

_id_6B53( var_0 )
{
    var_1 = _id_07EE::_id_895A();
    var_2 = undefined;
    var_3 = undefined;

    foreach ( var_5 in level._id_EF6F )
    {
        var_6 = undefined;

        if ( var_1 )
            var_6 = _func_00C4( var_0._id_02EA, var_5._id_411F, 999999 );

        if ( !isdefined( var_6 ) || var_6 == -1 )
            var_6 = distancesquared( var_5._id_411F, var_0._id_02EA );

        if ( !isdefined( var_2 ) || var_6 < var_3 )
        {
            var_2 = var_5;
            var_3 = var_6;
        }
    }

    return var_2._id_AD9B;
}

_id_6D2C()
{
    var_0 = self._id_0309["team"];
    var_1 = _id_0A69::_id_6BC3( var_0 )[0];

    if ( _id_07EE::_id_DC03() )
    {
        if ( level._id_9AA7 == "mp_runner" )
        {
            var_0 = _id_0A69::_id_6BC3( var_0 )[0];
            var_1 = _id_0A69::_id_6BC3( var_1 )[0];
        }

        if ( game["switchedsides"] )
        {
            var_2 = _id_07EE::_id_6D30( "mp_ctf_spawn_" + var_1 + "_start" );
            var_3 = _id_07EE::_id_6D2F( var_2 );
        }
        else
        {
            var_2 = _id_07EE::_id_6D30( "mp_ctf_spawn_" + var_0 + "_start" );
            var_3 = _id_07EE::_id_6D2F( var_2 );
        }
    }
    else
        var_3 = _id_07EE::_id_6D2C( self, var_0, level._id_40F9[var_0], "neutral" );

    return var_3;
}

_id_5BE8()
{
    level._id_454D = [];
    level._id_01AF = getentarray( "flag_primary", "targetname" );

    if ( !isdefined( game["attackers"] ) )
        game["attackers"] = "allies";

    if ( !isdefined( game["defenders"] ) )
        game["defenders"] = "axis";

    if ( istrue( game["switchedsides"] ) )
    {
        var_0 = game["attackers"];
        var_1 = game["defenders"];
        game["attackers"] = var_1;
        game["defenders"] = var_0;
    }

    foreach ( var_3 in level._id_01AF )
    {
        switch ( var_3._id_CD8C )
        {
            case "_a":
                if ( istrue( game["switchedsides"] ) )
                    level._id_4549[game["defenders"]] = var_3._id_02EA;
                else
                    level._id_4549[game["attackers"]] = var_3._id_02EA;

                break;
            case "_c":
                if ( istrue( game["switchedsides"] ) )
                    level._id_4549[game["attackers"]] = var_3._id_02EA;
                else
                    level._id_4549[game["defenders"]] = var_3._id_02EA;

                break;
        }
    }

    var_5 = getent( "ctf_zone_" + game["defenders"], "targetname" );

    if ( isdefined( var_5 ) )
    {
        if ( istrue( game["switchedsides"] ) )
            level._id_4549[game["attackers"]] = var_5._id_02EA;
        else
            level._id_4549[game["defenders"]] = var_5._id_02EA;
    }

    var_5 = getent( "ctf_zone_" + game["attackers"], "targetname" );

    if ( isdefined( var_5 ) )
    {
        if ( istrue( game["switchedsides"] ) )
            level._id_4549[game["defenders"]] = var_5._id_02EA;
        else
            level._id_4549[game["attackers"]] = var_5._id_02EA;
    }
}

_id_5BE7( var_0 )
{
    var_1 = _func_020F();

    switch ( level._id_036A )
    {
        default:
            break;
    }

    if ( !isdefined( var_1._id_02EA ) )
        var_1._id_02EA = level._id_4549[var_0];

    var_1 _id_5BED();
    var_1._id_02EA = var_1._id_718A;
    var_1._id_0333 = 30;
    var_1._id_045B = var_0;
    var_1._id_2108 = 0;
    var_1._id_7915 = 0;
    return var_1;
}

_id_5BED( var_0 )
{
    var_1 = self._id_02EA + ( 0, 0, 32 );
    var_2 = self._id_02EA + ( 0, 0, -1000 );
    var_3 = _id_077A::_id_3EC3( 1, 1, 1, 1, 0, 1, 1 );
    var_4 = [];
    var_5 = _id_077A::_id_C042( var_1, var_2, var_4, var_3 );
    self._id_718A = var_5["position"];
    return var_5["fraction"] != 0 && var_5["fraction"] != 1;
}

_id_DCA7( var_0, var_1, var_2 )
{
    if ( isdefined( var_1._id_0BC2[var_0] ) )
        var_1._id_0BC2[var_0] _meth_809A();

    var_3 = undefined;
    var_4 = var_1._id_045B;
    var_5 = var_1 _meth_81D2();

    if ( var_5 )
        var_4 = var_1 _meth_8154();
    else if ( var_4 == "spectator" )
        var_4 = "allies";

    if ( var_4 == var_0 )
    {
        var_6 = _func_0208( level._id_5C24["friendly"], var_2, var_1, ( 0, 0, 1 ) );
        var_6 _meth_8321();
    }
    else
    {
        var_6 = _func_0208( level._id_5C24["enemy"], var_2, var_1, ( 0, 0, 1 ) );
        var_6 _meth_8321();
    }

    var_1._id_0BC2[var_0] = var_6;
    _func_024B( var_6 );
}

_id_DC86( var_0, var_1 )
{
    if ( isdefined( var_1._id_0BC1[var_0] ) )
        var_1._id_0BC1[var_0] _meth_809A();

    var_2 = undefined;
    var_3 = var_1._id_045B;
    var_4 = var_1 _meth_81D2();

    if ( var_4 )
        var_3 = var_1 _meth_8154();
    else if ( var_3 == "spectator" )
        var_3 = "allies";

    if ( var_3 == var_0 )
    {
        var_5 = _func_0208( level._id_5C19["friendly"], self._id_02EA, var_1, self._id_228E );
        var_5 _meth_8321();
    }
    else
    {
        var_5 = _func_0208( level._id_5C19["enemy"], self._id_02EA, var_1, self._id_228E );
        var_5 _meth_8321();
    }

    var_1._id_0BC1[var_0] = var_5;
    _func_024B( var_5 );
}

_id_D708( var_0 )
{
    if ( var_0 == "axis" )
        self _meth_85C2( 1 );
    else if ( var_0 == "allies" )
        self _meth_85C2( 2 );
    else
        self _meth_85C2( 0 );
}

_id_403C( var_0, var_1 )
{
    var_2 = 0;
    var_3 = _id_5BE7( var_0 );
    var_4 = _func_0205( "trigger_radius", var_3._id_02EA - ( 0, 0, var_3._id_0333 / 2 ), 0, var_3._id_0333, 80 );
    var_4._id_A509 = 1;
    var_4._id_94FD = 1;
    var_4._id_22FB = var_4._id_02EA;
    var_2 = 1;
    var_5[0] = _func_0205( "script_model", var_3._id_02EA );
    var_5[0] _meth_85A2();
    var_5[0] _id_D708( var_1 );

    if ( !isdefined( var_5[0] ) )
    {

    }

    if ( !var_2 )
    {
        var_6 = 15;

        if ( level._id_B0A0 > 0 || level._id_C792 > 0 )
            var_6 = var_6 * 2;

        var_7 = _func_0205( "trigger_radius", var_4._id_02EA, 0, var_6, var_4._id_0201 );
        var_4 = var_7;
    }

    var_5[0] setmode( level._id_5C1F[var_0] );
    var_5[0] _meth_85A2();
    var_5[0] _id_D708( var_1 );
    var_8 = _id_07AD::_id_3F86( var_0, var_4, var_5, ( 0, 0, 72 ) );
    var_8 _id_07AD::_id_1574( "friendly" );
    var_8 _id_07AD::_id_D70F( "friendly", level._id_B0A0 );
    var_8 _id_07AD::_id_D70F( "enemy", level._id_C792 );
    var_8 _id_07AD::_id_D8D5( "friendly" );
    _id_07D0::_id_A89E( var_8._id_A8F5, 0 );
    var_8._id_1D2C = 1;
    var_8._id_15BA = 1;
    var_8._id_AB3A = ::_id_AB3A;
    var_8._id_AB3B = ::_id_AB3A;
    var_8._id_AAA6 = ::_id_AAA6;
    var_8._id_AB75 = ::_id_AB75;
    var_8._id_AA66 = ::_id_AB78;
    var_8._id_AAAF = ::_id_AB76;

    if ( level._id_B0A0 > 0 || level._id_C792 > 0 )
    {
        var_8._id_A6B1 = 1;
        var_8._id_37CF = _func_0147( level._id_B0A0 * 1000, level._id_C792 * 1000 );
        var_8 _id_07AD::_id_B0D4();
    }

    if ( isdefined( level._id_DC9D ) )
    {
        switch ( level._id_DC9D )
        {
            case 0:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 60.0;
                break;
            case 1:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 0.05;
                break;
            case 2:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 1.0;
                break;
            case 3:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 1.5;
                break;
            case 4:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 2.0;
                break;
            case 5:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 3.0;
                break;
            case 6:
                var_8._id_A8F9 = 0;
                var_8._id_A8F8 = 1;
                var_8._id_A8FF = 4.0;
                break;
        }
    }
    else
    {
        var_8._id_A8F9 = 0;
        var_8._id_A8F8 = 1;
        var_8._id_A8FF = 3.0;
    }

    var_8._id_AA28 = var_4._id_0333;
    var_9 = var_4._id_02EA + ( 0, 0, 32 );
    var_10 = var_4._id_02EA + ( 0, 0, -32 );
    var_11 = _id_077A::_id_3EC3( 1, 1, 1, 1, 0, 1, 1 );
    var_12 = [];
    var_13 = _id_077A::_id_C042( var_9, var_10, var_12, var_11 );
    var_8._id_228F = var_8._id_1042E[0]._id_02EA;
    var_14 = anglestoup( var_8._id_1042E[0]._id_0054 );
    var_8._id_228E = anglestoforward( var_14 );
    level._id_EF6E[var_0] = _id_403D( var_0, var_8 );
    return var_8;
}

_id_403D( var_0, var_1 )
{
    var_2 = var_1._id_1042E[0]._id_02EA;
    var_3 = _func_0205( "script_model", var_2 );
    var_3 setmode( level._id_5C18[var_0] );
    var_3._id_AD9B = var_0;
    var_3 _meth_85A2();
    var_3 _id_D708( var_0 );
    var_3._id_228F = var_2;
    var_4 = anglestoup( var_1._id_1042E[0]._id_0054 );
    var_3._id_228E = anglestoforward( var_4 );
    return var_3;
}

_id_3F84( var_0, var_1 )
{
    var_2 = _id_5BE7( var_0 );
    var_3 = getent( "ctf_zone_" + var_1, "targetname" );

    if ( !isdefined( var_3 ) )
    {
        var_3 = _func_0205( "trigger_radius", var_2._id_02EA - ( 0, 0, var_2._id_0333 / 2 ), 0, var_2._id_0333, 80 );
        var_3._id_A509 = 1;
        var_3._id_94FD = 1;
        var_3._id_22FB = var_3._id_02EA;
        var_3._id_0201 = 80;
    }

    var_4 = _func_0205( "trigger_radius", var_3._id_02EA, 0, 15, var_3._id_0201 );
    var_3 = var_4;
    var_5 = [];
    var_6 = _id_07AD::_id_404C( var_0, var_3, var_5, ( 0, 0, 85 ) );
    var_6 _id_07AD::_id_15B7( "enemy" );
    var_6 _id_07AD::_id_D8D5( "any" );
    var_6 _id_07AD::_id_D60F( level._id_7C5C, level._id_7C47 );
    var_6 _id_07AD::_id_D8C7( 0 );
    var_6 _id_07AD::_id_D5B8( level._id_EF6F[_id_0A69::_id_6BC3( var_0 )[0]] );
    var_6._id_ABB8 = ::_id_ABB8;
    var_7 = var_3._id_02EA + ( 0, 0, 32 );
    var_8 = var_3._id_02EA + ( 0, 0, -32 );
    var_9 = _id_077A::_id_3EC3( 1, 1, 1, 1, 0, 1, 1 );
    var_10 = [];
    var_11 = _id_077A::_id_C042( var_7, var_8, var_10, var_9 );
    var_12 = _func_025B( var_11["normal"] );
    var_13 = anglestoforward( var_12 );
    var_14 = anglestoright( var_12 );
    return var_6;
}

_id_AA66( var_0 )
{
    var_1 = var_0._id_0309["team"];

    if ( var_1 == _id_07AD::_id_6BE3() )
        self._id_047A._id_0333 = 1024;
    else
        self._id_047A._id_0333 = self._id_AA28;
}

_id_AAAF( var_0, var_1, var_2 )
{
    self._id_047A._id_0333 = self._id_AA28;
}

_id_AB3A( var_0, var_1, var_2 )
{
    self notify( "picked_up" );
    var_0 notify( "obj_picked_up" );
    var_3 = var_0._id_0309["team"];

    if ( var_3 == "allies" )
        var_4 = "axis";
    else
        var_4 = "allies";

    if ( var_3 != _id_07AD::_id_6BE3() )
    {
        if ( isdefined( level._id_39AE[var_0._id_045B] ) && level._id_39AE[var_0._id_045B] == var_0 )
            var_0 thread _id_0788::_id_6F9C( "mode_ctf_nope" );

        level._id_39AE[var_0._id_045B] = undefined;
        var_0 thread _id_0A76::_id_6FE6( "flag_return" );
        thread _id_C786( var_3 );
        var_0 thread _id_06BB::_id_F737( level._id_9B9C, "obj_return", var_0._id_02EA );
        _id_0A79::_id_B8DE( "mp_obj_returned", var_3 );
        _id_0A79::_id_B8DE( "mp_obj_returned", _id_0A69::_id_6BC3( var_3 )[0] );
        _id_0A64::_id_911F( "ourblitzflag_return", var_4, "status" );
        _id_0A64::_id_911F( "enemyblitzflag_return", var_3, "status" );
        var_0 _id_0A7B::_id_7D93( "returns", 1 );
        var_0 scripts\mp\gamelogic::_id_E76D( "round", "returns", var_0._id_0309["returns"] );

        if ( _func_0117( var_0 ) )
            var_0 _id_0A7B::_id_D544( var_0._id_0309["returns"] );
    }
    else
    {
        if ( isdefined( level._id_40F7 ) && isdefined( level._id_40F7[var_3] ) )
            var_0 thread _id_19A9();
        else
            var_0 _id_1D5F();

        self._id_1D2C = 0;
        level._id_39AE[var_4] = undefined;

        if ( var_0._id_045B == "allies" )
            _func_01E4( "ui_ctf_flag_allies", var_0 getentitynumber() );
        else
            _func_01E4( "ui_ctf_flag_axis", var_0 getentitynumber() );

        var_0 _meth_82F6( "ui_ctf_flag_carrier", 1 );

        if ( isdefined( level._id_DC9D ) )
        {
            if ( level._id_DC9D == 0 )
                _id_07AD::_id_D8D5( "any" );
            else
                _id_07AD::_id_D8D5( "any" );
        }

        _id_07AD::_id_D60F( level._id_7C3A, level._id_7C4F );

        if ( level._id_EF6F[var_4]._id_1D2C )
            level._id_3214[var_4] _id_07AD::_id_D60F( level._id_7C5C, level._id_7C47 );
        else
        {
            level._id_3214[var_4] _id_07AD::_id_D8D5( "any" );
            level._id_3214[var_4] _id_07AD::_id_D60F( level._id_7C33, level._id_7C47 );
        }

        level._id_3214[var_3] _id_07AD::_id_D60F( level._id_7C33, level._id_7C47 );

        if ( level._id_3202 == 0 )
        {

        }

        _id_0A79::_id_B8DE( "mp_obj_taken", var_3 );
        _id_0A64::_id_911F( "ourblitzflag_taken", var_3 );
        thread _id_07BA::_id_EF8A( "callout_flagpickup", var_0 );

        if ( !isdefined( self._id_BC28 ) || self._id_BC28 != var_0 )
            var_0 thread _id_0A76::_id_6FE6( "flag_grab" );

        var_0 thread _id_06BB::_id_F737( level._id_9B9C, "pickup", var_0._id_02EA );
        self._id_BC28 = var_0;

        if ( level._id_39F9 )
            var_0 _meth_80CB( 1 );
    }
}

_id_C786( var_0 )
{
    self._id_1D2C = 1;

    if ( var_0 == "allies" )
        _func_01E4( "ui_ctf_flag_allies", -2 );
    else
        _func_01E4( "ui_ctf_flag_axis", -2 );

    _id_07AD::_id_C78A();
}

_id_AAA6( var_0 )
{
    var_1 = _id_07AD::_id_6BE3();
    var_2 = _id_0A69::_id_6BC3( var_1 )[0];
    _id_07AD::_id_1574( "any" );
    _id_07AD::_id_D8D5( "any" );
    _func_018B( self._id_A8F5, 0 );

    if ( level._id_C792 >= 0 )
        _id_07AD::_id_D60F( level._id_7C5D, level._id_7C67 );
    else
        _id_07AD::_id_D60F( level._id_7C5D, level._id_7C47 );

    if ( var_1 == "allies" )
        _func_01E4( "ui_ctf_flag_allies", -1 );
    else
        _func_01E4( "ui_ctf_flag_axis", -1 );

    if ( isdefined( var_0 ) )
        var_0 _meth_82F6( "ui_ctf_flag_carrier", 0 );

    var_3 = self._id_1042E[0] gettagorigin( "tag_origin" );

    if ( isdefined( var_0 ) )
    {
        if ( !_id_0A74::_id_89D3( var_0 ) )
            var_0._id_32C6._id_BC28 = undefined;

        if ( isdefined( var_0._id_32C0 ) )
            var_0 _id_4869();

        _id_0A79::_id_B8DE( "mp_war_objective_lost", var_2 );

        if ( level._id_39F9 )
            var_0 _meth_80CB( 0 );
    }
    else
        _id_0A79::_id_B8DE( "mp_war_objective_lost", var_2 );

    _id_0A64::_id_911F( "enemyblitzflag_drop", var_2, "status" );
    _id_0A64::_id_911F( "ourblitzflag_drop", var_1, "status" );

    if ( level._id_7CB5 > 0 )
        thread _id_C783();
}

_id_C783()
{
    self endon( "picked_up" );
    var_0 = 0.0;

    while ( var_0 < level._id_7CB5 )
    {
        waitframe();

        if ( self._id_37D2 == "none" )
            var_0 = var_0 + level._id_5F1B;
    }

    var_1 = _id_07AD::_id_6BE3();
    var_2 = _id_0A69::_id_6BC3( var_1 )[0];
    _id_0A79::_id_B8DE( "mp_war_objective_taken", var_1 );
    _id_0A79::_id_B8DE( "mp_war_objective_lost", var_2 );
    _id_07AD::_id_C78A();
}

_id_AB75()
{
    var_0 = _id_07AD::_id_6BE3();
    var_1 = _id_0A69::_id_6BC3( var_0 )[0];
    _id_07AD::_id_1574( "friendly" );
    _id_07AD::_id_D8D5( "none" );
    _func_018B( self._id_A8F5, 0 );

    if ( var_0 == "allies" )
        _func_01E4( "ui_ctf_flag_allies", -2 );
    else
        _func_01E4( "ui_ctf_flag_axis", -2 );

    if ( level._id_EF6F[var_0]._id_1D2C )
        level._id_3214[var_0] _id_07AD::_id_D60F( level._id_7C5C, level._id_7C47 );

    if ( level._id_EF6F[var_1]._id_1D2C )
        level._id_3214[var_0] _id_07AD::_id_D60F( level._id_7C5C, level._id_7C47 );
    else
        level._id_3214[var_0] _id_07AD::_id_D60F( level._id_7C33, level._id_7C47 );

    level._id_3214[var_0] _id_07AD::_id_15B7( "enemy" );
    self._id_BC28 = undefined;
}

_id_AB78( var_0 )
{
    _id_07AD::_id_D60F( level._id_7C57, level._id_7C66 );
}

_id_AB76( var_0, var_1, var_2 )
{
    if ( !var_2 )
        _id_07AD::_id_D60F( level._id_7C5D, level._id_7C67 );
}

_id_ABB8( var_0 )
{
    if ( !level._id_609B )
    {
        var_1 = var_0._id_0309["team"];

        if ( var_1 == "allies" )
            var_2 = "axis";
        else
            var_2 = "allies";

        var_0 _meth_82F6( "ui_ctf_flag_carrier", 0 );
        _id_0A64::_id_911F( "ourblitzflag_capt", var_1, "status" );
        _id_0A64::_id_911F( "enemyblitzflag_capt", var_2, "status" );
        thread _id_07BA::_id_EF8A( "callout_flagcapture", var_0 );
        var_0 thread _id_0788::_id_6F9C( "mode_ctf_cap" );
        var_0 notify( "objective", "captured" );
        var_0 thread _id_06BB::_id_F737( level._id_9B9C, "capture", var_0._id_02EA );

        if ( level._id_39F9 )
            var_0 _meth_80CB( 0 );

        var_0 _id_0A7B::_id_7D93( "captures", 1 );
        var_0 scripts\mp\gamelogic::_id_E76D( "round", "captures", var_0._id_0309["captures"] );

        if ( _func_0117( var_0 ) )
            var_0 _id_0A7B::_id_D543( var_0._id_0309["captures"] );

        _id_0A79::_id_B8DE( "mp_obj_captured", var_1 );
        _id_0A79::_id_B8DE( "mp_enemy_obj_captured", _id_0A69::_id_6BC3( var_1 )[0] );

        if ( isdefined( var_0._id_32C0 ) )
            var_0 _id_4869();

        if ( isdefined( level._id_40F7 ) && isdefined( level._id_40F7[var_1] ) )
            var_0 thread _id_C491();

        level._id_39AE[var_1] = undefined;
        level._id_39AE[var_2] = undefined;

        if ( level._id_EF6F[_id_0A69::_id_6BC3( var_1 )[0]]._id_1D2C )
            level _id_07AE::_id_6FE4( var_1, 2, 0 );
        else
            level _id_07AE::_id_6FE4( var_1, 1, 0 );

        level._id_EF6F[var_1] _id_C786( var_1 );
    }
}

_id_AB46( var_0 )
{
    var_0._id_0BC1 = [];
    var_0._id_0BC2 = [];
    var_0 thread _id_AB65();
}

_id_AB65()
{
    self endon( "disconnect" );

    for (;;)
    {
        self waittill( "spawned" );
        self _meth_82F6( "ui_ctf_flag_carrier", 0 );
        _id_0A7B::_id_D543( 0 );

        if ( isdefined( self._id_0309["captures"] ) )
            _id_0A7B::_id_D543( self._id_0309["captures"] );

        _id_0A7B::_id_D544( 0 );

        if ( isdefined( self._id_0309["returns"] ) )
            _id_0A7B::_id_D544( self._id_0309["returns"] );
    }
}

_id_19A9()
{
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );

    if ( isdefined( self._id_878D ) && self._id_878D == 1 )
    {
        self notify( "force_cancel_placement" );
        waitframe();
    }

    while ( self _meth_81CD() )
        waitframe();

    while ( !self _meth_81D7() )
        waitframe();

    self._id_0309["gamemodeLoadout"] = level._id_40F7[self._id_045B];
    _id_09EF::_id_E343( self._id_02EA, self._id_0054 );
    self._id_60A8 = self._id_37D9;
    self._id_0309["class"] = "gamemode";
    self._id_0309["lastClass"] = "gamemode";
    self._id_37D9 = "gamemode";
    self._id_8F98 = "gamemode";
    self notify( "faux_spawn" );
    self.gameended = 1;
    self._id_59BF = self getstance();
    thread _id_07D9::_id_E334( 1 );
    thread _id_107DF();
}

_id_107DF()
{
    level endon( "game_ende" );
    self endon( "death_or_disconnect" );
    self waittill( "spawned_player" );
    _id_1D5F();
}

_id_C491()
{
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );

    if ( isdefined( self._id_878D ) && self._id_878D == 1 )
    {
        self notify( "force_cancel_placement" );
        waitframe();
    }

    while ( self _meth_81CD() )
        waitframe();

    while ( !self _meth_81D7() )
        waitframe();

    self._id_0309["gamemodeLoadout"] = undefined;
    _id_09EF::_id_E343( self._id_02EA, self._id_0054 );
    self notify( "faux_spawn" );
    self._id_59BF = self getstance();
    thread _id_07D9::_id_E334( 1 );
}

_id_AB5D( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = 0;
    var_11 = var_1._id_02EA;
    var_12 = 0;

    if ( isdefined( var_0 ) )
    {
        var_11 = var_0._id_02EA;
        var_12 = var_0 == var_1;
    }

    if ( isdefined( var_1 ) && _func_0117( var_1 ) && var_1._id_0309["team"] != self._id_0309["team"] )
    {
        if ( isdefined( var_1._id_32C0 ) && var_12 )
        {
            var_1 thread _id_0788::_id_6F9C( "mode_ctf_kill_with_flag" );
            var_10 = 1;
        }

        if ( isdefined( self._id_32C0 ) )
        {
            var_13 = distancesquared( self._id_02EA, level._id_3214[self._id_045B]._id_047A._id_02EA );

            if ( var_13 < 90000 )
                level._id_39AE[var_1._id_045B] = var_1;
            else
                level._id_39AE[var_1._id_045B] = undefined;

            var_1 thread _id_0788::_id_6F9C( "mode_ctf_kill_carrier" );
            var_1 _id_0A7B::_id_7D93( "defends", 1 );
            var_1 scripts\mp\gamelogic::_id_E76D( "round", "defends", var_1._id_0309["defends"] );
            var_10 = 1;
        }

        if ( !var_10 )
        {
            var_14 = 0;
            var_15 = 0;

            foreach ( var_17 in level._id_EF6F )
            {
                var_18 = _id_4B99( var_11, self._id_02EA, var_17._id_411F );

                if ( var_18 )
                {
                    if ( var_17._id_AD9B == self._id_045B )
                    {
                        var_14 = 1;
                        continue;
                    }

                    var_15 = 1;
                }
            }

            if ( var_14 )
                var_1 thread _id_0788::_id_6F9C( "mode_x_assault" );
            else if ( var_15 )
            {
                var_1 thread _id_0788::_id_6F9C( "mode_x_defend" );
                var_1 _id_0A7B::_id_7D93( "defends", 1 );
                var_1 scripts\mp\gamelogic::_id_E76D( "round", "defends", var_1._id_0309["defends"] );
            }
        }
    }

    if ( isdefined( self._id_32C0 ) )
        _id_4869();
}

_id_4B99( var_0, var_1, var_2 )
{
    var_3 = distancesquared( var_2, var_0 );
    var_4 = distancesquared( var_2, var_1 );

    if ( var_3 < 90000 || var_4 < 90000 )
        return 1;
    else
        return 0;
}

_id_1D5F()
{
    var_0 = _id_0A69::_id_6BC3( self._id_0309["team"] )[0];
    self _meth_801E( level._id_32C0[var_0], "J_spine4", 1 );
    self._id_32C0 = level._id_32C0[var_0];
}

_id_4869()
{
    self destroy( self._id_32C0, "J_spine4" );
    self._id_32C0 = undefined;
}

_id_D6D6()
{
    if ( isusingmatchrulesdata() && getmatchrulesdata( "defaultClasses", "axis", 5, "class", "inUse" ) )
        level._id_40F7["axis"] = _id_0A69::_id_6B14( "axis", 5 );

    if ( isusingmatchrulesdata() && getmatchrulesdata( "defaultClasses", "allies", 5, "class", "inUse" ) )
        level._id_40F7["allies"] = _id_0A69::_id_6B14( "allies", 5 );
}

_id_D8BA()
{
    level._id_10CCB["waypoint_blitz_kill"] = "enemy";
    level._id_10CCA["waypoint_blitz_kill"] = 1;
    level._id_10CD7["waypoint_blitz_kill"] = "MP_INGAME_ONLY/OBJ_KILL_CAPS";
    level._id_10CD6["waypoint_blitz_kill"] = "icon_waypoint_kill";
    level._id_10CCF["waypoint_blitz_kill"] = 0;
    level._id_10CCB["waypoint_blitz_pickup"] = "friendly";
    level._id_10CCA["waypoint_blitz_pickup"] = 0;
    level._id_10CD7["waypoint_blitz_pickup"] = "MP_INGAME_ONLY/OBJ_PICKUP_CAPS";
    level._id_10CD6["waypoint_blitz_pickup"] = "icon_waypoint_flag";
    level._id_10CCF["waypoint_blitz_pickup"] = 1;
    level._id_10CCB["waypoint_blitz_goal"] = "enemy";
    level._id_10CCA["waypoint_blitz_goal"] = 0;
    level._id_10CD7["waypoint_blitz_goal"] = "MP_INGAME_ONLY/OBJ_TARGET_CAPS";
    level._id_10CD6["waypoint_blitz_goal"] = "icon_waypoint_cyber_bombsite";
    level._id_10CCF["waypoint_blitz_goal"] = 0;
    level._id_10CCB["waypoint_blitz_escort"] = "friendly";
    level._id_10CCA["waypoint_blitz_escort"] = 2;
    level._id_10CD7["waypoint_blitz_escort"] = "MP_INGAME_ONLY/OBJ_ESCORT_CAPS";
    level._id_10CD6["waypoint_blitz_escort"] = "icon_waypoint_flag";
    level._id_10CCF["waypoint_blitz_escort"] = 0;
    level._id_10CCB["waypoint_blitz_defend"] = "friendly";
    level._id_10CCA["waypoint_blitz_defend"] = 0;
    level._id_10CD7["waypoint_blitz_defend"] = "MP_INGAME_ONLY/OBJ_DEFEND_CAPS";
    level._id_10CD6["waypoint_blitz_defend"] = "icon_waypoint_cyber_bombsite";
    level._id_10CCF["waypoint_blitz_defend"] = 0;
    level._id_10CCB["waypoint_blitz_reset"] = "friendly";
    level._id_10CCA["waypoint_blitz_reset"] = 0;
    level._id_10CD7["waypoint_blitz_reset"] = "MP_INGAME_ONLY/OBJ_RESET_CAPS";
    level._id_10CD6["waypoint_blitz_reset"] = "icon_waypoint_flag";
    level._id_10CCF["waypoint_blitz_reset"] = 0;
    level._id_10CCB["waypoint_blitz_resetting"] = "enemy";
    level._id_10CCA["waypoint_blitz_resetting"] = 0;
    level._id_10CD7["waypoint_blitz_resetting"] = "MP_INGAME_ONLY/OBJ_RESETTING_CAPS";
    level._id_10CD6["waypoint_blitz_resetting"] = "icon_waypoint_flag";
    level._id_10CCF["waypoint_blitz_resetting"] = 0;
    level._id_10CCB["waypoint_blitz_pickup_losing"] = "friendly";
    level._id_10CCA["waypoint_blitz_pickup_losing"] = 0;
    level._id_10CD7["waypoint_blitz_pickup_losing"] = "MP_INGAME_ONLY/OBJ_PICKUP_CAPS";
    level._id_10CD6["waypoint_blitz_pickup_losing"] = "icon_waypoint_flag";
    level._id_10CCF["waypoint_blitz_pickup_losing"] = 1;
    level._id_10CCB["waypoint_blitz_pickup_defend"] = "friendly";
    level._id_10CCA["waypoint_blitz_pickup_defend"] = 0;
    level._id_10CD7["waypoint_blitz_pickup_defend"] = "MP_INGAME_ONLY/OBJ_PICKUP_DEFEND_CAPS";
    level._id_10CD6["waypoint_blitz_pickup_defend"] = "icon_waypoint_flag";
    level._id_10CCF["waypoint_blitz_pickup_defend"] = 0;
}
