// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    if ( _id_06BB::_id_8615() )
        return;

    level._id_27D0 = 0;
    _id_D78A();
    _id_D765( 3, 5 );
    level thread _id_09D1::_id_2834( _id_09D1::_id_28E9 );
}

_id_D78A()
{
    level._id_2777["crate_can_use"] = ::_id_3E4D;
    level._id_2777["gametype_think"] = ::_id_2757;
    level._id_2777["should_start_cautious_approach"] = ::_id_DAD7;
    level._id_2777["leader_dialog"] = ::_id_2755;

    if ( !level._id_27D0 )
        level._id_2777["get_watch_node_chance"] = ::_id_2754;
}

_id_3E4D( var_0 )
{
    if ( _func_0102( self ) && !isdefined( var_0._id_296B ) )
        return 0;

    if ( !_id_0A67::_id_8A7B( self ) )
        return 1;

    return _id_09D1::_id_27E5();
}

_id_A0BA()
{
    self notify( "monitor_flag_control" );
    self endon( "monitor_flag_control" );
    self endon( "death" );
    level endon( "game_ended" );

    for (;;)
    {
        wait 1;
        var_0 = scripts\mp\gametypes\dom::_id_6A26();

        if ( var_0 != "neutral" )
        {
            var_1 = _func_00F5( self._id_047A._id_02EA );

            if ( isdefined( var_1 ) )
                _func_002C( var_1, var_0 );
        }
    }
}

_id_A0BB()
{
    self notify( "monitor_flag_ownership" );
    self endon( "monitor_flag_ownership" );
    self endon( "death" );
    level endon( "game_ended" );
    var_0 = scripts\mp\gametypes\dom::_id_6A26();

    for (;;)
    {
        var_1 = scripts\mp\gametypes\dom::_id_6A26();

        if ( var_1 != var_0 )
            level notify( "flag_changed_ownership" );

        var_0 = var_1;
        wait 0.05;
    }
}

_id_D765( var_0, var_1 )
{
    _id_09D1::_id_28F5();
    var_2 = _id_278F();

    if ( var_2.size > 3 )
    {
        while ( !isdefined( level._id_F01E ) )
            wait 0.05;

        var_3 = [];

        foreach ( var_5 in var_2 )
        {
            if ( !isdefined( var_3[var_5._id_F032] ) )
                var_3[var_5._id_F032] = [];

            var_3[var_5._id_F032] = _id_077B::_id_1B63( var_3[var_5._id_F032], var_5 );
        }

        foreach ( var_9, var_8 in var_3 )
        {
            level._id_54FE = 0;
            _id_26EF( var_8 );
            scripts\mp\bots\bots_gametype_common::_id_26EB( var_8, var_9 + "_flag", level._id_27D0 );
        }
    }
    else
    {
        scripts\mp\bots\bots_gametype_common::_id_26EB( var_2, "flag", level._id_27D0 );
        _id_26EF( var_2 );
        thread _id_28F4( var_2 );
    }

    foreach ( var_5 in var_2 )
    {
        var_5 thread _id_A0BA();
        var_5 thread _id_A0BB();

        if ( var_5._id_A8CE != "_a" && var_5._id_A8CE != "_b" && var_5._id_A8CE != "_c" )
        {

        }

        var_5._id_A565 = scripts\mp\bots\bots_gametype_common::_id_27B2( var_5._id_047A );
        var_5._id_8F58["allies"] = 0;
        var_5._id_8F58["axis"] = 0;
    }

    level._id_2756 = [];
    level._id_2756["axis"] = [];
    level._id_2756["allies"] = [];
    level._id_278A = 1;
}

_id_28F4( var_0 )
{
    level endon( "game_ended" );
    level waittill( "dom_flags_moved" );
    scripts\mp\bots\bots_gametype_common::_id_26EB( var_0, "flag", level._id_27D0, 1 );
    _id_26EF( var_0 );

    foreach ( var_2 in var_0 )
        var_2._id_A565 = scripts\mp\bots\bots_gametype_common::_id_27B2( var_2 );

    foreach ( var_5 in level._id_AE69 )
    {
        if ( _id_0A67::_id_872A( var_5 ) )
            var_5._id_5E3B = 1;
    }
}

_id_278F()
{
    if ( isdefined( level._id_1441 ) )
        return level._id_1441;
    else
        return level._id_A8D5;
}

_id_26EF( var_0 )
{
    if ( !isdefined( level._id_5BEA ) )
        level._id_5BEA = [];

    var_1 = [];
    var_2 = 0;

    foreach ( var_4 in var_0 )
    {
        var_1[var_2] = var_4;
        var_2++;
    }

    for ( var_2 = 0; var_2 < var_1.size - 1; var_2++ )
    {
        for ( var_6 = var_2 + 1; var_6 < var_1.size; var_6++ )
        {
            var_7 = distance( var_1[var_2]._id_047A._id_02EA, var_1[var_6]._id_047A._id_02EA );
            var_8 = _id_6489( var_1[var_2] );
            var_9 = _id_6489( var_1[var_6] );
            level._id_5BEA[var_8][var_9] = var_7;
            level._id_5BEA[var_9][var_8] = var_7;
        }
    }
}

_id_DAD7( var_0 )
{
    if ( var_0 )
    {
        if ( self._id_414D scripts\mp\gametypes\dom::_id_6A26() == "neutral" && _id_5BF0( self._id_414D ) )
        {
            var_1 = _id_63BB( self._id_9035._id_02EA );

            if ( var_1 == self._id_414D )
                return 0;
            else
            {
                var_2 = _id_6605( var_1, self._id_414D );
                var_3 = distancesquared( var_1._id_047A._id_02EA, self._id_414D._id_047A._id_02EA );
                var_4 = distancesquared( var_2._id_047A._id_02EA, self._id_414D._id_047A._id_02EA );

                if ( var_3 < var_4 )
                    return 0;
            }
        }
    }

    return _id_09D0::_id_DAD6( var_0 );
}

_id_2752()
{
    return 0;
}

_id_2753()
{
    return 0;
}

_id_2757()
{
    self notify( "bot_dom_think" );
    self endon( "bot_dom_think" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );

    while ( !isdefined( level._id_278A ) )
        wait 0.05;

    self._id_5E3B = 0;
    self._id_A439 = 0;
    self._id_A471 = 0;
    self _meth_8053( "separation", 0 );
    self _meth_8053( "grenade_objectives", 1 );
    self _meth_8053( "use_obj_path_style", 1 );

    for (;;)
    {
        _id_09D1::_id_28E6();
        var_0 = gettime();

        if ( var_0 > self._id_A471 )
        {
            self._id_A471 = gettime() + 10000;
            self._id_E9F9 = self _meth_802F( "strategyLevel" );
        }

        if ( var_0 > self._id_A439 || self._id_5E3B )
        {
            if ( _id_DA7C() )
                self._id_A439 = var_0 + 5000;
            else
            {
                self._id_5E3B = 0;
                _id_270D();
                self._id_A439 = var_0 + _func_01B9( 30000, 45000 );
            }
        }

        _id_077B::_id_108F3( "needs_new_flag_goal", 1.0 );
    }
}

_id_DA7C()
{
    if ( self._id_5E3B )
        return 0;

    if ( !_id_09D1::_id_27DB() )
        return 0;

    if ( self._id_414D scripts\mp\gametypes\dom::_id_6A26() == self._id_045B )
        return 0;

    var_0 = _id_6488();

    if ( distancesquared( self._id_02EA, self._id_414D._id_047A._id_02EA ) < var_0 * 2 * ( var_0 * 2 ) )
    {
        var_1 = _id_6324( self._id_045B );

        if ( var_1.size == 2 && !_id_077B::_id_1B78( var_1, self._id_414D ) && !_id_26D3() )
            return 0;

        return 1;
    }

    return 0;
}

_id_6612()
{
    return level._id_2756[self._id_045B];
}

_id_74ED()
{
    var_0 = _id_6612();
    return var_0.size > 0;
}

_id_5BEF( var_0 )
{
    return !_id_5BF0( var_0 );
}

_id_5BF0( var_0 )
{
    return var_0._id_5BA6;
}

_id_270D()
{
    var_0 = undefined;
    var_1 = [];
    var_2 = [];
    var_3 = !istrue( level._id_BB61 );
    var_4 = _id_6612();

    if ( var_4.size > 0 )
        var_5 = var_4;
    else
        var_5 = level._id_A8D5;

    foreach ( var_0 in var_5 )
    {
        var_7 = var_0 scripts\mp\gametypes\dom::_id_6A26();

        if ( var_3 )
        {
            if ( _id_5BEF( var_0 ) )
                var_3 = 0;
            else
            {

            }
        }

        if ( var_7 != self._id_045B )
        {
            var_1[var_1.size] = var_0;
            continue;
        }

        var_2[var_2.size] = var_0;
    }

    var_9 = undefined;

    if ( var_1.size == 3 )
        var_9 = 1;
    else if ( var_1.size == 2 )
    {
        if ( var_2.size == 1 )
        {
            if ( !_id_28AF( var_2[0], 1 ) )
                var_9 = 1;
            else
                var_9 = !_id_28AE( 0.34 );

            if ( _id_09D1::_id_27A3( self._id_045B ) == 1 )
                var_9 = 1;
        }
        else if ( var_2.size == 0 )
            var_9 = 1;
    }
    else if ( var_1.size == 1 )
    {
        if ( var_2.size == 2 )
        {
            if ( _id_26D3() )
            {
                if ( !_id_28AF( var_2[0], 2 ) && !_id_28AF( var_2[1], 2 ) )
                    var_9 = 1;
                else if ( self._id_E9F9 == 0 )
                    var_9 = !_id_28AE( 0.34 );
                else
                    var_9 = !_id_28AE( 0.5 );
            }
            else
                var_9 = 0;
        }
        else if ( var_2.size == 1 )
        {
            if ( !_id_28AF( var_2[0], 1 ) )
                var_9 = 1;
            else
                var_9 = !_id_28AE( 0.34 );
        }
        else if ( var_2.size == 0 )
            var_9 = 1;
    }
    else if ( var_1.size == 0 )
        var_9 = 0;

    if ( var_9 )
    {
        if ( var_1.size > 1 )
        {
            var_10 = [];

            foreach ( var_12 in var_1 )
                var_10[var_10.size] = var_12._id_047A;

            var_14 = _id_077B::_id_634A( self._id_02EA, var_10 );
            var_15 = [];

            foreach ( var_17 in var_14 )
            {
                foreach ( var_19 in level._id_A8D5 )
                {
                    if ( var_19._id_047A == var_17 )
                        var_15[var_15.size] = var_19;
                }
            }

            var_14 = var_15;
        }
        else
            var_14 = var_1;

        if ( var_3 && !_id_74ED() )
        {
            var_22 = _id_65D6( var_14[0], 1 );

            if ( var_22 < _id_9E8B() )
                var_23 = 0;
            else
            {
                var_24 = 20;
                var_25 = 65;
                var_26 = 15;

                if ( self._id_E9F9 == 0 )
                {
                    var_24 = 50;
                    var_25 = 25;
                    var_26 = 25;
                }
                else if ( self._id_E9F9 == 1 )
                {
                    var_24 = 40;
                    var_25 = 40;
                    var_26 = 20;
                }

                var_27 = _func_01B8( 100 );

                if ( var_27 < var_24 )
                    var_23 = 0;
                else if ( var_27 < var_24 + var_25 )
                    var_23 = 1;
                else
                    var_23 = 2;
            }

            var_28 = undefined;

            if ( var_23 == 0 )
                var_28 = "critical";

            _id_31FB( var_14[var_23], var_28 );
            return;
        }

        if ( var_14.size == 1 )
            var_0 = var_14[0];
        else if ( distancesquared( var_14[0]._id_047A._id_02EA, self._id_02EA ) < 102400 )
            var_0 = var_14[0];
        else
        {
            var_29 = [];
            var_30 = [];

            for ( var_31 = 0; var_31 < var_14.size; var_31++ )
            {
                var_32 = distance( var_14[var_31]._id_047A._id_02EA, self._id_02EA );
                var_30[var_31] = var_32;
                var_29[var_31] = var_32;
            }

            if ( var_2.size == 1 )
            {
                var_33 = 1.5;

                for ( var_31 = 0; var_31 < var_29.size; var_31++ )
                    var_29[var_31] = var_29[var_31] + level._id_5BEA[_id_6489( var_14[var_31] )][_id_6489( var_2[0] )] * var_33;
            }

            if ( self._id_E9F9 == 0 )
            {
                var_27 = _func_01B8( 100 );

                if ( var_27 < 50 )
                    var_0 = var_14[0];
                else if ( var_27 < 50 + 50 / ( var_14.size - 1 ) )
                    var_0 = var_14[1];
                else
                    var_0 = var_14[2];
            }
            else if ( var_29.size == 2 )
            {
                var_34[0] = 50;
                var_34[1] = 50;

                for ( var_31 = 0; var_31 < var_14.size; var_31++ )
                {
                    if ( var_29[var_31] < var_29[1 - var_31] )
                    {
                        var_34[var_31] = var_34[var_31] + 20;
                        var_34[1 - var_31] = var_34[1 - var_31] - 20;
                    }

                    if ( var_30[var_31] < 640 )
                    {
                        var_34[var_31] = var_34[var_31] + 15;
                        var_34[1 - var_31] = var_34[1 - var_31] - 15;
                    }

                    if ( var_14[var_31] scripts\mp\gametypes\dom::_id_6A26() == "neutral" )
                    {
                        var_34[var_31] = var_34[var_31] + 15;
                        var_34[1 - var_31] = var_34[1 - var_31] - 15;
                    }
                }

                var_27 = _func_01B8( 100 );

                if ( var_27 < var_34[0] )
                    var_0 = var_14[0];
                else
                    var_0 = var_14[1];
            }
            else if ( var_29.size == 3 )
            {
                var_34[0] = 34;
                var_34[1] = 33;
                var_34[2] = 33;

                for ( var_31 = 0; var_31 < var_14.size; var_31++ )
                {
                    var_35 = ( var_31 + 1 ) % 3;
                    var_36 = ( var_31 + 2 ) % 3;

                    if ( var_29[var_31] < var_29[var_35] && var_29[var_31] < var_29[var_36] )
                    {
                        var_34[var_31] = var_34[var_31] + 36;
                        var_34[var_35] = var_34[var_35] - 18;
                        var_34[var_36] = var_34[var_36] - 18;
                    }

                    if ( var_30[var_31] < 640 )
                    {
                        var_34[var_31] = var_34[var_31] + 15;
                        var_34[var_35] = var_34[var_35] - 7;
                        var_34[var_36] = var_34[var_36] - 8;
                    }

                    if ( var_14[var_31] scripts\mp\gametypes\dom::_id_6A26() == "neutral" )
                    {
                        var_34[var_31] = var_34[var_31] + 15;
                        var_34[var_35] = var_34[var_35] - 7;
                        var_34[var_36] = var_34[var_36] - 8;
                    }
                }

                var_27 = _func_01B8( 100 );

                if ( var_27 < var_34[0] )
                    var_0 = var_14[0];
                else if ( var_27 < var_34[0] + var_34[1] )
                    var_0 = var_14[1];
                else
                    var_0 = var_14[2];
            }
        }
    }
    else
    {
        if ( var_2.size > 1 )
        {
            var_10 = [];

            foreach ( var_38 in var_2 )
                var_10[var_10.size] = var_38._id_047A;

            var_40 = _id_077B::_id_634A( self._id_02EA, var_10 );
            var_15 = [];

            foreach ( var_17 in var_40 )
            {
                foreach ( var_19 in level._id_A8D5 )
                {
                    if ( var_19._id_047A == var_17 )
                        var_15[var_15.size] = var_19;
                }
            }

            var_40 = var_15;
        }
        else
            var_40 = var_2;

        foreach ( var_46 in var_40 )
        {
            if ( _id_28AF( var_46, var_2.size ) )
            {
                var_0 = var_46;
                break;
            }
        }

        if ( !isdefined( var_0 ) )
        {
            if ( self._id_E9F9 == 0 )
                var_0 = var_2[0];
            else if ( var_40.size == 2 )
            {
                var_48 = _id_6605( var_40[0], var_40[1] );
                var_10 = [];

                foreach ( var_50 in var_40 )
                    var_10[var_10.size] = var_50._id_047A;

                var_52 = _id_077B::_id_634A( var_48._id_047A._id_02EA, var_10 );
                var_15 = [];

                foreach ( var_17 in var_52 )
                {
                    foreach ( var_19 in level._id_A8D5 )
                    {
                        if ( var_19._id_047A == var_17 )
                            var_15[var_15.size] = var_19;
                    }
                }

                var_52 = var_15;
                var_27 = _func_01B8( 100 );

                if ( var_27 < 70 )
                    var_0 = var_52[0];
                else
                    var_0 = var_52[1];
            }
            else
                var_0 = var_40[0];
        }
    }

    if ( var_9 )
        _id_31FB( var_0 );
    else
        _id_45BB( var_0 );
}

_id_9E8B()
{
    var_0 = _id_09D1::_id_27A3( self._id_045B );
    return _func_0037( var_0 / 3 );
}

_id_26D3()
{
    if ( self._id_E9F9 == 0 )
        return 1;

    var_0 = _id_6612();

    if ( var_0.size == 3 )
        return 1;

    var_1 = _id_07AE::_id_0BE6( _id_077B::_id_6460( self._id_045B ) );
    var_2 = _id_07AE::_id_0BE6( self._id_045B );
    var_3 = 200 - var_1;
    var_4 = 200 - var_2;
    var_5 = var_4 * 0.5 > var_3;
    return var_5;
}

_id_28AE( var_0 )
{
    if ( _func_01B6( 1 ) < var_0 )
        return 1;

    var_1 = level._id_285E[self._id_B010];

    if ( var_1 == "stationary" )
        return 1;
    else if ( var_1 == "active" )
        return 0;
}

_id_31FB( var_0, var_1, var_2 )
{
    self._id_414D = var_0;

    if ( _id_2753() )
    {
        var_3["override_goal_type"] = var_1;
        var_3["entrance_points_index"] = _id_6489( var_0 );
        _id_09D0::_id_2873( var_0._id_047A._id_02EA, _id_648A(), var_3 );
    }
    else
    {
        var_3["override_goal_type"] = var_1;
        var_3["entrance_points_index"] = _id_6489( var_0 );
        _id_09D0::_id_2704( var_0._id_047A._id_02EA, var_0._id_A565, var_0._id_047A, var_3 );
    }

    if ( !isdefined( var_2 ) || !var_2 )
        thread _id_A0BC( var_0 );
}

_id_45BB( var_0 )
{
    self._id_414D = var_0;

    if ( _id_2752() )
    {
        var_1["entrance_points_index"] = _id_6489( var_0 );
        _id_09D0::_id_2704( var_0._id_047A._id_02EA, var_0._id_A565, var_0._id_047A, var_1 );
    }
    else
    {
        var_1["entrance_points_index"] = _id_6489( var_0 );
        var_1["nearest_node_to_center"] = var_0._id_A3E5;
        _id_09D0::_id_2873( var_0._id_047A._id_02EA, _id_648A(), var_1 );
    }

    thread _id_A0BC( var_0 );
}

_id_6488()
{
    if ( !isdefined( level._id_31FC ) )
        level._id_31FC = 158;

    return level._id_31FC;
}

_id_648A()
{
    if ( !isdefined( level._id_BDB1 ) )
    {
        var_0 = self _meth_8040();
        var_1 = ( var_0[0] + var_0[1] ) / 2;
        level._id_BDB1 = _func_0148( 1000, var_1 / 3.5 );
    }

    return level._id_BDB1;
}

_id_2755( var_0, var_1 )
{
    if ( _func_0121( var_0, "losing" ) && var_0 != "losing_score" && var_0 != "losing_time" && var_0 != "gamestate_domlosing" )
    {
        var_2 = _func_00D6( var_0, var_0.size - 2 );
        var_3 = _id_6753( var_2 );

        if ( isdefined( var_3 ) && _id_26D2( var_3 ) )
        {
            self _meth_8045( "known_enemy", undefined, var_3._id_047A._id_02EA );

            if ( !isdefined( self._id_8F23 ) || gettime() - self._id_8F23 > 10000 )
            {
                if ( _id_09D1::_id_27E5() )
                {
                    var_4 = distancesquared( self._id_02EA, var_3._id_047A._id_02EA ) < 490000;
                    var_5 = _id_27E6( var_3 );

                    if ( var_4 || var_5 )
                    {
                        _id_31FB( var_3 );
                        self._id_8F23 = gettime();
                    }
                }
            }
        }
    }
    else if ( _func_0121( var_0, "secured" ) )
    {
        var_2 = _func_00D6( var_0, var_0.size - 2 );
        var_6 = _id_6753( var_2 );
        var_6._id_8F58[self._id_045B] = gettime();
    }

    _id_09D1::_id_280C( var_0, var_1 );
}

_id_26D2( var_0 )
{
    var_1 = _id_6612();

    if ( var_1.size == 0 )
        return 1;

    if ( _id_077B::_id_1B78( var_1, var_0 ) )
        return 1;

    return 0;
}

_id_A0BC( var_0 )
{
    self notify( "monitor_flag_status" );
    self endon( "monitor_flag_status" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );
    var_1 = _id_65D8( self._id_045B );
    var_2 = _id_6488() * _id_6488();
    var_3 = _id_6488() * 3 * ( _id_6488() * 3 );
    var_4 = 1;

    while ( var_4 )
    {
        var_5 = 0;
        var_6 = var_0 scripts\mp\gametypes\dom::_id_6A26();
        var_7 = _id_65D8( self._id_045B );
        var_8 = _id_6457( self._id_045B );

        if ( _id_09D1::_id_27DB() )
        {
            if ( var_6 == self._id_045B && var_0._id_37D2 == "none" )
            {
                if ( !_id_2752() )
                    var_5 = 1;
            }

            if ( var_7 == 2 && var_6 != self._id_045B && !_id_26D3() )
            {
                if ( distancesquared( self._id_02EA, var_0._id_047A._id_02EA ) > var_2 )
                    var_5 = 1;
            }

            foreach ( var_10 in var_8 )
            {
                if ( var_10 != var_0 && _id_26D2( var_10 ) )
                {
                    if ( distancesquared( self._id_02EA, var_10._id_047A._id_02EA ) < var_3 )
                        var_5 = 1;
                }
            }

            if ( self _meth_81EF( var_0._id_047A ) && var_0._id_FEAF <= 0 )
            {
                if ( self _meth_8041() )
                {
                    var_12 = self _meth_803A();
                    var_13 = self _meth_803C();

                    if ( distancesquared( self._id_02EA, var_12 ) < spawnstruct( var_13 ) )
                    {
                        var_14 = self _meth_815E();

                        if ( isdefined( var_14 ) )
                        {
                            var_15 = undefined;

                            foreach ( var_17 in var_0._id_A565 )
                            {
                                if ( !newteamhudelem( var_17, var_14, 1 ) )
                                {
                                    var_15 = var_17._id_02EA;
                                    break;
                                }
                            }

                            if ( isdefined( var_15 ) )
                            {
                                self._id_4604 = var_15;
                                self notify( "defend_force_node_recalculation" );
                            }
                        }
                    }
                }
            }
        }

        if ( _id_09D1::_id_27E5() )
        {
            if ( var_6 != self._id_045B )
            {
                if ( !_id_2753() )
                    var_5 = 1;
            }
            else if ( var_7 == 1 && var_1 > 1 )
                var_5 = 1;
        }

        var_1 = var_7;

        if ( var_5 )
        {
            self._id_5E3B = 1;
            var_4 = 0;
            self notify( "needs_new_flag_goal" );
            continue;
        }

        var_19 = level _id_077B::_id_108F5( "flag_changed_ownership", 1 + _func_01B7( 0, 2 ) );
        var_20 = isdefined( var_19 ) && var_19 == "timeout";

        if ( !var_20 )
        {
            var_21 = _func_0147( ( 3 - self._id_E9F9 ) * 1.0 + _func_01B7( -0.5, 0.5 ), 0 );
            wait( var_21 );
        }
    }
}

_id_2754( var_0 )
{
    if ( var_0 == self._id_A53D )
        return 1.0;

    if ( !isdefined( self._id_414D ) )
        return 1.0;

    var_1 = 0;
    var_2 = _id_6489( self._id_414D );
    var_3 = _id_6324( self._id_045B );

    foreach ( var_5 in var_3 )
    {
        if ( var_5 != self._id_414D )
        {
            var_1 = var_0 _id_09D1::_id_A54A( var_2, _id_6489( var_5 ) );

            if ( var_1 )
            {
                var_6 = _id_6605( self._id_414D, var_5 );
                var_7 = var_6 scripts\mp\gametypes\dom::_id_6A26();

                if ( var_7 != self._id_045B )
                {
                    if ( var_0 _id_09D1::_id_A54A( var_2, _id_6489( var_6 ) ) )
                        var_1 = 0;
                }
            }
        }
    }

    if ( var_1 )
        return 0.2;

    return 1.0;
}

_id_6489( var_0 )
{
    var_1 = "";

    if ( isdefined( var_0._id_F032 ) )
        var_1 = var_1 + ( var_0._id_F032 + "_" );

    var_1 = var_1 + ( "flag" + var_0._id_A8CE );
    return var_1;
}

_id_6605( var_0, var_1 )
{
    foreach ( var_3 in level._id_A8D5 )
    {
        if ( var_3 != var_0 && var_3 != var_1 )
            return var_3;
    }
}

_id_6754( var_0 )
{
    var_1 = "_" + _func_0243( var_0 );
    return _id_6753( var_1 );
}

_id_6753( var_0 )
{
    foreach ( var_2 in level._id_A8D5 )
    {
        if ( var_2._id_A8CE == var_0 )
            return var_2;
    }
}

_id_63BB( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;

    foreach ( var_4 in level._id_A8D5 )
    {
        var_5 = distancesquared( var_4._id_047A._id_02EA, var_0 );

        if ( !isdefined( var_2 ) || var_5 < var_2 )
        {
            var_1 = var_4;
            var_2 = var_5;
        }
    }

    return var_1;
}

_id_65D6( var_0, var_1 )
{
    var_2 = 0;
    var_3 = _id_6488();

    foreach ( var_5 in level._id_AE69 )
    {
        if ( !isdefined( var_5._id_045B ) )
            continue;

        if ( var_5._id_045B == self._id_045B && var_5 != self && _id_0A67::_id_8A7B( var_5 ) )
        {
            if ( _func_0104( var_5 ) )
            {
                if ( var_5 _id_27DC( var_0 ) )
                    var_2++;

                continue;
            }

            if ( !isdefined( var_1 ) || !var_1 )
            {
                if ( var_5 _meth_81EF( var_0 ) )
                    var_2++;
            }
        }
    }

    return var_2;
}

_id_27DC( var_0 )
{
    if ( !_id_09D1::_id_27DB() )
        return 0;

    return _id_28CF( var_0 );
}

_id_27E6( var_0 )
{
    if ( !_id_09D1::_id_27E5() )
        return 0;

    return _id_28CF( var_0 );
}

_id_28CF( var_0 )
{
    return self._id_414D == var_0;
}

_id_65D8( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in level._id_A8D5 )
    {
        var_4 = var_3 scripts\mp\gametypes\dom::_id_6A26();

        if ( var_4 == var_0 )
            var_1++;
    }

    return var_1;
}

_id_6457( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_A8D5 )
    {
        var_4 = var_3 scripts\mp\gametypes\dom::_id_6A26();

        if ( var_4 == _id_077B::_id_6460( var_0 ) )
            var_1 = _id_077B::_id_1B63( var_1, var_3 );
    }

    return var_1;
}

_id_6324( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_A8D5 )
    {
        var_4 = var_3 scripts\mp\gametypes\dom::_id_6A26();

        if ( var_4 == var_0 )
            var_1 = _id_077B::_id_1B63( var_1, var_3 );
    }

    return var_1;
}

_id_28AF( var_0, var_1 )
{
    var_2 = _id_6570( var_1 );
    var_3 = _id_6682( var_0 );
    return var_3.size < var_2;
}

_id_6570( var_0 )
{
    var_1 = _id_09D1::_id_27A3( self._id_045B );

    if ( var_0 == 1 )
        return _func_0037( var_1 / 6 );
    else
        return _func_0037( var_1 / 3 );
}

_id_6682( var_0 )
{
    var_1 = _id_648A();
    var_2 = [];

    foreach ( var_4 in level._id_AE69 )
    {
        if ( !isdefined( var_4._id_045B ) )
            continue;

        if ( var_4._id_045B == self._id_045B && var_4 != self && _id_0A67::_id_8A7B( var_4 ) )
        {
            if ( _func_0104( var_4 ) )
            {
                if ( var_4 _id_27E6( var_0 ) )
                    var_2 = _id_077B::_id_1B63( var_2, var_4 );

                continue;
            }

            var_5 = gettime() - var_0._id_8F58[self._id_045B];

            if ( var_5 < 10000 )
                continue;

            if ( distancesquared( var_0._id_047A._id_02EA, var_4._id_02EA ) < var_1 * var_1 )
                var_2 = _id_077B::_id_1B63( var_2, var_4 );
        }
    }

    return var_2;
}
