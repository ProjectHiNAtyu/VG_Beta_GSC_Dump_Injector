// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _id_D78A();
    _id_288A();
}

_id_D78A()
{
    level._id_2777["crate_can_use"] = ::_id_3E4D;
    level._id_2777["gametype_think"] = ::_id_288B;
    level._id_2777["should_start_cautious_approach"] = ::_id_DADA;
    level._id_2777["know_enemies_on_start"] = undefined;
    level._id_2777["notify_enemy_bots_bomb_used"] = ::_id_A65B;
}

_id_288A()
{
    _id_D772();
}

_id_3E4D( var_0 )
{
    if ( _func_0102( self ) && !isdefined( var_0._id_296B ) )
        return 0;

    if ( isdefined( var_0._id_3E7E ) && !scripts\cp_mp\utility\weapon_utility::_id_27E3( var_0._id_3E7E ) )
        return 0;

    if ( !_id_0A67::_id_8A7B( self ) )
        return 1;

    if ( !isdefined( self._id_C8B8 ) )
        return 0;

    switch ( self._id_C8B8 )
    {
        case "defuser":
        case "investigate_someone_using_bomb":
        case "atk_bomber":
            return 0;
    }

    return 1;
}

_id_D772()
{
    level._id_291B = 1;
    level._id_81A2 = 3000;
    scripts\mp\bots\bots_gametype_common::_id_28AA();
    _id_09D1::_id_28F5();
    level._id_2889 = [];
    level._id_2889["axis"] = [];
    level._id_2889["allies"] = [];
    level._id_273A["atk_bomber"] = ::_id_1D32;
    level._id_273A["clear_target_zone"] = ::_id_38E7;
    level._id_273A["defend_planted_bomb"] = ::_id_45C0;
    level._id_273A["defuser"] = ::_id_25D8;
    level._id_273A["investigate_someone_using_bomb"] = ::_id_84FF;
    level._id_273A["camp_bomb"] = ::_id_3084;
    level._id_273A["defender"] = ::_id_45FA;
    level._id_273A["backstabber"] = ::_id_2089;
    level._id_273A["random_killer"] = ::_id_BFDB;
    var_0 = scripts\mp\bots\bots_gametype_common::_id_28F1( [ "_a", "_b" ] );

    if ( var_0 )
    {
        foreach ( var_2 in level._id_A8D5 )
            var_2 thread scripts\mp\bots\bots_gametype_common::_id_A0AC();

        thread _id_2888();
        level._id_278A = 1;
    }
}

_id_288B()
{
    self notify( "bot_sd_think" );
    self endon( "bot_sd_think" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );
    self._id_7506 = undefined;

    while ( !isdefined( level._id_278A ) )
        wait 0.05;

    self _meth_8053( "separation", 0 );
    self _meth_8053( "grenade_objectives", 1 );
    self _meth_8053( "use_obj_path_style", 1 );
    var_0 = game["attackers"];
    var_1 = 1;

    if ( isdefined( level._id_CF95 ) && isdefined( level._id_CF95._id_32AF ) && level._id_CF95._id_32AF == self && isdefined( self._id_C8B8 ) && self._id_C8B8 == "atk_bomber" )
        var_1 = 0;

    if ( var_1 )
    {
        self._id_C8B8 = undefined;

        if ( isdefined( level._id_1D30 ) && level._id_1D30 == self )
            level._id_1D30 = undefined;
    }

    self._id_EBDE = undefined;
    self._id_7506 = 0;
    self._id_1D31 = 0;
    self._id_CF43 = undefined;
    self._id_45F9 = undefined;
    self._id_4620 = 0;

    if ( !isdefined( level._id_8198 ) && !level._id_A2E4 )
    {
        level._id_8198 = level._id_CF95._id_411F;
        level._id_8199 = _func_0080( level._id_CF95._id_411F );
    }

    if ( self._id_045B == var_0 && !isdefined( level._id_30B2 ) )
    {
        var_2 = 0;

        if ( !level._id_A2E4 )
        {
            var_3 = scripts\mp\bots\bots_gametype_common::_id_654B( var_0 );

            foreach ( var_5 in var_3 )
            {
                if ( !_func_0104( var_5 ) )
                    var_2 = 1;
            }
        }

        if ( var_2 )
        {
            var_7 = 6000;
            level._id_30B2 = gettime() + var_7;
            _func_0018( "bomb", var_7 / 1000, level._id_CF95._id_411F, 75, 300, var_0 );
        }
    }

    for (;;)
    {
        wait( _func_01B9( 1, 3 ) * 0.05 );

        if ( self._id_01FF <= 0 )
            continue;

        self._id_7506 = 1;

        if ( !isdefined( self._id_C8B8 ) )
            _id_81BE();

        if ( isdefined( self._id_EBDE ) )
            continue;

        if ( self._id_045B == var_0 )
        {
            if ( !level._id_A2E4 && isdefined( level._id_30B2 ) && gettime() < level._id_30B2 && !isdefined( level._id_CF95._id_32AF ) )
            {
                if ( !_id_09D1::_id_27E0( level._id_CF95._id_411F ) )
                {
                    var_8 = _func_0080( level._id_CF95._id_411F );

                    if ( isdefined( var_8 ) )
                    {
                        var_9["nearest_node_to_center"] = var_8;
                        _id_09D0::_id_2873( level._id_CF95._id_411F, 900, var_9 );
                    }
                    else
                        level._id_30B2 = gettime();
                }
            }
            else
                self [[ level._id_273A[self._id_C8B8] ]]();

            continue;
        }

        if ( level._id_263D )
        {
            if ( isdefined( level._id_CF96 ) && distancesquared( self._id_02EA, level._id_CF96._id_02EA ) > spawnstruct( level._id_BDB1 * 2 ) )
            {
                if ( !isdefined( self._id_45F9 ) )
                {
                    self._id_45F9 = 1;
                    self _meth_8054( "scripted" );
                }
            }
            else if ( isdefined( self._id_45F9 ) && !isdefined( self._id_CF43 ) )
            {
                self._id_45F9 = undefined;
                self _meth_8054( undefined );
            }
        }

        if ( level._id_263D && isdefined( level._id_CF96 ) && isdefined( level._id_25D7 ) && self._id_C8B8 != "defuser" )
        {
            if ( !_id_09D1::_id_27E0( level._id_CF96._id_02EA ) )
            {
                self _meth_802A();
                _id_09D0::_id_2873( level._id_CF96._id_02EA, level._id_BDB1 );
            }

            continue;
        }

        self [[ level._id_273A[self._id_C8B8] ]]();
    }
}

_id_2615( var_0 )
{
    self endon( "death" );
    self endon( "disconnect" );
    level endon( "game_ended" );
    self _meth_8053( "disable_movement", 1 );
    self _meth_805A( "stand" );
    wait( var_0 );
    self _meth_8053( "disable_movement", 0 );
    self _meth_805A( "none" );
}

_id_1D32()
{
    self endon( "new_role" );

    if ( _id_09D1::_id_27DF() )
        _id_09D0::_id_2740();

    if ( isdefined( level._id_CF95 ) && isdefined( level._id_CF95._id_32AF ) && isai( level._id_CF95._id_32AF ) && level._id_CF95._id_32AF != self )
        wait 0.7;

    if ( !self._id_8769 && !level._id_A2E4 )
    {
        if ( isdefined( level._id_CF95 ) )
        {
            if ( !isdefined( self._id_8EF5 ) )
                self._id_8EF5 = level._id_CF95._id_411F;

            if ( distancesquared( self._id_8EF5, level._id_CF95._id_411F ) > 4 )
            {
                self _meth_802A();
                self._id_8EF5 = level._id_CF95._id_411F;
            }
        }

        if ( self._id_1D31 >= 2 )
        {
            var_1 = _func_00B5( level._id_CF95._id_411F, 512, 0 );
            var_2 = undefined;

            foreach ( var_4 in var_1 )
            {
                if ( !var_4 _meth_8249() )
                {
                    var_2 = var_4;
                    break;
                }
            }

            if ( isdefined( var_2 ) )
            {
                self _meth_8057( var_2._id_02EA, 20, "critical" );
                _id_09D1::_id_28F6();

                if ( isdefined( level._id_CF95 ) && !isdefined( level._id_CF95._id_32AF ) )
                    level._id_CF95 _id_07AD::_id_D644( self );
            }
            else
            {

            }

            return;
        }

        if ( !self _meth_8041() )
        {
            var_6 = 15;
            var_7 = 32;
            var_8 = _id_09D1::_id_2875( "BotGetClosestNavigablePoint", _id_09D1::_id_5FFA, level._id_CF95._id_411F, var_6 + var_7, self );

            if ( isdefined( var_8 ) )
            {
                var_9 = self _meth_8057( level._id_CF95._id_411F, 0, "critical" );

                if ( var_9 )
                {
                    childthread _id_261A();
                    return;
                }
            }
            else
            {
                var_1 = _func_00B5( level._id_CF95._id_411F, 512, 0 );

                if ( var_1.size > 0 )
                {
                    self _meth_8057( var_1[0]._id_02EA, 0, "critical" );
                    _id_09D1::_id_28F6();
                }

                if ( isdefined( level._id_CF95 ) && !isdefined( level._id_CF95._id_32AF ) )
                {
                    var_8 = _id_09D1::_id_2875( "BotGetClosestNavigablePoint", _id_09D1::_id_5FFA, level._id_CF95._id_411F, var_6 + var_7, self );

                    if ( !isdefined( var_8 ) )
                        level._id_CF95 _id_07AD::_id_D644( self );
                }
            }
        }
    }
    else
    {
        if ( isdefined( self._id_4D6A ) && gettime() < self._id_4D6A )
            return;

        if ( !isdefined( level._id_2606 ) )
            level._id_2606 = _id_077B::_id_BFC7( level._id_A8D5 );

        var_10 = level._id_2606;
        self._id_2670 = var_10;

        if ( !isdefined( level._id_819A ) || gettime() - level._id_819A < level._id_81A2 )
        {
            level._id_819A = gettime() + level._id_81A2;
            thread _id_2615( level._id_81A2 / 1000 );
            wait( level._id_81A2 / 1000 );
        }

        self _meth_802A();

        if ( level._id_1D97 == "rush" )
        {
            self _meth_8054( "scripted" );
            var_11 = scripts\mp\bots\bots_gametype_common::_id_637F( var_10, 1 );
            self _meth_8057( var_11._id_02EA, 0, "critical" );
        }

        var_12 = _id_09D1::_id_28F6();

        if ( var_12 == "goal" )
        {
            var_13 = _id_66F1() - gettime();
            var_14 = var_13 - level._id_B1C7 * 2 * 1000;
            var_15 = gettime() + var_14;

            if ( var_14 > 0 )
                _id_09D1::_id_28F7( var_14 );

            var_16 = gettime() >= var_15;
            var_17 = scripts\mp\bots\bots_gametype_common::_id_266D( level._id_B1C7 + 2, "bomb_planted", var_16 );
            self _meth_802A();

            if ( var_17 )
            {
                _id_09D0::_id_275C();
                _id_28A3( "defend_planted_bomb" );
            }
            else if ( var_14 > 5000 )
                self._id_4D6A = gettime() + 5000;
        }
    }
}

_id_66F1()
{
    if ( level._id_263D )
        return level._id_461E;
    else
        return gettime() + _id_07AC::_id_6DCA();
}

_id_261A()
{
    self notify( "bomber_monitor_no_path" );
    self endon( "death_or_disconnect" );
    self endon( "goal" );
    self endon( "bomber_monitor_no_path" );
    level._id_CF95 endon( "pickup_object" );

    for (;;)
    {
        self waittill( "no_path" );
        self._id_1D31++;
    }
}

_id_38E7()
{
    self endon( "new_role" );

    if ( isdefined( level._id_1D30 ) )
    {
        if ( level._id_1D97 == "rush" )
        {
            if ( !isdefined( self._id_D250 ) )
            {
                if ( !level._id_A2E4 )
                {
                    var_0["nearest_node_to_center"] = level._id_8199;
                    _id_09D0::_id_2873( level._id_8198, 900, var_0 );
                    wait( _func_01B7( 0.0, 4.0 ) );
                    _id_09D0::_id_2740();
                }

                self._id_D250 = 1;
            }

            if ( self _meth_802F( "strategyLevel" ) > 0 )
                _id_D206();

            if ( _func_0104( level._id_1D30 ) && isdefined( level._id_1D30._id_2670 ) )
                var_1 = level._id_1D30._id_2670;
            else if ( isdefined( level._id_2606 ) )
                var_1 = level._id_2606;
            else
                var_1 = scripts\mp\bots\bots_gametype_common::_id_5A9A( level._id_1D30 );

            if ( !_id_09D1::_id_27E0( var_1._id_411F ) )
            {
                var_0["min_goal_time"] = 2;
                var_0["max_goal_time"] = 4;
                var_0["override_origin_node"] = _id_077B::_id_BFC7( var_1._id_292C );
                _id_09D0::_id_2873( var_1._id_411F, level._id_BDB1, var_0 );
            }
        }
    }
}

_id_45C0()
{
    self endon( "new_role" );

    if ( level._id_263D && isdefined( level._id_CF96 ) )
    {
        if ( level._id_1D97 == "rush" )
            _id_49E1();

        if ( !_id_09D1::_id_27E0( level._id_CF96._id_02EA ) )
        {
            var_0["score_flags"] = "strongly_avoid_center";
            _id_09D0::_id_2873( level._id_CF96._id_02EA, level._id_BDB1, var_0 );
        }
    }
}

_id_25D8()
{
    self endon( "new_role" );

    if ( level._id_260F || !isdefined( level._id_CF96 ) )
        return;

    var_0 = _id_5AB6();

    if ( !isdefined( var_0 ) )
        return;

    var_1 = _id_077B::_id_634A( level._id_CF96._id_02EA, var_0._id_292C );
    var_2 = ( level._id_CF96._id_02EA[0], level._id_CF96._id_02EA[1], var_1[0]._id_02EA[2] );

    if ( self._id_4620 <= 1 )
        var_3 = _id_3326( var_2, undefined );
    else
    {
        self _meth_802A();
        var_3 = self _meth_8057( var_2, 20, "critical" );
    }

    if ( !var_3 )
        return;

    var_4 = _id_09D1::_id_28F6();

    if ( var_4 == "bad_path" )
    {
        self._id_4620++;

        if ( self._id_4620 >= 4 )
        {
            for (;;)
            {
                var_5 = _func_00B5( var_2, 50, 0 );
                var_6 = self._id_4620 - 4;

                if ( var_5.size <= var_6 )
                {
                    var_7 = _func_0020( var_2, 50, self );

                    if ( isdefined( var_7 ) )
                        self _meth_8057( var_7, 20, "critical" );
                    else
                        break;
                }
                else
                    self _meth_8057( var_5[var_6]._id_02EA, 20, "critical" );

                var_4 = _id_09D1::_id_28F6();

                if ( var_4 == "bad_path" )
                {
                    self._id_4620++;
                    continue;
                }

                break;
            }
        }
    }

    if ( var_4 == "goal" )
    {
        var_8 = _id_66F1() - gettime();
        var_9 = var_8 - level._id_4623 * 2 * 1000;
        var_10 = gettime() + var_9;

        if ( var_9 > 0 )
            _id_09D1::_id_28F7( var_9 );

        var_11 = gettime() >= var_10;
        var_12 = level._id_CF96._id_02EA[2] - self._id_02EA[2];
        var_13 = scripts\mp\bots\bots_gametype_common::_id_266D( level._id_4623 + 2, "bomb_defused", var_11, var_12 > 40 );

        if ( !var_13 && self._id_4620 >= 4 )
            self._id_4620++;

        self _meth_802A();
        _id_09D0::_id_275C();
    }
}

_id_84FF()
{
    self endon( "new_role" );

    if ( _id_09D1::_id_27DF() )
        _id_09D0::_id_2740();

    var_0 = scripts\mp\bots\bots_gametype_common::_id_5A9A( self );
    self _meth_8058( _id_077B::_id_BFC7( var_0._id_292C ), "critical" );
    var_1 = _id_09D1::_id_28F6();

    if ( var_1 == "goal" )
    {
        wait 2;
        _id_28A3( self._id_BBFC );
    }
}

_id_3084()
{
    self endon( "new_role" );

    if ( isdefined( level._id_CF95._id_32AF ) )
    {
        if ( self._id_BBFC == "defender" )
            self._id_45F7 = scripts\mp\bots\bots_gametype_common::_id_5A9A( self );

        _id_28A3( self._id_BBFC );
    }
    else if ( !_id_09D1::_id_27E0( level._id_CF95._id_411F ) )
    {
        var_0["nearest_node_to_center"] = level._id_CF95._id_A3E6;
        _id_09D0::_id_2873( level._id_CF95._id_411F, level._id_BDB1, var_0 );
    }
}

_id_45FA()
{
    self endon( "new_role" );

    if ( !_id_09D1::_id_27E0( self._id_45F7._id_411F ) )
    {
        var_0["score_flags"] = "strict_los";
        var_0["override_origin_node"] = _id_077B::_id_BFC7( self._id_45F7._id_292C );
        _id_09D0::_id_2873( self._id_45F7._id_411F, level._id_BDB1, var_0 );
    }
}

_id_2089()
{
    self endon( "new_role" );

    if ( _id_09D1::_id_27DF() )
        _id_09D0::_id_2740();

    if ( !isdefined( self._id_2088 ) )
        self._id_2088 = "1_move_to_midpoint";

    if ( self._id_2088 == "1_move_to_midpoint" )
    {
        var_0 = level._id_A8D5["_a"]._id_411F;
        var_1 = level._id_A8D5["_b"]._id_411F;
        var_2 = ( ( var_0[0] + var_1[0] ) * 0.5, ( var_0[1] + var_1[1] ) * 0.5, ( var_0[2] + var_1[2] ) * 0.5 );
        var_3 = _func_00B5( var_2, 512, 0 );

        if ( var_3.size == 0 )
        {
            _id_28A3( "random_killer" );
            return;
        }

        var_4 = undefined;
        var_5 = int( var_3.size * ( var_3.size + 1 ) * 0.5 );
        var_6 = _func_01B8( var_5 );

        for ( var_7 = 0; var_7 < var_3.size; var_7++ )
        {
            var_8 = var_3.size - var_7;

            if ( var_6 < var_8 )
            {
                var_4 = var_3[var_7];
                break;
            }

            var_6 = var_6 - var_8;
        }

        self _meth_8054( "scripted" );
        var_9 = self _meth_8058( var_4, "guard" );

        if ( var_9 )
        {
            var_10 = _id_09D1::_id_28F6();

            if ( var_10 == "goal" )
            {
                wait( _func_01B7( 1.0, 4.0 ) );
                self._id_2088 = "2_move_to_enemy_spawn";
            }
        }
    }

    if ( self._id_2088 == "2_move_to_enemy_spawn" )
    {
        var_11 = _id_07EE::_id_6D30( "mp_sd_spawn_attacker" );
        var_12 = _id_077B::_id_BFC7( var_11 );
        self _meth_8054( "scripted" );
        var_9 = self _meth_8057( var_12._id_02EA, 250, "guard" );

        if ( var_9 )
        {
            var_10 = _id_09D1::_id_28F6();

            if ( var_10 == "goal" )
                self._id_2088 = "3_move_to_bombzone";
        }
    }

    if ( self._id_2088 == "3_move_to_bombzone" )
    {
        if ( !isdefined( self._id_266C ) )
            self._id_266C = _id_077B::_id_BFC7( level._id_A8D5 );

        self _meth_8054( undefined );
        var_9 = self _meth_8057( _id_077B::_id_BFC7( self._id_266C._id_292C )._id_02EA, 160, "objective" );

        if ( var_9 )
        {
            var_10 = _id_09D1::_id_28F6();

            if ( var_10 == "goal" )
            {
                self _meth_802A();
                self._id_2088 = "2_move_to_enemy_spawn";

                foreach ( var_14 in level._id_A8D5 )
                {
                    if ( var_14 != self._id_266C )
                    {
                        self._id_266C = var_14;
                        break;
                    }
                }
            }
        }
    }
}

_id_BFDB()
{
    self endon( "new_role" );

    if ( _id_09D1::_id_27DF() )
        _id_09D0::_id_2740();

    self [[ self._id_B012 ]]();
}

_id_D206()
{
    if ( !isdefined( self._id_162E ) )
    {
        self _meth_8053( "force_sprint", 1 );
        self._id_162E = 1;
    }
}

_id_49E1()
{
    if ( isdefined( self._id_162E ) )
    {
        self _meth_8053( "force_sprint", 0 );
        self._id_162E = undefined;
    }
}

_id_D38E()
{
    if ( !isdefined( self._id_CF43 ) )
    {
        self _meth_8054( "scripted" );
        self._id_CF43 = 1;
    }
}

_id_3326( var_0, var_1 )
{
    var_2 = level._id_31FC;
    var_3["entrance_points_index"] = var_1;
    _id_09D0::_id_2703( var_0, var_2, var_3 );
    wait 0.05;

    while ( distancesquared( self._id_02EA, var_0 ) > var_2 * var_2 && _id_09D1::_id_27DF() )
    {
        if ( _id_66F1() - gettime() < 20000 )
        {
            _id_D38E();
            _id_D206();
            break;
        }

        wait 0.05;
    }

    if ( _id_09D1::_id_27DF() )
        _id_09D0::_id_2740();

    return self _meth_8057( var_0, 20, "critical" );
}

_id_A65B( var_0 )
{
    var_1 = scripts\mp\bots\bots_gametype_common::_id_62F1( var_0 );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._id_C8B8 ) )
            var_3 _id_28A3( "investigate_someone_using_bomb" );
    }
}

_id_DADA( var_0 )
{
    var_1 = 2000;
    var_2 = var_1 * var_1;

    if ( var_0 )
    {
        if ( _id_66F1() - gettime() < 15000 )
            return 0;

        var_3 = 0;
        var_4 = _id_077B::_id_6460( self._id_045B );

        foreach ( var_6 in level._id_B758 )
        {
            if ( !isdefined( var_6._id_045B ) )
                continue;

            if ( isai( var_6 ) && var_6._id_045B == var_4 )
                var_3 = 1;
        }

        return var_3;
    }
    else
        return distancesquared( self._id_02EA, self._id_2744 ) <= var_2 && self _meth_804E();
}

_id_6683( var_0 )
{
    var_1 = [];
    var_2 = scripts\mp\bots\bots_gametype_common::_id_654B( game["defenders"] );

    foreach ( var_4 in var_2 )
    {
        if ( _func_0104( var_4 ) && isdefined( var_4._id_C8B8 ) && var_4._id_C8B8 == "defender" )
        {
            if ( isdefined( var_4._id_45F7 ) && var_4._id_45F7 == var_0 )
                var_1 = _id_077B::_id_1B63( var_1, var_4 );

            continue;
        }

        if ( distancesquared( var_4._id_02EA, var_0._id_411F ) < level._id_BDB1 * level._id_BDB1 )
            var_1 = _id_077B::_id_1B63( var_1, var_4 );
    }

    return var_1;
}

_id_5AB6()
{
    if ( isdefined( level._id_F1DB ) )
    {
        foreach ( var_1 in level._id_A8D5 )
        {
            if ( distancesquared( level._id_F1DB._id_02EA, var_1._id_411F ) < 90000 )
                return var_1;
        }
    }

    return undefined;
}

_id_6755( var_0 )
{
    var_0 = "_" + _func_0243( var_0 );
    return level._id_A8D5[var_0];
}

_id_2626()
{
    self endon( "stopped_being_bomb_carrier" );
    self endon( "new_role" );
    self waittill( "death_or_disconnect" );
    level._id_1D30 = undefined;
    level._id_8EF2 = gettime();

    if ( isdefined( self ) )
        self._id_C8B8 = undefined;

    var_0 = scripts\mp\bots\bots_gametype_common::_id_654B( game["attackers"], 1 );
    _id_5E23( var_0, undefined );
}

_id_2625()
{
    self endon( "death_or_disconnect" );
    self endon( "stopped_being_bomb_carrier" );
    level._id_CF95 endon( "pickup_object" );
    level._id_CF95 waittill( "reset" );

    if ( _id_0A67::_id_872A( self ) )
        self _meth_802A();

    _id_28A3( "atk_bomber" );
}

_id_D28D()
{
    level._id_1D30 = self;
    _id_28A3( "atk_bomber" );
    thread _id_2626();

    if ( !level._id_A2E4 )
        thread _id_2625();

    if ( _func_0104( self ) )
    {
        _id_09D0::_id_274F();

        if ( level._id_1D97 == "rush" && self _meth_802F( "strategyLevel" ) > 0 )
            _id_D206();
    }
}

_id_81BE()
{
    if ( self._id_045B == game["attackers"] )
    {
        if ( level._id_263D )
            _id_28A3( "defend_planted_bomb" );
        else if ( !isdefined( level._id_1D30 ) )
            _id_D28D();
        else if ( level._id_1D97 == "rush" )
            _id_28A3( "clear_target_zone" );
    }
    else
    {
        var_0 = _id_6681( "backstabber" );
        var_1 = _id_6681( "defender" );
        var_2 = level._id_285E[self._id_B010];
        var_3 = self _meth_802F( "strategyLevel" );

        if ( var_2 == "active" )
        {
            if ( !isdefined( self._id_C8B8 ) && level._id_14FE && var_3 > 0 )
            {
                if ( var_0.size == 0 )
                    _id_28A3( "backstabber" );
                else
                {
                    var_4 = 1;

                    foreach ( var_6 in var_0 )
                    {
                        var_7 = level._id_285E[var_6._id_B010];

                        if ( var_7 == "active" )
                        {
                            var_4 = 0;
                            break;
                        }
                    }

                    if ( var_4 )
                    {
                        _id_28A3( "backstabber" );
                        var_0[0] _id_28A3( undefined );
                    }
                }
            }

            if ( !isdefined( self._id_C8B8 ) )
            {
                if ( var_1.size < 4 )
                    _id_28A3( "defender" );
            }

            if ( !isdefined( self._id_C8B8 ) )
            {
                var_9 = _func_01B8( 4 );

                if ( var_9 == 3 && level._id_1549 && var_3 > 0 )
                    _id_28A3( "random_killer" );
                else if ( var_9 == 2 && level._id_14FE && var_3 > 0 )
                    _id_28A3( "backstabber" );
                else
                    _id_28A3( "defender" );
            }
        }
        else if ( var_2 == "stationary" )
        {
            if ( !isdefined( self._id_C8B8 ) )
            {
                if ( var_1.size < 4 )
                    _id_28A3( "defender" );
                else
                {
                    foreach ( var_11 in var_1 )
                    {
                        var_12 = level._id_285E[var_11._id_B010];

                        if ( var_12 == "active" )
                        {
                            _id_28A3( "defender" );
                            var_11 _id_28A3( undefined );
                            break;
                        }
                    }
                }
            }

            if ( !isdefined( self._id_C8B8 ) && level._id_14FE && var_3 > 0 )
            {
                if ( var_0.size == 0 )
                    _id_28A3( "backstabber" );
            }

            if ( !isdefined( self._id_C8B8 ) )
                _id_28A3( "defender" );
        }

        if ( self._id_C8B8 == "defender" )
        {
            var_14 = level._id_A8D5;

            if ( _id_74EE( self._id_045B ) )
                var_14 = _id_6613( self._id_045B );

            if ( var_14.size == 1 )
                self._id_45F7 = var_14["_a"];
            else
            {
                var_15 = _id_6683( var_14["_a"] );
                var_16 = _id_6683( var_14["_b"] );

                if ( var_15.size < var_16.size )
                    self._id_45F7 = var_14["_a"];
                else if ( var_16.size < var_15.size )
                    self._id_45F7 = var_14["_b"];
                else
                    self._id_45F7 = _id_077B::_id_BFC7( var_14 );
            }
        }
    }
}

_id_28A3( var_0 )
{
    if ( _func_0104( self ) )
    {
        _id_09D0::_id_2740();
        self _meth_8054( undefined );
    }

    self._id_BBFC = self._id_C8B8;
    self._id_C8B8 = var_0;
    self notify( "new_role" );
}

_id_28A4( var_0, var_1 )
{
    self endon( "death_or_disconnect" );
    self endon( "new_role" );
    wait( var_1 );
    _id_28A3( var_0 );
}

_id_5E23( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0 )
    {
        if ( isdefined( var_2 ) )
        {
            var_4 thread _id_28A4( var_1, _func_01B7( 0.0, var_2 ) );
            continue;
        }

        var_4 thread _id_28A3( var_1 );
    }
}

_id_6613( var_0 )
{
    return level._id_2889[var_0];
}

_id_74EE( var_0 )
{
    var_1 = _id_6613( var_0 );
    return var_1.size > 0;
}

_id_6681( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_AE69 )
    {
        if ( isai( var_3 ) && _id_0A67::_id_8A7B( var_3 ) && isdefined( var_3._id_C8B8 ) && var_3._id_C8B8 == var_0 )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_id_2888()
{
    level notify( "bot_sd_ai_director_update" );
    level endon( "bot_sd_ai_director_update" );
    level endon( "game_ended" );
    level._id_14FE = _func_01B8( 3 ) <= 1;
    level._id_1549 = _func_01B8( 3 ) <= 1;
    level._id_1D97 = "rush";
    level._id_BDB1 = 725;
    level._id_31FC = 140;

    for (;;)
    {
        if ( isdefined( level._id_CF95 ) && isdefined( level._id_CF95._id_32AF ) && !_func_0104( level._id_CF95._id_32AF ) )
            level._id_2606 = scripts\mp\bots\bots_gametype_common::_id_5A9A( level._id_CF95._id_32AF );

        var_0 = 0;

        if ( !level._id_263D )
        {
            var_1 = scripts\mp\bots\bots_gametype_common::_id_654B( game["attackers"] );

            foreach ( var_3 in var_1 )
            {
                if ( var_3._id_8769 )
                {
                    level._id_30B2 = gettime();

                    if ( !isdefined( level._id_1D30 ) || var_3 != level._id_1D30 )
                    {
                        if ( isdefined( level._id_1D30 ) && isai( level._id_1D30 ) )
                        {
                            level._id_1D30 _id_28A3( undefined );
                            level._id_1D30 notify( "stopped_being_bomb_carrier" );
                        }

                        var_0 = 1;
                        var_3 _id_D28D();
                    }
                }
            }

            if ( !level._id_A2E4 && !isdefined( level._id_CF95._id_32AF ) )
            {
                var_5 = _func_0080( level._id_CF95._id_411F );

                if ( isdefined( var_5 ) )
                {
                    level._id_CF95._id_A3E6 = var_5;
                    var_6 = 0;
                    var_7 = scripts\mp\bots\bots_gametype_common::_id_654B( game["defenders"], 1 );

                    foreach ( var_9 in var_7 )
                    {
                        var_10 = var_9 _meth_815E();
                        var_11 = var_9 _meth_802F( "strategyLevel" );

                        if ( var_11 > 0 && var_9._id_C8B8 != "camp_bomb" && isdefined( var_10 ) && newteamhudelem( var_5, var_10, 1 ) )
                        {
                            var_12 = var_9 _meth_8031();

                            if ( _id_077B::_id_10E74( var_9._id_02EA, var_9 getplayerangles(), level._id_CF95._id_411F, var_12 ) )
                            {
                                if ( var_11 >= 2 || distancesquared( var_9._id_02EA, level._id_CF95._id_411F ) < spawnstruct( 700 ) )
                                {
                                    var_6 = 1;
                                    break;
                                }
                            }
                        }
                    }

                    if ( var_6 )
                    {
                        foreach ( var_9 in var_7 )
                        {
                            if ( var_9._id_C8B8 != "camp_bomb" && var_9 _meth_802F( "strategyLevel" ) > 0 )
                                var_9 _id_28A3( "camp_bomb" );
                        }
                    }
                }
            }

            var_16 = level._id_A8D5;

            if ( _id_74EE( game["defenders"] ) )
                var_16 = _id_6613( game["defenders"] );

            foreach ( var_18 in var_16 )
            {
                foreach ( var_20 in var_16 )
                {
                    var_21 = _id_6683( var_18 );
                    var_22 = _id_6683( var_20 );

                    if ( var_21.size > var_22.size + 1 )
                    {
                        var_23 = [];

                        foreach ( var_3 in var_21 )
                        {
                            if ( _func_0104( var_3 ) )
                                var_23 = _id_077B::_id_1B63( var_23, var_3 );
                        }

                        if ( var_23.size > 0 )
                        {
                            var_26 = _id_077B::_id_BFC7( var_23 );
                            var_26 _id_09D0::_id_2740();
                            var_26._id_45F7 = var_20;
                        }
                    }
                }
            }
        }
        else
        {
            if ( isdefined( level._id_1D30 ) )
                level._id_1D30 = undefined;

            if ( !isdefined( level._id_25D7 ) || !isai( level._id_25D7 ) )
            {
                var_29 = [];
                var_30 = _id_6681( "defender" );
                var_31 = _id_6681( "backstabber" );
                var_32 = _id_6681( "random_killer" );

                if ( var_30.size > 0 )
                    var_29 = var_30;
                else if ( var_31.size > 0 )
                    var_29 = var_31;
                else if ( var_32.size > 0 )
                    var_29 = var_32;

                if ( var_29.size > 0 && isdefined( level._id_CF96 ) )
                {
                    var_33 = _id_077B::_id_634A( level._id_CF96._id_02EA, var_29 );
                    level._id_25D7 = var_33[0];
                    level._id_25D7 _id_28A3( "defuser" );
                    level._id_25D7 _id_09D0::_id_274F();
                    level._id_25D7 thread _id_4621();
                }
            }

            if ( !isdefined( level._id_CF8F ) )
            {
                level._id_CF8F = 1;
                var_34 = scripts\mp\bots\bots_gametype_common::_id_654B( game["attackers"] );

                foreach ( var_3 in var_34 )
                {
                    if ( isdefined( var_3._id_C8B8 ) )
                    {
                        if ( var_3._id_C8B8 == "atk_bomber" )
                        {
                            var_3 thread _id_28A3( undefined );
                            continue;
                        }

                        if ( var_3._id_C8B8 != "defend_planted_bomb" )
                            var_3 thread _id_28A4( "defend_planted_bomb", _func_01B7( 0.0, 3.0 ) );
                    }
                }
            }
        }

        wait 0.5;
    }
}

_id_4621()
{
    self waittill( "death_or_disconnect" );
    level._id_25D7 = undefined;
}
