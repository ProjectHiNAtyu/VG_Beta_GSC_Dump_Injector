// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _id_D78A();
    _id_D762();
}

_id_D78A()
{
    level._id_2777["crate_can_use"] = ::_id_3E4D;
    level._id_2777["gametype_think"] = ::_id_274B;
}

_id_3E4D( var_0 )
{
    if ( _func_0102( self ) && !isdefined( var_0._id_296B ) )
        return 0;

    if ( isdefined( var_0._id_3E7E ) && !scripts\cp_mp\utility\weapon_utility::_id_27E3( var_0._id_3E7E ) )
        return 0;

    return _id_8674();
}

_id_8B29( var_0, var_1 )
{
    if ( var_0 == 0 )
        var_0 = "_a";
    else
        var_0 = "_b";

    var_2 = _func_020F();
    var_2._id_02EA = var_1;
    var_2._id_0054 = ( 0, _func_01B8( 360 ), 0 );
    level._id_A8D5[var_0]._id_292C[level._id_A8D5[var_0]._id_292C.size] = var_2;
}

_id_2772()
{
    if ( level._id_9AA7 == "mp_metropolis" )
    {
        if ( _id_0A69::_id_82B7() && level._id_A8D5["_a"]._id_292C.size == 0 )
        {
            var_0 = ( -505, -361, 68 );
            _id_8B29( 0, var_0 );
            var_0 = ( -582, -311, 68 );
            _id_8B29( 0, var_0 );
            var_0 = ( -583, -387, 68 );
            _id_8B29( 0, var_0 );
            var_0 = ( -583, -387, 68 );
            _id_8B29( 0, var_0 );
            var_0 = ( -497, -326, 68 );
            _id_8B29( 0, var_0 );
        }
    }
}

_id_D762()
{
    _id_09D1::_id_28F5();
    var_0 = scripts\mp\bots\bots_gametype_common::_id_28F1( [ "_a", "_b" ] );

    if ( var_0 )
    {
        foreach ( var_2 in level._id_A8D5 )
            var_2 thread scripts\mp\bots\bots_gametype_common::_id_A0AC();

        level._id_278A = 1;
    }
}

_id_6BDF()
{
    return level._id_A8D5["_a"];
}

_id_8756()
{
    if ( !_id_0A69::_id_82B7() )
    {
        if ( self._id_045B == game["attackers"] )
            return 1;

        return 0;
    }

    var_0 = _id_6BDF();

    if ( var_0._id_AD9B == "neutral" )
        return 1;

    if ( var_0._id_AD9B == self._id_045B )
        return 0;

    return 1;
}

_id_87DB()
{
    if ( !_id_0A69::_id_82B7() )
    {
        if ( self._id_045B == game["defenders"] )
            return 1;

        return 0;
    }

    var_0 = _id_6BDF();

    if ( var_0._id_AD9B == "neutral" )
        return 0;

    if ( var_0._id_AD9B == self._id_045B )
        return 1;

    return 0;
}

_id_274B()
{
    self notify( "bot_dem_think" );
    self endon( "bot_dem_think" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );

    while ( !isdefined( level._id_278A ) )
        wait 0.05;

    _id_7EEE();
    self _meth_8053( "separation", 0 );
    self _meth_8053( "grenade_objectives", 1 );
    self _meth_8053( "use_obj_path_style", 1 );
    self._id_8586 = 0;
    self._id_864A = 0;
    self._id_4133 = undefined;

    if ( !isdefined( level._id_A459 ) )
        level._id_A459 = gettime() - 100;

    for (;;)
    {
        wait 0.05;

        if ( gettime() >= level._id_A459 )
        {
            _id_FB6D();
            level._id_A459 = gettime() + 100;
        }

        if ( self._id_01FF <= 0 )
            continue;

        if ( _id_0A69::_id_82B7() && !isdefined( self._id_4133 ) )
            self._id_4133 = _id_6BDF();

        if ( _id_8756() )
        {
            if ( self._id_864A )
                _id_B188();
            else
            {
                if ( !isdefined( self._id_4133 ) )
                    self._id_4133 = _id_5A96( "attackers" );

                if ( isdefined( self._id_4133 ) )
                {
                    if ( _id_854E( self._id_4133 ) && !_id_8674() )
                        _id_09D0::_id_2873( self._id_4133._id_292B._id_02EA, 600 );
                    else if ( !_id_854E( self._id_4133 ) && !_id_8551() )
                    {
                        var_0["entrance_points_index"] = "zone" + self._id_4133._id_024D;
                        _id_09D0::_id_2703( self._id_4133._id_292B._id_02EA, 350, var_0 );
                    }
                }
            }

            continue;
        }

        if ( self._id_8586 )
        {
            if ( !isdefined( level._id_434A[self._id_4133._id_024D] ) )
                self._id_8586 = 0;
        }

        if ( self._id_8586 )
        {
            _id_4618();
            continue;
        }

        if ( !isdefined( self._id_4133 ) )
            self._id_4133 = _id_5A96( "defenders" );

        if ( isdefined( self._id_4133 ) )
        {
            if ( _id_854E( self._id_4133 ) && !_id_8551() )
            {
                var_0["entrance_points_index"] = "zone" + self._id_4133._id_024D;
                _id_09D0::_id_2703( self._id_4133._id_292B._id_02EA, 350, var_0 );
                continue;
            }

            if ( !_id_854E( self._id_4133 ) && !_id_8674() )
                _id_09D0::_id_2873( self._id_4133._id_292B._id_02EA, 600 );
        }
    }
}

_id_B188()
{
    _id_70D5( 1 );
}

_id_4618()
{
    _id_70D5( 0 );
}

_id_70D5( var_0 )
{
    _id_09D0::_id_2740();

    if ( var_0 )
        self _meth_8057( self._id_4133._id_292B._id_02EA, 20, "critical", self._id_4133._id_292B._id_0054[1] );
    else
    {
        var_1 = level._id_434A[self._id_4133._id_024D]._id_02EA;
        self _meth_8057( var_1, 20, "critical" );
    }

    var_2 = _id_09D1::_id_28F6( undefined, "dem_bomb_exploded", "no_longer_bomb_defuser" );

    if ( var_2 == "goal" )
    {
        self _meth_804D( "use", level._id_4623 + 2 );
        _id_1093A( level._id_4623 + 2, var_0 );

        if ( var_0 )
            self._id_864A = 0;
        else
            self._id_8586 = 0;
    }
}

_id_1093A( var_0, var_1 )
{
    var_2 = gettime();
    var_3 = var_2 + var_0 * 1000;
    wait 0.05;

    while ( self useanimtree() && gettime() < var_3 && isdefined( self._id_4133 ) && var_1 != _id_854E( self._id_4133 ) )
        wait 0.05;
}

_id_8674()
{
    return _id_09D1::_id_27E5();
}

_id_8551()
{
    return _id_09D1::_id_27DB();
}

_id_6384( var_0, var_1 )
{
    var_2 = [];

    foreach ( var_4 in level._id_AE69 )
    {
        if ( var_1 == "attackers" && !var_4 _id_8756() )
            continue;

        if ( var_1 == "defenders" && !var_4 _id_87DB() )
            continue;

        if ( isai( var_4 ) && _id_0A67::_id_8A7B( var_4 ) && isdefined( var_4._id_4133 ) && var_4._id_4133 == var_0 )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_id_6381( var_0 )
{
    var_1 = _id_6384( var_0, "defenders" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3._id_8586 )
            return var_3;
    }

    return undefined;
}

_id_6382( var_0 )
{
    var_1 = _id_6384( var_0, "attackers" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3._id_864A )
            return var_3;
    }

    return undefined;
}

_id_5A96( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_A8D5 )
    {
        if ( !istrue( var_3._id_2636 ) )
        {
            var_4 = 0;

            if ( var_0 == "defenders" )
                var_4 = var_3._id_291A > _id_6384( var_3, "defenders" ).size;
            else if ( var_0 == "attackers" )
                var_4 = var_3._id_2919 > _id_6384( var_3, "attackers" ).size;

            if ( var_4 )
                var_1[var_1.size] = var_3;
        }
    }

    var_6 = undefined;

    if ( var_1.size > 0 )
    {
        var_7 = 999999999;

        foreach ( var_3 in var_1 )
        {
            var_9 = distancesquared( var_3._id_292B._id_02EA, self._id_02EA );

            if ( var_9 < var_7 )
            {
                var_6 = var_3;
                var_7 = var_9;
            }
        }
    }

    return var_6;
}

_id_FB6D()
{
    var_0 = [];

    foreach ( var_2 in level._id_A8D5 )
    {
        if ( !istrue( var_2._id_2636 ) )
            var_0[var_0.size] = var_2;
    }

    if ( level._id_BBFA == 2 && var_0.size == 1 )
    {
        foreach ( var_5 in level._id_AE69 )
        {
            if ( _id_0A67::_id_8A7B( var_5 ) && isdefined( var_5._id_4133 ) && var_5._id_4133 != var_0[0] )
            {
                var_5._id_4133 = undefined;
                var_5 _id_09D0::_id_2740();
                var_5 notify( "dem_bomb_exploded" );
                var_5._id_8586 = 0;
                var_5._id_864A = 0;
            }
        }

        level._id_BBFA = 1;
    }

    _id_FB54( var_0 );
    _id_FB55( var_0 );
}

_id_FB54( var_0 )
{
    if ( gettime() > level._id_A472 )
    {
        level._id_418D = 1 - level._id_418D;
        level._id_A472 = gettime() + 90000;
    }

    var_1 = 0;

    foreach ( var_3 in level._id_AE69 )
    {
        if ( _id_0A67::_id_872A( var_3 ) && isai( var_3 ) && var_3 _id_8756() )
            var_1++;
    }

    if ( var_0.size == 2 )
    {
        if ( var_1 >= 2 )
            var_0[1 - level._id_418D]._id_2919 = 1;
        else
            var_0[1 - level._id_418D]._id_2919 = 0;

        var_0[level._id_418D]._id_2919 = var_1 - var_0[1 - level._id_418D]._id_2919;
    }
    else if ( var_0.size == 1 )
        var_0[0]._id_2919 = var_1;

    foreach ( var_6 in var_0 )
    {
        var_7 = _id_6384( var_6, "attackers" );

        if ( var_7.size > var_6._id_2919 )
        {
            var_7 = _id_077B::_id_1B94( var_7 );

            foreach ( var_9 in var_7 )
            {
                if ( !var_9._id_864A )
                {
                    var_9._id_4133 = undefined;
                    var_9 _id_09D0::_id_2740();
                    break;
                }
            }
        }
    }

    foreach ( var_6 in var_0 )
    {
        if ( !_id_854E( var_6 ) && !isdefined( _id_6382( var_6 ) ) )
        {
            var_7 = _id_6384( var_6, "attackers" );

            if ( var_7.size > 0 )
            {
                var_13 = _id_077B::_id_634A( var_6._id_292B._id_02EA, var_7 );
                var_13[0]._id_864A = 1;
                var_13[0] _id_09D0::_id_2740();
            }
        }
    }
}

_id_FB55( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in level._id_AE69 )
    {
        if ( _id_0A67::_id_872A( var_3 ) && isai( var_3 ) && var_3 _id_87DB() )
            var_1++;
    }

    if ( var_0.size == 2 )
    {
        var_0[0]._id_291A = int( var_1 / 2 );
        var_0[1]._id_291A = int( var_1 / 2 );
        var_0[level._id_A155]._id_291A = var_0[level._id_A155]._id_291A + var_1 % 2;

        for ( var_5 = 0; var_5 < var_0.size; var_5++ )
        {
            if ( _id_854E( var_0[var_5] ) )
            {
                var_0[var_5]._id_291A++;
                var_0[1 - var_5]._id_291A--;
            }
        }
    }
    else if ( var_0.size == 1 )
        var_0[0]._id_291A = var_1;

    foreach ( var_7 in var_0 )
    {
        var_8 = _id_6384( var_7, "defenders" );

        if ( var_8.size > var_7._id_291A )
        {
            var_8 = _id_077B::_id_1B94( var_8 );

            foreach ( var_10 in var_8 )
            {
                if ( !var_10._id_8586 )
                {
                    var_10._id_4133 = undefined;
                    var_10 _id_09D0::_id_2740();
                    break;
                }
            }
        }
    }

    foreach ( var_7 in var_0 )
    {
        if ( _id_854E( var_7 ) )
        {
            var_14 = _id_6381( var_7 );

            if ( !isdefined( var_14 ) || gettime() > level._id_A476 )
            {
                var_8 = _id_6384( var_7, "defenders" );

                if ( var_8.size > 0 )
                {
                    var_15 = _id_077B::_id_634A( var_7._id_292B._id_02EA, var_8 );

                    if ( !isdefined( var_14 ) || var_15[0] != var_14 )
                    {
                        var_15[0]._id_8586 = 1;
                        var_15[0] _id_09D0::_id_2740();

                        if ( isdefined( var_14 ) )
                        {
                            var_14._id_8586 = 0;
                            var_14 notify( "no_longer_bomb_defuser" );
                        }
                    }
                }

                level._id_A476 = gettime() + 2500;
            }
        }
    }
}

_id_854E( var_0 )
{
    return isdefined( var_0._id_263D ) && var_0._id_263D == 1;
}

_id_7EEE()
{
    if ( isdefined( level._id_291F ) && level._id_291F )
        return;

    level._id_291F = 1;
    level._id_A155 = _func_01B8( 2 );
    level._id_BBFA = 2;
    level._id_418D = _func_01B8( 2 );
    level._id_A472 = gettime() + 90000;
    level._id_A476 = 0;
}
