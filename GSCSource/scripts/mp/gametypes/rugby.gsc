// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    var_0 = _func_020F();
    level._id_C97E = var_0;
    var_0._id_533E = [];
    var_0._id_533E["allies"] = [];
    var_0._id_533E["axis"] = [];
    var_0._id_8C17 = [];
    var_0._id_7070 = [];
    var_0._id_0F20 = [];
    var_0._id_0F21 = [];
    var_0._id_8FE2 = [];
    _id_07B3::_id_021D();
    _id_07B3::_id_D849();
    var_1[0] = _id_0A69::_id_6A43();
    _id_07AD::_id_0271( var_1 );
    _id_8265();
    level._id_EF62 = 1;
    level._id_A8C1 = 1;
    level._id_AB9A = ::_id_AB9A;
    level._id_6D2C = ::_id_6D2C;
    level._id_AB2C = ::_id_AB2C;
    level._id_ABAD = ::_id_ABAD;
    game["dialog"]["gametype"] = "gametype_rugby";

    if ( getdvarint( "#x33b8132c2bbd3f240" ) )
        game["dialog"]["gametype"] = "hc_" + game["dialog"]["gametype"];
    else if ( getdvarint( "#x3863d66ab814c070" ) )
        game["dialog"]["gametype"] = "thirdp_" + game["dialog"]["gametype"];

    game["dialog"]["boost"] = "boost_rugby";

    if ( !isdefined( game["roundsPlayed"] ) )
        var_2 = "boost_rugby";
    else
        var_2 = "boost_rugby_short";

    game["dialog"]["offense_obj"] = var_2;
    game["dialog"]["defense_obj"] = var_2;
    level._id_0BA3["rugby_score_explosion"] = _func_0139( "vfx/iw8_mp/gamemode/vfx_search_bombsite_destroy.vfx" );
}

_id_8265()
{
    if ( isusingmatchrulesdata() )
    {
        level._id_81CB = ::_id_81CB;
        [[ level._id_81CB ]]();
        level thread _id_0A69::_id_C2DD();
    }
    else
    {
        _id_0A69::_id_C29C( _id_0A69::_id_6A43(), 1, 0, 1 );
        _id_0A69::registersharedfunc( _id_0A69::_id_6A43(), 240 );
        _id_0A69::_id_C29F( _id_0A69::_id_6A43(), 75 );
        _id_0A69::_id_C29B( _id_0A69::_id_6A43(), 0 );
        _id_0A69::_id_C2C2( _id_0A69::_id_6A43(), 3 );
        _id_0A69::_id_C270( _id_0A69::_id_6A43(), 0 );
        _id_0A69::_id_C24F( _id_0A69::_id_6A43(), 0 );
    }

    _id_FC7A();
}

_id_FC7A()
{
    scripts\mp\gametypes\common::_id_FC36();
}

_id_81CB()
{
    _id_0A69::_id_D4D3();
    var_0 = getmatchrulesdata( "rugbyData", "juggHealth" );
    _func_01D2( "scr_rugby_juggHealth", var_0 );
    var_1 = getmatchrulesdata( "rugbyData", "juggSpeed" );
    _func_01D2( "scr_rugby_juggSpeed", var_1 );
    var_2 = getmatchrulesdata( "rugbyData", "juggTeamSpeed" );
    _func_01D2( "scr_rugby_juggTeamSpeed", var_2 );
    var_3 = getmatchrulesdata( "rugbyData", "juggTimeout" );
    _func_01D2( "scr_rugby_juggTimeout", var_3 );
    var_4 = getmatchrulesdata( "rugbyData", "juggTimeoutOn" );
    _func_01D2( "scr_rugby_juggTimeoutOn", var_4 );
    var_5 = getmatchrulesdata( "rugbyData", "helperMax" );
    _func_01D2( "scr_rugby_helperMax", var_5 );
}

_id_6AB3()
{
    return getdvarint( "scr_rugby_juggHealth" );
}

_id_6AB6( var_0 )
{
    var_1 = -0.3 + 0.1 * getdvarfloat( "scr_rugby_juggSpeed" );
    var_0 = int( _func_0148( var_0, getdvarint( "scr_rugby_helperMax" ) ) );
    var_2 = 0.08 * getdvarfloat( "scr_rugby_juggTeamSpeed" );
    return var_1 + var_0 * var_2;
}

_id_6AB7()
{
    return getdvarfloat( "scr_rugby_juggTimeout" );
}

_id_6AB8()
{
    return getdvarint( "scr_rugby_juggTimeoutOn" ) != 0;
}

_id_AB9A()
{
    _func_01CE( "auto_change" );

    foreach ( var_1 in level._id_EF86 )
        _id_0A69::_id_D610( var_1, &"MP_MODE_RUGBY/INGAME_OBJECTIVE" );

    _id_8264();
    _id_D877();
    _id_827A();
    _id_8235();
    _id_81E6();
}

_id_8264()
{
    _id_8172();
    _id_81E7();
}

_id_8172()
{
    var_0 = level._id_C97E;
    var_1 = _id_077B::_id_6D7C( "rugby_endzone", "targetname" );

    foreach ( var_3 in var_1 )
    {
        _id_8171( var_3 );
        var_0._id_533E[var_3._id_045B][var_0._id_533E[var_3._id_045B].size] = var_3;
    }
}

_id_8171( var_0 )
{
    var_1 = getentarray( var_0._id_0457, "targetname" );
    var_0._id_1042E = [];
    var_0._id_1042E["friendly"] = [];
    var_0._id_1042E["enemy"] = [];

    foreach ( var_3 in var_1 )
    {
        if ( var_3._id_00DE == "trigger_multiple_mp_rugby_endzone" )
            var_0._id_1A23 = var_3;

        if ( isdefined( var_3._id_0375 ) && _func_00D6( var_3._id_0375, 0, 3 ) == "fx_" )
        {
            var_4 = _id_077B::_id_F07F( var_3._id_0375 == "fx_friendly", "friendly", "enemy" );
            var_0._id_1042E[var_4][var_0._id_1042E[var_4].size] = var_3;
        }
    }

    if ( var_0._id_03C3 & 1 )
        var_0._id_045B = "allies";
    else if ( var_0._id_03C3 & 2 )
        var_0._id_045B = "axis";
    else
        var_0._id_045B = "allies";
}

_id_81E7()
{
    var_0 = level._id_C97E;
    var_1 = _id_077B::_id_6D7C( "rugby_jugg_crate", "targetname" );

    foreach ( var_3 in var_1 )
        var_0._id_8C17[var_0._id_8C17.size] = var_3;
}

_id_8235()
{
    level._id_E3E7 = [];
    level._id_E3E7[0]["allies"] = _func_020F();
    level._id_E3E7[0]["axis"] = _func_020F();
    _id_07EC::_id_D565( "allies", level._id_E3E7[0]["allies"] );
    _id_07EC::_id_D565( "axis", level._id_E3E7[0]["axis"] );
    _id_FCE0( "allies" );
    _id_FCE0( "axis" );
    level._id_FC73 = ::_id_FCE0;
    level._id_E3E8 = 1.25;
}

_id_81E6()
{
    var_0 = scripts\mp\class::_id_8BD4();
    level._id_C97E._id_8C11 = var_0;
    var_1 = _id_6AB3();
    var_0._id_027F = var_1;
    var_0._id_E6D0 = var_1;
    var_0._id_EAF4 = "iw8_juggernaut_mp_rugby";
    var_0._id_39D8 = "vestheavy";
    var_0._id_15A9["crouch"] = 1;
    var_0._id_15A9["sprint"] = 1;
    var_0._id_15A9["weapon_switch"] = undefined;
    var_0._id_37E4._id_966C = "iw8_lm_dblmg";
}

_id_827A()
{
    var_0 = level._id_C97E;
    level._id_E324 = ( 0, 0, 0 );
    level._id_E321 = ( 0, 0, 0 );
    _id_07EE::_id_D454( "Rugby", "Crit_Default" );
    var_0._id_E721 = "mp_rugby_spawn";
    _id_07EE::_id_1111( var_0._id_E721 + "_allies_start", 1, "allies" );
    _id_07EE::_id_1111( var_0._id_E721 + "_axis_start", 1, "axis" );

    if ( !isdefined( level._id_EFAC ) )
    {
        var_0._id_E721 = "mp_tdm_spawn";
        _id_07EE::_id_1111( var_0._id_E721 + "_allies_start", 1, "allies" );
        _id_07EE::_id_1111( var_0._id_E721 + "_axis_start", 1, "axis" );
    }

    var_1 = _id_07EE::_id_6D30( "mp_rugby_spawn_allies" );
    var_2 = _id_07EE::_id_6D30( "mp_rugby_spawn_axis" );

    if ( var_1.size <= 0 || var_2.size <= 0 )
    {
        var_3 = _id_07EE::_id_6D30( "mp_tdm_spawn" );

        foreach ( var_5 in var_3 )
        {
            if ( distancesquared( var_5._id_02EA, var_0._id_7070["allies"]._id_02EA ) < distancesquared( var_5._id_02EA, var_0._id_7070["axis"]._id_02EA ) )
            {
                var_1[var_1.size] = var_5;
                continue;
            }

            var_2[var_2.size] = var_5;
        }
    }

    var_7 = _id_07EE::_id_6D30( "mp_rugby_spawn_allies_secondary" );
    var_8 = _id_07EE::_id_6D30( "mp_rugby_spawn_axis_secondary" );
    _id_07EE::_id_C2AA( "allies", var_1 );
    _id_07EE::_id_C2AA( "axis", var_2 );
    _id_07EE::_id_C2AA( "allies", var_7 );
    _id_07EE::_id_C2AA( "axis", var_8 );
    _id_07EE::_id_C2AB( "rugby_allies", var_1 );
    _id_07EE::_id_C2AB( "rugby_axis", var_2 );
    _id_07EE::_id_C2AB( "rugby_allies_base", var_7 );
    _id_07EE::_id_C2AB( "rugby_axis_base", var_8 );
    level._id_9A95 = _id_07EE::_id_5AC1( level._id_E324, level._id_E321 );
    setgameendtime( level._id_9A95 );
    _id_07EE::_id_0EBC();
}

_id_6D2C()
{
    var_0 = level._id_C97E;
    var_1 = self._id_0309["team"];

    if ( istrue( game["switchedsides"] ) )
        var_1 = _id_077B::_id_F07F( var_1 == "allies", "axis", "allies" );

    var_2 = _id_077B::_id_F07F( var_1 == "allies", "axis", "allies" );

    if ( _id_07EE::_id_DC03() )
    {
        var_3 = _id_07EE::_id_6D30( var_0._id_E721 + "_" + var_1 + "_start" );
        var_4 = _id_07EE::_id_6D2F( var_3 );
    }
    else
    {
        var_5 = _id_6AB5();
        var_6 = [];
        var_6["singlePointPos"] = var_5;
        var_6["minDistToSinglePointSq"] = 562500;
        var_6["maxDistToSinglePointSq"] = 36000000;
        var_6["distRangeToSinglePointSq"] = 35437500;
        var_6["juggPos"] = var_5;
        var_6["rugbyFieldDir2D"] = var_0._id_7070[var_2]._id_02EA - var_0._id_7070[var_1]._id_02EA;
        var_7 = undefined;
        var_8 = undefined;

        if ( var_1 == "allies" )
        {
            var_7 = "rugby_allies";
            var_8 = "rugby_allies_base";
        }
        else
        {
            var_7 = "rugby_axis";
            var_8 = "rugby_axis_base";
        }

        var_4 = _id_07EE::_id_6D2C( self, self._id_045B, var_7, var_8, undefined, var_6 );
    }

    return var_4;
}

_id_6AB5()
{
    var_0 = level._id_C97E;

    if ( var_0._id_0F21.size > 0 )
    {
        foreach ( var_2 in var_0._id_0F21 )
            return var_2._id_02EA;
    }
    else
    {
        foreach ( var_5 in var_0._id_0F20 )
            return var_5._id_02EA;
    }

    return undefined;
}

_id_4C5E( var_0 )
{
    var_1 = level._id_C97E;

    if ( var_1._id_0F21.size > 0 )
    {
        foreach ( var_3 in var_1._id_0F21 )
        {
            if ( var_3._id_045B == var_0 )
                return 1;
        }
    }

    return 0;
}

_id_AB2C( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    scripts\mp\gametypes\common::_id_AA76( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_id_ABAD()
{
    if ( level._id_609B )
        return;

    if ( level._id_C97E._id_0F21.size <= 0 )
    {
        game["roundsWon"]["allies"]++;
        game["roundsWon"]["axis"]++;
        thread _id_07AC::_id_52D7( "tie", game["end_reason"]["time_limit_reached"] );
    }
    else if ( !istrue( level._id_C97E._id_82B6 ) )
    {
        iprintlnbold( "Overtime" );
        level._id_C97E._id_82B6 = 1;
    }
}

_id_AAFA( var_0 )
{
    level endon( "game_ended" );
    _func_019D( var_0._id_02EA, "exp_bombsite_lr" );
    _func_0196( _id_077B::_id_6A40( "rugby_score_explosion" ), var_0._id_02EA );
    var_1 = _id_0A74::_id_6C40( var_0._id_02EA, 800 );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 != var_0 && var_3._id_045B != var_0._id_045B )
            var_3 _meth_80B7( 5000, var_0._id_02EA, var_3, undefined, "MOD_EXPLOSIVE" );
    }

    thread _id_07AC::_id_52D7( var_0._id_045B, game["end_reason"]["target_destroyed"] );
}

_id_D877()
{
    var_0 = level._id_C97E;
    _id_78CB();

    if ( !_id_0EC9( var_0._id_533E["allies"][0], "allies" ) )
        return;

    if ( !_id_0EC9( var_0._id_533E["axis"][0], "axis" ) )
        return;

    if ( !_id_0ED0() )
        return;
}

_id_0ED0()
{
    var_0 = _func_01B8( level._id_C97E._id_8C17.size );
    var_1 = level._id_C97E._id_8C17[var_0];

    if ( !isdefined( var_1 ) )
        return 0;

    return _id_0ECD( var_1._id_02EA, _id_077B::_id_F07F( isdefined( var_1._id_0054 ), var_1._id_0054, ( 0, 0, 0 ) ) );
}

_id_0EC9( var_0, var_1 )
{
    var_2 = level._id_C97E;

    if ( istrue( game["switchedsides"] ) )
        var_1 = _id_077B::_id_F07F( var_1 == "allies", "axis", "allies" );

    if ( !isdefined( var_0 ) )
        return 0;

    if ( isdefined( var_2._id_7070[var_1] ) )
        _id_436C( var_2._id_7070[var_1] );

    var_2._id_7070[var_1] = var_0;
    var_0 thread _id_10B1C( var_1 );
    return 1;
}

_id_436C( var_0 )
{
    var_0 notify( "endzone_deactivate" );
}

_id_DC9A( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0._id_1042E[var_1] )
    {
        foreach ( var_6 in level._id_B758 )
        {
            if ( var_6._id_045B == var_2 )
            {
                var_4 _meth_83CA( var_6 );
                continue;
            }

            var_4 _meth_847B( var_6 );
        }
    }
}

_id_78DB( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0._id_1042E[var_1] )
    {
        foreach ( var_6 in level._id_B758 )
        {
            if ( var_6._id_045B == var_2 )
            {
                var_4 _meth_847B( var_6 );
                continue;
            }

            var_4 _meth_83CA( var_6 );
        }
    }
}

_id_78CB( var_0 )
{
    var_1 = [ "allies", "axis" ];
    var_2 = [ "friendly", "enemy" ];

    foreach ( var_4 in var_1 )
    {
        foreach ( var_0 in level._id_C97E._id_533E[var_4] )
        {
            foreach ( var_7 in var_2 )
            {
                foreach ( var_9 in var_0._id_1042E[var_7] )
                    var_9 hide();
            }
        }
    }
}

_id_D86C( var_0 )
{
    var_1 = var_0._id_045B;
    var_2 = _id_0A7C::_id_69E2( var_1 );
    var_3 = var_2[0];
    var_4 = level._id_C97E._id_7070[var_3];
    _id_DC9A( var_4, "enemy", var_1 );
    _id_DC9A( var_4, "friendly", var_3 );
}

_id_10B1C( var_0 )
{
    level endon( "game_ended" );
    self endon( "endzone_deactivate" );

    for (;;)
    {
        self._id_1A23 waittill( "trigger", var_1 );

        if ( isdefined( var_1._id_C97F ) && var_1._id_045B != var_0 )
        {
            _id_AAFA( var_1 );
            return;
        }
    }
}

_id_0ED1( var_0 )
{
    var_1 = level._id_C97E;
    var_2 = _func_020F();
    var_2._id_030F = var_0;
    var_3 = var_0 getentitynumber();
    var_2._id_7C71 = var_3;
    var_1._id_0F21[var_3] = var_0;
    var_0._id_C97F = var_2;
    _id_D895( var_0 );
    _id_4003( var_0, var_2 );
    _id_E6DA( var_0 );
    _id_D86C( var_0 );
    var_0 thread _id_10B92();
    var_0 thread _id_10B18();
    var_0 thread _id_10B93();
    var_0 thread _id_10C14();

    if ( _id_6AB8() )
        var_0 thread _id_10B94();
}

_id_436E( var_0 )
{
    var_1 = level._id_C97E;
    var_2 = var_0._id_C97F;

    if ( isdefined( var_0 ) )
        var_0._id_C97F = undefined;

    var_1._id_0F21[var_2._id_7C71] = undefined;
    _id_3871( var_0, var_2 );
    _id_3926();
    _id_78CB();
    var_0 notify( "rugby_jugg_end" );
}

_id_E6DA( var_0 )
{
    _func_01E4( "ui_rugby_jugg_client", var_0 );
    _func_01E4( "ui_rugby_jugg_health", 1.0 );

    foreach ( var_2 in level._id_B758 )
        var_2 _meth_82F6( "ui_rugby_jugg_friendly", _id_077B::_id_F07F( var_2._id_045B == var_0._id_045B, 0, 1 ) );
}

_id_3926()
{
    _func_01E4( "ui_rugby_jugg_client", undefined );

    foreach ( var_1 in level._id_B758 )
        var_1 _meth_82F6( "ui_rugby_jugg_friendly", -1 );
}

_id_10B92()
{
    level endon( "game_ended" );
    self endon( "rugby_jugg_end" );

    for (;;)
    {
        self waittill( "damage" );
        _func_01E4( "ui_rugby_jugg_health", self._id_01FF / self._id_027F );
    }
}

_id_10B18()
{
    level endon( "game_ended" );
    self endon( "rugby_jugg_end" );
    self waittill( "death_or_disconnect" );
    var_0 = undefined;

    if ( !isdefined( self ) )
        var_0 = level._id_8FE2[self._id_C97F._id_7C71];
    else
        var_0 = self._id_02EA;

    var_1 = _func_02A6( var_0 );
    _id_0ECD( var_1 + ( 0, 0, 60 ), ( 0, 0, 0 ) );
    _id_436E( self );
}

_id_10B93()
{
    level endon( "game_ended" );
    self endon( "rugby_jugg_end" );
    var_0 = self._id_045B;
    var_1 = _id_0A7C::_id_69E2( var_0 );
    var_2 = var_1[0];
    var_3 = level._id_C97E._id_7070[var_0];
    var_4 = level._id_C97E._id_7070[var_2];
    var_5 = var_4._id_02EA - var_3._id_02EA;
    var_6 = _func_0257( var_5, var_5 );

    for (;;)
    {
        var_7 = self._id_02EA * ( 1, 1, 0 ) - var_3._id_02EA * ( 1, 1, 0 );
        var_8 = _func_0257( var_5, var_7 ) / var_6;
        var_8 = clamp( var_8, 0.0, 1.0 );
        var_9 = [];
        var_9[var_0] = var_8;
        var_9[var_2] = 1.0 - var_8;

        foreach ( var_11 in level._id_B758 )
        {
            if ( var_11._id_045B == var_0 || var_11._id_045B == var_2 )
                var_11 _meth_82F6( "ui_rugby_jugg_progress", var_9[var_11._id_045B] );
        }

        level._id_8FE2[self._id_C97F._id_7C71] = self._id_02EA;
        wait 0.05;
    }
}

_id_D895( var_0 )
{
    var_1 = level._id_C97E._id_8C11;
    var_2 = var_0 scripts\mp\class::_id_8BEF( var_1 );

    if ( !var_2 )
    {

    }

    var_0._id_5026 = 1;
    var_0 givemaxammo( var_0._id_37E4._id_9673 );
    var_0._id_B7D1 = _id_6AB6( 0 );
    var_0 scripts\mp\weapons::_id_FCCA();
    var_0 thread _id_7446();
    var_3 = _id_0A7C::_id_69E2( var_0._id_045B );
    var_4 = var_3[0];
}

_id_10C14()
{
    level endon( "game_ended" );
    self endon( "rugby_jugg_end" );

    for (;;)
    {
        var_0 = 0;

        foreach ( var_2 in level._id_B758 )
        {
            if ( var_2._id_045B != self._id_045B || var_2 == self )
                continue;

            if ( distancesquared( var_2._id_02EA, self._id_02EA ) < 122500 )
                var_0++;
        }

        self._id_B7D1 = _id_6AB6( var_0 );
        scripts\mp\weapons::_id_FCCA();
        wait 0.1;
    }
}

_id_10B94()
{
    level endon( "game_ended" );
    self endon( "rugby_jugg_end" );
    wait( _id_6AB7() );
    self _meth_83FD();
}

_id_7446()
{
    level endon( "game_ended" );
    self endon( "rugby_jugg_end" );
    self _meth_824A( "jugg_jumped", "+goStand" );

    for (;;)
    {
        self waittill( "jugg_jumped" );
        var_0 = self getvelocity();
        var_1 = ( var_0[0] * 0.25, var_0[1] * 0.25, var_0[2] );
        self _meth_83A7( var_1 );
    }
}

_id_4003( var_0, var_1 )
{
    _id_3FE1( var_0, var_1 );
    var_2 = _id_0A7C::_id_69E2( var_0._id_045B );
    var_3 = var_2[0];
    var_4 = level._id_C97E._id_7070[var_3];
    _id_3FA5( var_4, var_3, var_1 );
}

_id_3871( var_0, var_1 )
{
    _id_07D0::_id_C78C( var_1._id_8C6F );
    _id_07D0::_id_C78C( var_1._id_533D );
}

_id_3FE1( var_0, var_1 )
{
    var_2 = _id_07D0::_id_C56F( 99 );
    var_1._id_8C6F = var_2;
    _id_07D0::_id_A854( var_2, "current", var_0._id_02EA, "icon_waypoint_jugg" );
    _id_07D0::_id_A89E( var_2, 0 );
    _id_07D0::_id_A89F( var_2, 0 );
    _id_07D0::_id_A88F( var_2 );
    _id_07D0::_id_FB90( var_2, var_0 );
    _id_07D0::_id_FB9A( var_2, 90 );
    _func_017D( var_2, var_0._id_045B );
    _func_0163( var_2, "MP_MODE_RUGBY/JUGG_ESCORT" );
    _func_0164( var_2, "MP_MODE_RUGBY/JUGG_KILL" );
}

_id_3FA5( var_0, var_1, var_2 )
{
    var_3 = _id_07D0::_id_C56F( 99 );
    var_2._id_533D = var_3;
    _id_07D0::_id_A854( var_3, "current", var_0._id_02EA, "icon_waypoint_hq" );
    _id_07D0::_id_A89E( var_3, 0 );
    _id_07D0::_id_A89F( var_3, 0 );
    _id_07D0::_id_A88F( var_3 );
    _func_017D( var_3, var_1 );
    _func_0163( var_3, "MP_MODE_RUGBY/ENDZONE_DEFEND" );
    _func_0164( var_3, "MP_MODE_RUGBY/ENDZONE_ASSAULT" );
}

_id_0ECD( var_0, var_1 )
{
    var_2 = level._id_C97E;
    var_3 = _id_3FDF( var_0, var_1 );
    var_2._id_0F20[var_3._id_3E6F] = var_3;
    return 1;
}

_id_3FDF( var_0, var_1 )
{
    var_2 = getgroundposition( var_0, 32 );
    var_3 = _func_0205( "script_model", var_2 );
    var_3._id_0054 = var_1;
    var_3 setmode( "military_crate_large_stackable_01_jugg" );
    var_3._id_3E6F = var_3 getentitynumber();
    _id_3FE0( var_3 );
    var_3 thread _id_8C14();
    var_3 thread _id_7294();
    return var_3;
}

_id_7294()
{
    level endon( "game_ended" );
    self endon( "death" );

    for (;;)
    {
        var_0 = _func_00E8();

        foreach ( var_2 in var_0 )
        {
            if ( distance2dsquared( var_2._id_02EA, self._id_02EA ) < 40000 )
                var_2 _meth_809A();
        }

        wait 0.25;
    }
}

_id_8C14()
{
    level endon( "game_ended" );
    self endon( "death" );
    self _meth_84CE( 120 );
    self _meth_8305( "HINT_NOICON" );
    self _meth_832B( &"MP_MODE_RUGBY/CRATE_USE" );
    self setuserange( "duration_long" );
    self _meth_857F( 1 );
    self makeunusable();
    self._id_84D5 = 0;
    thread _id_8C1C();
    thread _id_8C1B();
    thread _id_8C1A();
}

_id_8C19( var_0 )
{
    _id_0ED1( var_0 );
    _id_8C13();
    level._id_C97E._id_0F20[self._id_3E6F] = undefined;
    self _meth_809A();
}

_id_8C13()
{
    _id_07D0::_id_C78C( self._id_A8F3 );
}

_id_8C1B()
{
    level endon( "game_ended" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger", var_0 );

        if ( !_id_0A74::_id_89D3( var_0 ) )
            continue;

        _id_8C19( var_0 );
        return;
    }
}

_id_8C1C()
{
    level endon( "game_ended" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger_progress", var_0 );
        self._id_FF14 = var_0;
        self._id_84D5 = 1;
        self._id_90A7 = gettime();
    }
}

_id_8C1A()
{
    level endon( "game_ended" );
    self endon( "death" );
    var_0 = self._id_84D5;
    var_1 = self._id_FF14;

    for (;;)
    {
        wait 0.2;

        if ( self._id_84D5 )
        {
            if ( self._id_90A7 < gettime() - 200.0 )
            {
                self._id_84D5 = 0;
                self._id_FF14 = undefined;
                self._id_90A7 = undefined;
                continue;
            }

            var_2 = isdefined( var_1 ) && isdefined( self._id_FF14 ) && var_1 != self._id_FF14;

            if ( !var_0 || var_2 )
                _id_FC94( self );
        }
        else if ( var_0 )
            _id_FC94( self );

        var_0 = self._id_84D5;
        var_1 = self._id_FF14;
    }
}

_id_3FE0( var_0 )
{
    var_1 = _id_07D0::_id_C56F( 99 );
    var_0._id_A8F3 = var_1;
    var_2 = var_0._id_02EA + ( 0, 0, 32 );
    _id_07D0::_id_A854( var_1, "current", var_2, "icon_waypoint_jugg" );
    _id_07D0::_id_A89E( var_1, 0 );
    _id_07D0::_id_A89F( var_1, 0 );
    _id_07D0::_id_A88F( var_1 );
    _func_0165( var_1, "MP_MODE_RUGBY/CRATE_CAPTURE" );
    _func_0163( var_1, "MP_MODE_RUGBY/CRATE_CAPTURING" );
    _func_0164( var_1, "MP_MODE_RUGBY/CRATE_LOSING" );
    _id_FC94( var_0 );
}

_id_FC94( var_0 )
{
    var_1 = var_0._id_A8F3;
    var_2 = istrue( var_0._id_84D5 );

    if ( var_2 )
    {
        _func_017D( var_1, var_0._id_FF14._id_045B );
        _func_016F( var_1, 1 );
    }
    else
    {
        _func_017D( var_1, undefined );
        _func_016F( var_1, 0 );
    }
}

_id_FCE0( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        var_1 = var_0;
        var_2 = level._id_E3E7[0][var_1];
    }
    else
    {
        var_1 = self._id_045B;
        var_2 = level._id_E3E7[0][self._id_045B];
    }

    var_3 = level._id_C97E;
    var_4 = undefined;

    if ( !istrue( game["switchedsides"] ) )
        var_4 = var_1;
    else
        var_4 = _id_077B::_id_F07F( var_1 == "allies", "axis", "allies" );

    var_5 = _id_077B::_id_F07F( var_4 == "allies", "axis", "allies" );
    var_6 = var_3._id_533E[var_4][0]._id_02EA;
    var_7 = var_3._id_533E[var_5][0]._id_02EA;
    var_8 = ( var_7 - var_6 ) * ( 1, 1, 0 );
    var_9 = _func_0131( var_8 );
    var_10 = _id_099B::_id_6ABC();

    if ( isdefined( var_10 ) )
        var_11 = var_10._id_02EA[2];
    else
        var_11 = 5000;

    var_12 = undefined;
    var_13 = undefined;

    if ( _id_4C5E( var_1 ) )
    {
        var_14 = _id_6AB5();
        var_12 = var_14 + var_8 * ( -3000 / var_9 );
        var_12 = ( var_12[0], var_12[1], var_11 );
        var_13 = var_14 + ( var_7 - var_14 ) * 0.5;
    }
    else
    {
        var_12 = var_6 + var_8 * ( -2000 / var_9 );
        var_12 = ( var_12[0], var_12[1], var_11 );
        var_13 = _id_6AB5();
    }

    var_15 = var_13 - var_12;
    var_16 = _func_025B( var_15 );
    var_2._id_02EA = var_12;
    var_2._id_0054 = var_16;
}

_id_E724()
{
    _id_0A70::_id_D5DD( 0 );
    waitframe();
    _id_0A74::_id_FD24( "spectator" );
    _id_07F1::_id_D505();

    if ( isdefined( self._id_8FA1 ) )
        self _meth_8362( self._id_8FA1 );

    wait 0.1;
    _id_0A74::_id_D511();
    _id_FCE0();
    var_0 = level._id_E3E7[0][self._id_045B];
    var_1 = var_0._id_02EA;
    var_2 = var_0._id_0054;
    self._id_43F0 = var_1;
    self._id_43EF = var_2;
    var_3 = _func_0205( "script_model", self getvieworigin() );
    var_3 setmode( "tag_origin" );
    var_3._id_0054 = var_2;
    self._id_E3E6 = var_3;
    self._id_8ABE = 1;
    self _meth_805E( var_3, "tag_origin", 1 );
    thread _id_4CD0();
    var_3 _id_A214( self, var_1, var_2 );
}

_id_4CD0()
{
    wait 0.4;
    thread _id_B8C8();
    _id_19C6();
}

_id_532B()
{
    if ( !isdefined( self._id_E3E6 ) )
        return;

    _id_C525();
    _id_C4FE();
    thread _id_CA65();
}

_id_19C6()
{
    self _meth_8456( "proto_apache_flir_mp" );
    self _meth_840A();
}

_id_C525()
{
    self _meth_8409();
}

_id_A214( var_0, var_1, var_2 )
{
    var_0 endon( "spawned_player" );
    var_3 = 1.0;
    var_4 = 1.0;
    self _meth_823B( var_1, 1.0, 0.5, 0.5 );
    var_0 _meth_82FC( "spawn_cam", 0.5, "mix" );
    self rotateroll( var_2, 1.0, 0.5, 0.5 );
    wait 1.1;
    var_5 = anglestoforward( var_2 ) * 300;
    var_5 = var_5 * ( 1, 1, 0 );

    if ( isdefined( var_0 ) && isdefined( var_0._id_E3E6 ) )
    {
        self _meth_823B( var_1 + var_5, 15.0, 1.0, 1.0 );
        var_0 _meth_849F( 0.03, 15.0, var_1 + var_5, 1000 );
    }
}

_id_CA65()
{
    self waittill( "spawned_player" );
    var_0 = self geteye();
    var_1 = self._id_0054;
    _id_0A74::_id_FD24( "spectator" );
    self _meth_805E( self._id_E3E6, "tag_origin", 1 );
    self visionsetmissilecamforplayer( "tac_ops_slamzoom", 0.2 );
    self._id_E3E6 _meth_823B( var_0, 0.5 );
    self _meth_8077( 0.5 );
    self._id_E3E6 rotateroll( var_1, 0.5, 0.5 );
    wait 0.5;
    self visionsetmissilecamforplayer( "", 0 );
    thread _id_B8C8();
    _id_0A74::_id_FD24( "playing" );
    self cameralinkto();
    self._id_E3E6 _meth_809A();
    wait 1.0;
}

_id_B8C8()
{
    var_0 = _func_0152( self );
    var_0._id_04DE = 0;
    var_0._id_04E1 = 0;
    var_0._id_003A = "left";
    var_0.alignx = "top";
    var_0._id_03BD = 1;
    var_0._id_020C = "fullscreen";
    var_0._id_04B8 = "fullscreen";
    var_0._id_0047 = 1;
    var_0._id_01C0 = 1;
    var_0 _meth_8378( "white", 640, 480 );
    var_0 fadeovertime( 0.4 );
    var_0._id_0047 = 0.0;
    wait 0.4;
    var_0 delete();
}

_id_5246()
{
    self._id_C980 = [];

    foreach ( var_1 in level._id_B758 )
    {
        if ( var_1 == self )
            continue;

        var_2 = _id_077B::_id_F07F( var_1._id_045B == self._id_045B, "outlinefill_nodepth_cyan", "outlinefill_nodepth_orange" );
        var_3 = _id_0A72::_id_ACBD( var_1, self, var_2, "level_script" );
        self._id_C980[var_3] = var_1;
    }
}

_id_C4FE()
{
    if ( isdefined( self._id_C980 ) )
    {
        foreach ( var_2, var_1 in self._id_C980 )
            _id_0A72::_id_ACB7( var_2, var_1 );

        self._id_C980 = undefined;
    }
}
