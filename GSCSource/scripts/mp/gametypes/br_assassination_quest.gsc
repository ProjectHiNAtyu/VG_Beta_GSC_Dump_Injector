// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    var_0 = scripts\mp\gametypes\br_quest_util::_id_C293( "assassination", 1 );

    if ( !var_0 )
        return;

    scripts\mp\gametypes\br_quest_util::_id_C294( "assassination_all" );
    scripts\mp\gametypes\br_quest_util::_id_C294( "assassination_all_timed" );
    level._id_2A4A = getdvarint( "scr_br_leader_by_streak", 0 ) != 0;
    scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_BE9D = getdvarint( "scr_br_AQ_questTimeBase", 180 );
    scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_BE9E = getdvarint( "scr_br_AQ_questTimeBonus", 60 );
    scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_C63F = getdvarint( "scr_br_AQ_resetTimerOnKill", 1 );
    scripts\mp\gametypes\br_quest_util::_id_C297( "assassination", ::_id_19F6, 10 );
    scripts\mp\gametypes\br_quest_util::_id_C297( "assassination", ::_id_19F7, 0.2 );
    scripts\mp\gametypes\br_quest_util::_id_C299( "assassination", ::_id_19F8 );
    scripts\mp\gametypes\br_quest_util::_id_C27E( "assassination", ::_id_19F2 );
    scripts\mp\gametypes\br_quest_util::_id_C27A( "assassination", ::_id_19F3 );
    var_1 = _id_077B::_id_1B63( level._id_BEA1._id_4591, ::_id_5A27 );
    var_1 = _id_077B::_id_1B63( level._id_BEA1._id_4591, scripts\mp\gametypes\br_quest_util::_id_5A2A );
    scripts\mp\gametypes\br_quest_util::_id_C28D( "assassination", var_1, 0 );
    scripts\mp\gametypes\br_quest_util::_id_BEAC( "assassination", 1 );
    scripts\mp\gametypes\br_quest_util::_id_C282( "assassination", ::_id_19EF );
    scripts\mp\gametypes\br_quest_util::_id_C281( "assassination", ::_id_19EE );
    scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_15CA = [];
    _id_145D();
    game["dialog"]["mission_ass_accept"] = "mission_mission_ass_single_accept";
    game["dialog"]["mission_ass_hunted"] = "mission_mission_ass_hunted";
    game["dialog"]["mission_ass_success"] = "mission_mission_ass_single_success";
    game["dialog"]["mission_ass_hunted_success"] = "mission_mission_ass_hunted_success";
    game["dialog"]["mission_ass_hunted_timed_out"] = "mission_mission_ass_hunted_timed_out";
    game["dialog"]["mission_ass_fail"] = "mission_mission_ass_fail";
}

_id_5A27( var_0 )
{
    if ( isdefined( var_0._id_7528 ) && var_0._id_7528 )
        return 0;

    return 1;
}

_id_19F6()
{
    if ( self._id_02B0 == "_all_timed" )
        return;

    if ( !isdefined( self._id_EEF0 ) )
        _id_6B5B();

    _id_4895( self._id_EEF0 );
    _id_4896();
    _id_FC0B( self._id_EF07 );
}

_id_19F7()
{
    _id_4889();
}

_id_19F8()
{
    scripts\mp\gametypes\br_quest_util::_id_C2F7( self._id_7BBD );
    _id_C45E();
}

_id_EDD0( var_0 )
{
    scripts\mp\gametypes\br_quest_util::_id_6FE3( self._id_045B, "br_mission_pickup_tablet" );
    var_1 = self._id_045B;
    var_2 = _id_4894( self );
    var_3 = _id_6FB9( var_1, var_2, var_0.health, self, "", var_0 );

    if ( !isdefined( var_3 ) )
    {
        _id_0A70::_id_D5DE( "br_assassination_notargets", undefined, 5 );
        var_4 = _func_020F();
        var_4._id_02EA = var_0._id_02EA;
        var_4._id_0054 = var_0._id_0054;
        var_4._id_8B20 = 0;

        if ( getdvar( "scr_br_gametype", "" ) == "dmz" )
        {
            var_5 = "mp/loot_set_cache_contents_dmz.csv";
            var_4 scripts\mp\gametypes\br_lootcache::_id_357C( 0, 1, "health", var_5 );
            var_4 scripts\mp\gametypes\br_lootcache::_id_357C( 0, 2, "ammo", var_5 );
            var_4 scripts\mp\gametypes\br_lootcache::_id_357C( 1, 1, "plunder", var_5 );
        }
        else
        {
            var_4 scripts\mp\gametypes\br_lootcache::_id_357C( 0, 1, "health" );
            var_4 scripts\mp\gametypes\br_lootcache::_id_357C( 0, 2, "ammo" );
            var_4 scripts\mp\gametypes\br_lootcache::_id_357C( 1, 1, "plunder" );
        }

        return;
    }

    var_3 _id_6FBF( self );
}

_id_6FBF( var_0 )
{
    var_1 = _func_020F();
    var_1._id_56BD = [];
    var_1._id_56BD[0] = self._id_EEF0;

    if ( isdefined( var_0 ) )
        var_1._id_56BD[1] = var_0;

    var_1._id_EA5E = self._id_EEF0._id_02BA;
    scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_EF07, "br_assassination_quest_start_target_team", var_1 );
    scripts\mp\gametypes\br_quest_util::_id_4B59( self._id_EEF0, "br_assassination_quest_start_target_player" );

    if ( !scripts\mp\gametypes\br_public::_id_87EB() )
        level thread scripts\mp\gametypes\br_public::_id_2BB8( "mission_ass_hunted", self._id_EF07, 1 );

    var_1._id_B96A = scripts\mp\gametypes\br_quest_util::_id_6C7A( scripts\mp\gametypes\br_quest_util::_id_6C84( self._id_7BBD ) );
    scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_7BBD, "br_assassination_quest_start_hunter_team", var_1 );

    if ( !scripts\mp\gametypes\br_public::_id_87EB() )
        level thread scripts\mp\gametypes\br_public::_id_2BB8( "mission_ass_accept", self._id_7BBD, 1 );

    if ( isdefined( var_0 ) )
    {
        scripts\mp\gametypes\br_quest_util::_id_4B59( var_0, "br_assassination_quest_start_tablet_finder", var_1 );
        scripts\mp\gametypes\br_quest_util::_id_4B60( self._id_7BBD, var_0, 6, scripts\mp\gametypes\br_quest_util::_id_6C76( "assassination" ) );
    }
}

_id_6FB9( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = scripts\mp\gametypes\br_quest_util::_id_4017( "assassination", var_0, var_2, var_5 );
    var_6._id_02B0 = var_4;

    if ( !isdefined( var_6._id_02B0 ) )
        var_6._id_02B0 = "";

    var_6 scripts\mp\gametypes\br_quest_util::_id_C2B2( var_0, var_3 );
    var_6._id_7BBD = var_0;
    var_6._id_EF07 = var_1;
    var_6._id_EEF9 = 0;
    var_6._id_7BBC = 0;
    var_6._id_EF08 = var_6 scripts\mp\gametypes\br_quest_util::_id_6E14( var_1 ).size;

    if ( !isdefined( var_6._id_EF07 ) )
    {
        _id_3135( var_6 );
        return undefined;
    }

    if ( var_6._id_02B0 != "_all" )
        var_6 scripts\mp\gametypes\br_quest_util::_id_BEAD( scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_BE9D, 4 );

    var_6 scripts\mp\gametypes\br_quest_util::_id_4016( 4, 3 );
    var_6 _id_6B5B( var_3 );

    if ( !isdefined( var_6._id_EEF0 ) )
    {
        _id_3135( var_6 );
        return undefined;
    }

    if ( var_6._id_02B0 == "_all_timed" )
        level._id_EF67[var_0]["hasFailed"] = 0;

    var_6 _id_4895( var_6._id_EEF0 );
    var_6 _id_4896();
    var_6 _id_FC0B( var_6._id_EF07 );
    var_6 _id_4889();
    scripts\mp\gametypes\br_quest_util::_id_10EF( "assassination", var_6 );
    scripts\mp\gametypes\br_quest_util::_id_E729( "assassination", var_3, var_0 );
    return var_6;
}

_id_3135( var_0 )
{
    if ( isdefined( var_0._id_9A96 ) )
        var_0 scripts\mp\gametypes\br_quest_util::_id_4767();

    var_0._id_034B = "no_locale";
    var_0 scripts\mp\gametypes\br_quest_util::_id_C2F7( var_0._id_7BBD );
}

_id_4894( var_0 )
{
    var_1 = var_0._id_045B;
    var_2 = undefined;
    var_3 = level._id_B758;
    var_4 = scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_15CA;
    var_5 = _id_0A7C::_id_6DAC( var_1, "players" );
    var_6 = _id_077B::_id_1B75( var_4, var_5 );
    var_7 = 0;
    var_8 = level._id_BEA1._id_BEAA["assassination"]._id_5A33[0];
    var_9 = 5000;
    var_10 = 30000;

    if ( getdvar( "scr_br_gametype", "" ) == "dmz" )
    {
        var_9 = level._id_BE92;
        var_10 = level._id_BE91;
    }

    while ( !isdefined( var_2 ) )
    {
        var_7 = var_7 + 5000;
        var_11 = _id_077B::_id_634A( var_0._id_02EA, var_3, var_6, undefined, var_9 + var_7, var_9 );
        var_11 = scripts\mp\gametypes\br_quest_util::_id_6E13( var_11, var_8 );

        if ( !isdefined( var_11 ) || var_11.size == 0 )
        {
            if ( var_7 > var_10 )
            {
                var_11 = _id_077B::_id_634A( var_0._id_02EA, var_3, var_6, undefined, undefined, undefined );
                var_11 = scripts\mp\gametypes\br_quest_util::_id_6E13( var_11, var_8 );

                if ( !isdefined( var_11 ) || var_11.size == 0 )
                    return undefined;
            }
            else
                continue;
        }

        var_12 = [];

        foreach ( var_14 in var_11 )
            var_12[var_14._id_045B] = scripts\mp\gametypes\br_quest_util::_id_6E14( var_14._id_045B, var_8 ).size;

        var_16 = scripts\mp\gametypes\br_quest_util::_id_6DA9( var_1, var_8 );
        var_17 = scripts\mp\gametypes\br_quest_util::_id_6E14( var_1, var_8 ).size;

        foreach ( var_25, var_19 in var_12 )
        {
            if ( !isdefined( var_2 ) )
            {
                var_2 = var_25;
                continue;
            }

            if ( getdvar( "scr_br_gametype", "" ) == "dmz" )
            {
                var_20 = scripts\mp\gametypes\br_gametype_dmz::_id_6DA8( var_2 );
                var_21 = scripts\mp\gametypes\br_gametype_dmz::_id_6DA8( var_25 );

                if ( var_21 > 100000 )
                {
                    if ( var_21 > var_20 )
                    {
                        var_2 = var_25;
                        continue;
                    }
                }
            }

            var_22 = abs( var_17 - var_19 );

            if ( var_22 < abs( var_17 - var_12[var_2] ) )
            {
                var_2 = var_25;
                continue;
            }
            else if ( var_22 > abs( var_17 - var_12[var_2] ) )
                continue;

            if ( var_19 > var_12[var_2] )
            {
                var_2 = var_25;
                continue;
            }
            else if ( var_19 < var_12[var_2] )
                continue;

            var_23 = scripts\mp\gametypes\br_quest_util::_id_6DA9( var_25, var_8 );
            var_24 = scripts\mp\gametypes\br_quest_util::_id_6DA9( var_2, var_8 );

            if ( distance2d( var_16, var_23 ) < distance2d( var_16, var_24 ) )
            {
                var_2 = var_25;
                continue;
            }
        }
    }

    if ( isdefined( var_2 ) )
        scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_15CA = _id_077B::_id_1B72( scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_15CA, _id_0A7C::_id_6DAC( var_2, "players" ) );

    return var_2;
}

_id_4893( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = scripts\mp\gametypes\br_quest_util::_id_6DA9( self._id_7BBD );

    foreach ( var_7 in _id_0A7C::_id_6DAC( var_0, "players" ) )
    {
        if ( !scripts\mp\gametypes\br_quest_util::_id_898C( var_7, _id_6A17( self._id_02B0 ) ) )
            continue;

        if ( scripts\mp\gametypes\br_public::_id_87EB() )
        {
            if ( _id_077B::_id_85A4( var_7._id_0375, "assassination_target" ) )
            {
                var_4 = var_7;
                break;
            }
        }

        if ( !isdefined( var_4 ) )
            var_4 = var_7;

        if ( getdvar( "scr_br_gametype", "" ) == "dmz" )
        {
            var_8 = var_7._id_B943;

            if ( isdefined( var_8 ) )
            {
                var_9 = distance2dsquared( var_1._id_02EA, var_7._id_02EA );

                if ( !isdefined( var_3 ) || var_9 <= var_3 )
                {
                    if ( !isdefined( var_2 ) || var_8 >= var_2 )
                    {
                        var_2 = var_8;
                        var_3 = var_9;
                        var_4 = var_7;
                    }
                }
            }

            continue;
        }

        if ( distance2d( var_5, var_7._id_02EA ) < distance2d( var_5, var_4._id_02EA ) )
            var_4 = var_7;
    }

    var_4._id_7528 = 0;
    self._id_EEF0 = var_4;
}

_id_4895( var_0 )
{
    var_1 = ( var_0._id_02EA[0], var_0._id_02EA[1], _id_693E() );

    if ( !scripts\mp\gametypes\br_public::_id_87EB() )
        var_1 = var_1 + _id_0777::_id_BFE2() * _func_01B7( _id_693D(), _id_693C() );

    scripts\mp\gametypes\br_quest_util::_id_A236( var_1 );
}

_id_4896()
{
    if ( scripts\mp\gametypes\br_public::_id_87EB() )
    {
        scripts\mp\gametypes\br_quest_util::_id_D5E1( level._id_9872 );
        self._id_F140 = 2;
    }
    else
    {
        var_0 = scripts\mp\gametypes\br_quest_util::_id_6E14( self._id_7BBD );

        if ( var_0.size == 0 )
        {
            scripts\mp\gametypes\br_quest_util::_id_D5E1( 3500 );
            self._id_F140 = 0;
        }
        else
        {
            var_1 = undefined;

            foreach ( var_3 in var_0 )
            {
                var_4 = distance2d( var_3._id_02EA, self._id_EEF0._id_02EA );

                if ( !isdefined( var_1 ) || var_4 < var_1 )
                    var_1 = var_4;
            }

            if ( var_1 > 5000 )
            {
                scripts\mp\gametypes\br_quest_util::_id_D5E1( 3500 );
                self._id_F140 = 0;
                return;
            }

            if ( var_1 > 2500 )
            {
                scripts\mp\gametypes\br_quest_util::_id_D5E1( 2000 );
                self._id_F140 = 1;
                return;
            }

            scripts\mp\gametypes\br_quest_util::_id_D5E1( 1500 );
            self._id_F140 = 2;
        }
    }
}

_id_4889()
{
    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_7BBD, "players" ) )
    {
        var_2 = var_1 scripts\mp\gametypes\br_public::_id_8976();
        var_3 = isdefined( var_1._id_19E8 ) && var_1._id_19E8;

        if ( var_2 && var_3 )
            var_1 _id_78CE( self );

        if ( !var_2 && !var_3 )
            var_1 _id_DC82( self );
    }

    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_EF07, "players" ) )
    {
        var_2 = var_1 scripts\mp\gametypes\br_public::_id_8976();
        var_3 = isdefined( var_1._id_1A00 ) && var_1._id_1A00;

        if ( var_2 && var_3 )
            var_1 _id_78CF();

        if ( !var_2 && !var_3 )
            var_1 _id_DC83( self._id_EEF0, self._id_F140 );
    }
}

_id_19EF()
{
    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_EF07, "players" ) )
        var_1 _meth_82F6( "ui_br_assassination_target_timer", self._id_9F88 );

    if ( self._id_02B0 == "_all_timed" )
        thread _id_1CB4();
}

_id_19EE()
{
    if ( self._id_02B0 == "_all_timed" )
    {
        _id_0A7C::_id_D704( self._id_EF07, "hasFailed", 1 );
        _id_1463( self._id_7BBD );
        scripts\mp\gametypes\br_quest_util::_id_C501();
    }
    else
    {
        scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_7BBD, "br_assassination_timer_expire_hunters_lose" );
        var_0 = scripts\mp\gametypes\br_quest_util::_id_6C84( self._id_EF07 );
        var_1 = scripts\mp\gametypes\br_quest_util::_id_6C79( "assassination", var_0 );
        self._id_C7FD = "_averted";
        var_2 = _func_020F();
        var_3 = scripts\mp\gametypes\br_quest_util::_id_6C76( "assassination" );
        var_4 = scripts\mp\gametypes\br_quest_util::_id_6C7E( scripts\mp\gametypes\br_quest_util::_id_6C7D( "assassination", self._id_C7FD, self._id_02B0 ) );
        var_2._id_ADB8 = scripts\mp\gametypes\br_quest_util::_id_ADBB( var_3, var_0, var_4 );
        scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_EF07, "br_assassination_timer_expire_targets_win", var_2 );
        level thread scripts\mp\gametypes\br_public::_id_2BB8( "mission_ass_fail", self._id_7BBD, 1 );
        level thread scripts\mp\gametypes\br_public::_id_2BB8( "mission_ass_hunted_timed_out", self._id_EF07, 1 );

        if ( getdvar( "scr_br_gametype", "" ) != "dmz" )
            scripts\mp\gametypes\br_quest_util::_id_6FBE( self._id_EF07, self._id_EEF0._id_02EA, self._id_EEF0._id_0054, self._id_C805 );
    }
}

_id_19F2( var_0, var_1 )
{
    if ( var_1 scripts\mp\gametypes\br_public::_id_8976() || var_0 scripts\mp\gametypes\br_public::_id_8976() )
        return;

    thread _id_19F4( var_1, var_0 );
}

_id_19F3( var_0 )
{
    thread _id_19F4( var_0 );
}

_id_19F4( var_0, var_1 )
{
    if ( self._id_02B0 == "_all_timed" && _id_0A7C::_id_6DAC( self._id_7BBD, "hasFailed" ) )
        return;

    if ( scripts\mp\gametypes\br_public::_id_87EB() )
    {
        if ( !_func_0107( var_0 ) )
            return;
    }

    if ( var_0._id_045B == self._id_EF07 )
    {
        if ( var_0 == self._id_EEF0 )
        {
            var_2 = var_0._id_1DB6;
            wait 0.75;
            var_3 = _func_020F();
            var_4 = scripts\mp\gametypes\br_quest_util::_id_6C84( self._id_7BBD );
            var_5 = scripts\mp\gametypes\br_quest_util::_id_6C76( "assassination" );

            if ( isdefined( var_1 ) && isdefined( var_1._id_045B ) && var_1._id_045B == self._id_7BBD )
            {
                var_6 = "br_assassination_complete_hunters_win";
                self._id_C7FD = "_target_killed";
                scripts\mp\gametypes\br_quest_util::_id_4B60( self._id_7BBD, var_1, 8, scripts\mp\gametypes\br_quest_util::_id_6C76( "assassination" ) );
            }
            else
            {
                var_6 = "br_assassination_complete_target_vanished";
                self._id_C7FD = "_target_vanished";
            }

            var_7 = scripts\mp\gametypes\br_quest_util::_id_6C7E( scripts\mp\gametypes\br_quest_util::_id_6C7D( "assassination", self._id_C7FD, self._id_02B0 ) );
            var_3._id_ADB8 = scripts\mp\gametypes\br_quest_util::_id_ADBB( var_5, var_4, var_7 );
            scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_7BBD, var_6, var_3 );

            if ( !scripts\mp\gametypes\br_public::_id_87EB() )
                level thread scripts\mp\gametypes\br_public::_id_2BB8( "mission_ass_success", self._id_7BBD, 1 );

            if ( isdefined( var_1 ) )
            {
                self._id_C803 = var_1._id_02EA;
                self._id_C7F8 = var_1._id_0054;
            }

            if ( isdefined( var_2 ) )
            {
                foreach ( var_9 in var_2 )
                {
                    if ( isdefined( var_9._id_045B ) && var_9._id_045B == self._id_7BBD )
                        scripts\mp\gametypes\br_quest_util::_id_C23C( var_9 );
                }
            }

            self._id_034B = "success";
            scripts\mp\gametypes\br_quest_util::_id_C501();
        }

        if ( self._id_02B0 == "_all_timed" )
        {
            if ( !isdefined( level._id_7245 ) || isdefined( level._id_7245 ) && !istrue( level._id_7245._id_DD05 ) )
            {
                foreach ( var_12 in _id_0A7C::_id_6DAC( self._id_7BBD, "players" ) )
                {
                    if ( istrue( var_12._id_82AC ) )
                        var_12 _id_07BF::_id_5AFD( "use_hold_revive_success", var_12 );

                    if ( !isai( var_12 ) )
                    {
                        var_12 scripts\mp\gametypes\br_pickups::_id_10F9( 1 );
                        var_12 thread scripts\mp\gametypes\br_gulag::_id_B6B3();
                    }
                }
            }
        }
    }
    else if ( var_0._id_045B == self._id_7BBD )
    {
        if ( !scripts\mp\gametypes\br_quest_util::_id_8A81( self._id_7BBD, _id_6A17( self._id_02B0 ) ) )
        {
            if ( getdvar( "scr_br_gametype", "" ) == "dmz" )
            {
                self._id_034B = "fail";
                scripts\mp\gametypes\br_quest_util::_id_C501();
            }
            else
            {
                self._id_C7FD = "_averted";
                var_14 = scripts\mp\gametypes\br_quest_util::_id_6FBE( self._id_EF07, var_0._id_02EA, var_0._id_0054, self._id_C805 );
                var_3 = _func_020F();
                var_3._id_B96A = scripts\mp\gametypes\br::_id_64F7( var_14["plunder"] );
                scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_EF07, "br_assassination_complete_targets_win", var_3 );
                self._id_034B = "fail";
                scripts\mp\gametypes\br_quest_util::_id_C501();
            }
        }
    }
}

_id_6B5B( var_0 )
{
    _id_4893( self._id_EF07, var_0 );
    _id_4895( self._id_EEF0 );
    _id_4896();
    _id_FC0A();
}

_id_C45E()
{
    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_7BBD, "players" ) )
        var_1 _id_78CE( self );

    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_EF07, "players" ) )
        var_1 _id_78CF();

    scripts\mp\gametypes\br_quest_util::_id_4767();
}

_id_6C34()
{
    if ( level._id_2A4A )
        return self._id_8D8C.size;
    else
        return self._id_024B;
}

_id_6A17( var_0 )
{
    switch ( var_0 )
    {
        case "_all":
        case "_all_timed":
            return level._id_BEA1._id_4591;
        default:
            return 0;
    }
}

_id_DC82( var_0 )
{
    self._id_19E8 = 1;
    scripts\mp\gametypes\br_quest_util::_id_F91E( "assassination" + var_0._id_02B0 );
    var_0 scripts\mp\gametypes\br_quest_util::_id_DCD7( self );
}

_id_78CE( var_0 )
{
    self._id_19E8 = 0;
    scripts\mp\gametypes\br_quest_util::_id_F91B();
    var_0 scripts\mp\gametypes\br_quest_util::_id_78F8( self );
}

_id_FC09( var_0, var_1 )
{
    if ( isdefined( self._id_1A00 ) && self._id_1A00 )
        var_2 = var_0 getentitynumber();
    else
        var_2 = -1;

    var_2 = var_0 getentitynumber();
    var_2 = var_2 + 1;
    var_3 = var_1 << 8 | var_2;
    self _meth_82F6( "ui_br_assassination_target", var_3 );
}

_id_FC0B( var_0 )
{
    foreach ( var_2 in _id_0A7C::_id_6DAC( self._id_EF07, "players" ) )
        var_2 _id_FC09( self._id_EEF0, self._id_F140 );
}

_id_DC83( var_0, var_1 )
{
    self._id_1A00 = 1;
    _id_FC09( var_0, var_1 );
}

_id_78CF()
{
    self._id_1A00 = 0;
    self _meth_82F6( "ui_br_assassination_target", 0 );
}

_id_FC0A()
{
    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_7BBD, "players" ) )
    {
        var_1 _id_DC82( self );
        var_1 scripts\mp\gametypes\br_quest_util::_id_F91D( self._id_EEF0 getentitynumber() );
    }

    foreach ( var_1 in _id_0A7C::_id_6DAC( self._id_EF07, "players" ) )
        var_1 _id_DC83( self._id_EEF0, self._id_F140 );
}

_id_1CB4()
{
    self notify( "assassinationTimeWarning" );
    self endon( "assassinationTimeWarning" );
    self endon( "removed" );
    var_0 = [ 300, 240, 180, 120, 90, 60, 30, 10 ];

    foreach ( var_2 in var_0 )
    {
        var_3 = ( self._id_9F88 - gettime() ) / 1000;
        var_4 = var_3 - var_2;

        if ( var_4 < 0 )
            continue;

        wait( var_4 );
        var_5 = int( var_2 / 60 );
        var_6 = scripts\mp\gametypes\br_quest_util::_id_6E13( _id_0A7C::_id_6DAC( self._id_7BBD, "players" ), _id_6A17( self._id_02B0 ) );

        foreach ( var_8 in var_6 )
        {
            var_9 = gettime() + var_2 * 1000;
            var_10 = 5;

            if ( var_2 <= 20 )
                var_10 = var_2;

            var_8 _id_0A70::_id_D5DE( "br_assassin_mission_time_warning", var_9, var_10 );

            if ( var_5 >= 2 )
            {
                var_8 iprintlnbold( &"MP_BR_INGAME/MISSION_ASSASSIN_2_TIME_WARNING_MIN", var_5 );
                continue;
            }

            var_8 iprintlnbold( &"MP_BR_INGAME/MISSION_ASSASSIN_2_TIME_WARNING_SEC", var_2 );
        }
    }
}

_id_145D()
{
    level thread _id_145C();
}

_id_145C()
{
    _id_07A8::_id_60A3( "prematch_done" );
    var_0 = getdvarint( "scr_br_all_assassin_version", 0 );

    if ( !var_0 )
        return;

    var_1 = getdvarint( "scr_br_all_assassin_wait_time", 120 );
    _id_4AD3();
    wait( var_1 );
    _id_145B( var_0 );
}

_id_145B( var_0 )
{
    var_1 = _func_020F();
    var_1._id_EF7E = [];
    var_1._id_9000 = [];
    var_1._id_C719 = int( getdvarfloat( "scr_br_all_assassin_rest_time", 10 ) * 1000 );

    if ( var_0 == 1 )
        var_1._id_02B0 = "_all";
    else if ( var_0 == 2 )
        var_1._id_02B0 = "_all_timed";
    else
    {

    }

    if ( var_1._id_02B0 == "_all_timed" )
        var_1 _id_145F();
    else
        var_1 _id_145E();

    var_1 thread _id_1459();
    var_1 thread _id_1467();
}

_id_145A()
{
    var_0 = ( 0, 0, 0 );
    var_1 = _id_1462();
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        var_5 = undefined;
        var_6 = _id_0A7C::_id_6DAC( var_4, "players" );

        foreach ( var_8 in var_6 )
        {
            if ( var_8 scripts\mp\gametypes\br_public::_id_8976() )
                continue;

            if ( var_8 scripts\mp\gametypes\br_public::_id_8971() )
            {
                var_5 = var_8;
                break;
            }

            if ( !isdefined( var_5 ) )
                var_5 = var_8;
        }

        if ( !isdefined( var_5 ) )
            continue;

        var_10 = _func_020F();
        var_10._id_045B = var_4;
        var_10._id_B9F0 = var_5._id_02EA;
        var_0 = var_0 + var_10._id_B9F0;
        var_2[var_2.size] = var_10;
    }

    if ( var_2.size < 2 )
        return var_2;

    var_0 = var_0 / var_2.size;

    foreach ( var_10 in var_2 )
    {
        var_13 = var_10._id_B9F0 - var_0;
        var_10._id_E03A = _func_025B( var_13 )[1];
    }

    var_2 = _id_0A78::_id_BEE9( var_2, ::_id_1461 );
    return var_2;
}

_id_145E()
{
    var_0 = _id_145A();
    var_1 = getdvarint( "scr_br_all_assassin_group_size", 150 );
    var_2 = var_0.size;

    if ( isdefined( var_1 ) )
        var_1 = int( _func_0148( var_1, var_2 ) );
    else
        var_1 = var_2;

    var_3 = int( var_2 / var_1 );
    var_4 = var_2 % var_1;
    var_5 = [];

    for ( var_6 = 0; var_6 < var_3; var_6++ )
        var_5[var_6] = var_1;

    for ( var_6 = 0; var_6 < var_4; var_6++ )
        var_5[var_6 % var_3]++;

    var_7 = 0;

    for ( var_6 = 0; var_6 < var_5.size; var_6++ )
    {
        var_1 = var_5[var_6];

        for ( var_8 = 0; var_8 < var_1; var_8++ )
        {
            var_9 = var_0[var_7 + var_8]._id_045B;
            var_10 = _id_10FA2( var_8 - 1, var_1 );
            var_11 = _id_10FA2( var_8 + 1, var_1 );
            var_12 = var_0[var_7 + var_10]._id_045B;
            var_13 = var_0[var_7 + var_11]._id_045B;
            var_14 = _func_020F();
            var_14._id_EE9E = var_12;
            var_14._id_EEA8 = var_13;
            self._id_EF7E[var_9] = var_14;
        }

        var_7 = var_7 + var_1;
    }
}

_id_145F()
{
    var_0 = getdvarfloat( "scr_br_all_assassin_max_dist", 10000 );
    var_1 = _id_145A();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2]._id_045B;

        if ( isdefined( self._id_EF7E[var_3] ) )
            continue;

        for ( var_4 = 0; var_4 < var_1.size - 1; var_4++ )
        {
            if ( var_4 % 2 )
                var_5 = int( -0.5 * var_4 - 0.5 );
            else
                var_5 = int( 0.5 * var_4 + 1 );

            var_6 = _id_10FA2( var_2 + var_5, var_1.size );
            var_7 = var_1[var_6]._id_045B;

            if ( isdefined( self._id_EF7E[var_7] ) )
                continue;

            var_8 = var_1[var_6]._id_B9F0;
            var_9 = var_1[var_2]._id_B9F0;

            if ( distance( var_8, var_9 ) > var_0 )
                continue;

            var_10 = _func_020F();
            var_10._id_EE9E = var_7;
            var_10._id_EEA8 = var_7;
            self._id_EF7E[var_3] = var_10;
            var_11 = _func_020F();
            var_11._id_EE9E = var_3;
            var_11._id_EEA8 = var_3;
            self._id_EF7E[var_7] = var_11;
            break;
        }
    }
}

_id_1462()
{
    var_0 = gettime();
    var_1 = [];

    foreach ( var_5, var_3 in level._id_EF67 )
    {
        if ( isdefined( self._id_EF7E[var_5] ) )
            continue;

        var_4 = self._id_9000[var_5];

        if ( isdefined( var_4 ) && var_0 < var_4 + self._id_C719 )
            continue;

        if ( !scripts\mp\gametypes\br_quest_util::_id_8A81( var_5, _id_6A17( self._id_02B0 ) ) )
            continue;

        var_1[var_1.size] = var_5;
    }

    return var_1;
}

_id_1460( var_0 )
{
    var_0 waittill( "removed" );
    self._id_9000[var_0._id_7BBD] = gettime();
    self notify( "update" );
}

_id_1467()
{
    var_0 = getdvarint( "scr_br_all_assassin_update_delay", 10 );

    for (;;)
    {
        _id_077B::_id_108F3( "update", var_0 );

        if ( self._id_02B0 == "_all_timed" )
        {
            _id_1465();
            continue;
        }

        _id_1464();
    }
}

_id_1465()
{
    var_0 = [];

    foreach ( var_3, var_2 in self._id_EF7E )
    {
        if ( !isdefined( level._id_BEA1._id_BEAA["assassination"]._id_82E6[var_3] ) )
            var_0[var_0.size] = var_3;
    }

    foreach ( var_3 in var_0 )
        self._id_EF7E[var_3] = undefined;

    _id_145F();
    _id_1459();
}

_id_1464()
{
    var_0 = [];

    foreach ( var_3, var_2 in self._id_EF7E )
    {
        if ( !isdefined( level._id_BEA1._id_BEAA["assassination"]._id_82E6[var_3] ) )
        {
            if ( var_2._id_EEA8 == var_2._id_EE9E )
                var_0[var_0.size] = var_3;
        }
    }

    foreach ( var_3 in var_0 )
        self._id_EF7E[var_3] = undefined;

    var_6 = _id_1462();
    var_7 = var_6.size;
    var_0 = [];

    foreach ( var_3, var_2 in self._id_EF7E )
    {
        if ( !scripts\mp\gametypes\br_quest_util::_id_8A81( var_3, _id_6A17( self._id_02B0 ) ) )
        {
            if ( var_7 > 0 )
            {
                var_7--;
                var_9 = var_6[var_7];
                self._id_EF7E[var_9] = _func_020F();
                self._id_EF7E[var_9]._id_EEA8 = var_2._id_EEA8;
                self._id_EF7E[var_9]._id_EE9E = var_2._id_EE9E;
                self._id_EF7E[var_2._id_EE9E]._id_EEA8 = var_9;
                self._id_EF7E[var_2._id_EEA8]._id_EE9E = var_9;
            }
            else
            {
                self._id_EF7E[var_2._id_EE9E]._id_EEA8 = var_2._id_EEA8;
                self._id_EF7E[var_2._id_EEA8]._id_EE9E = var_2._id_EE9E;
            }

            var_0[var_0.size] = var_3;
        }
    }

    foreach ( var_3 in var_0 )
        self._id_EF7E[var_3] = undefined;

    if ( var_7 >= 2 )
    {
        for ( var_12 = 0; var_12 < var_7; var_12++ )
        {
            var_3 = var_6[var_12];
            var_13 = _id_10FA2( var_12 - 1, var_7 );
            var_14 = _id_10FA2( var_12 + 1, var_7 );
            var_15 = var_6[var_13];
            var_16 = var_6[var_14];
            var_17 = _func_020F();
            var_17._id_EE9E = var_15;
            var_17._id_EEA8 = var_16;
            self._id_EF7E[var_3] = var_17;
        }
    }

    if ( self._id_EF7E.size < 2 )
        return;

    _id_1459();
}

_id_1459()
{
    foreach ( var_6, var_1 in self._id_EF7E )
    {
        if ( isdefined( level._id_BEA1._id_BEAA["assassination"]._id_82E6[var_6] ) )
            continue;

        var_2 = var_6;
        var_3 = var_1._id_EEA8;
        var_4 = "all_" + var_2 + "_" + var_3;
        var_5 = _id_6FB9( var_2, var_3, var_4, undefined, self._id_02B0 );

        if ( isdefined( var_5 ) )
        {
            var_5 _id_6FBF();

            if ( self._id_02B0 == "_all_timed" )
                var_5 thread _id_1466();

            thread _id_1460( var_5 );
        }
    }
}

_id_1466()
{
    self endon( "removed" );
    var_0 = getdvarfloat( "scr_br_all_assassin_circle_start_update", 10 );
    var_1 = getdvarfloat( "scr_br_all_assassin_circle_end_update", 1.0 );

    for (;;)
    {
        _id_19F6();
        _id_4895( self._id_EEF0 );
        var_2 = _id_6C8A();
        var_3 = var_0 - var_1;
        wait( var_3 * var_2 + var_1 );
    }
}

_id_1461( var_0, var_1 )
{
    return var_0._id_E03A <= var_1._id_E03A;
}

_id_1463( var_0 )
{
    var_1 = scripts\mp\gametypes\br_quest_util::_id_6E13( _id_0A7C::_id_6DAC( var_0, "players" ) );

    foreach ( var_3 in var_1 )
    {
        if ( isai( var_3 ) )
            var_3 _meth_81F9( var_3._id_02EA, var_3 );
    }

    scripts\mp\gametypes\br_quest_util::_id_4B61( var_0, "br_assassination_timer_expire_hunters_lose" );
    level thread scripts\mp\gametypes\br_public::_id_2BB8( "mission_ass_fail", var_0, 1 );
}

_id_10FA2( var_0, var_1 )
{
    return ( var_0 % var_1 + var_1 ) % var_1;
}

_id_4AD3()
{
    scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_4AD4 = 1;
}

_id_4ABC()
{
    scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_4ABE = 1;
}

_id_34F7()
{
    return isdefined( scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_4AD4 ) && scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_4AD4;
}

_id_34F6()
{
    return isdefined( scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_4ABE ) && scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_4ABE;
}

_id_6C8A()
{
    var_0 = scripts\mp\gametypes\br_quest_util::_id_6C75( "assassination" )._id_BE9D;
    var_1 = ( self._id_9F88 - gettime() ) / 1000;
    var_2 = clamp( var_1 / var_0, 0.0, 1.0 );
    return var_2;
}

_id_693E()
{
    if ( self._id_02B0 == "_all_timed" )
    {
        var_0 = getdvarfloat( "scr_br_all_assassin_circle_start_size", 3000.0 );
        var_1 = getdvarfloat( "scr_br_all_assassin_circle_end_size", 200.0 );
        var_2 = _id_6C8A();
        var_3 = var_0 - var_1;
        return var_3 * var_2 + var_1;
    }
    else
        return 2000;
}

_id_693D()
{
    if ( self._id_02B0 == "_all_timed" )
        return 0;
    else
        return 100;
}

_id_693C()
{
    if ( self._id_02B0 == "_all_timed" )
    {
        var_0 = _id_693E();
        return var_0 * 0.5;
    }
    else
        return 900;
}
