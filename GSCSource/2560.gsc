// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    level._id_CC11["s2_airstrike"] = 400;
    level._id_CC12["s2_airstrike"] = 75;
    level._id_CC10["s2_airstrike"] = -1;
    level._id_CC13["s2_airstrike"] = 6.0;
    level._id_CC0F["s2_airstrike"] = 8.0;
    _id_0A28::_id_C25C( "s2_airstrike", ::_id_F766 );
    level._id_8DBB["s2_airstrike"] = ::_id_F766;
    level._id_8DD6["s4_airstrike_bomb_mp"] = "s2_airstrike";
    level._id_8DD6["s4_airstrike_bomb_mp"] = "s2_airstrike";
    level._id_1346["allies"] = 0;
    level._id_1346["axis"] = 0;
}

_id_F766( var_0 )
{
    var_1 = 0;

    if ( !_id_09BC::_id_C58D() )
        return 0;

    if ( isdefined( level._id_8DD2 ) )
    {
        if ( !level [[ level._id_8DD2 ]]( var_0 ) )
        {
            _id_09BC::_id_396E();
            return 0;
        }
    }

    if ( isdefined( level._id_8DAD ) )
    {
        if ( !level [[ level._id_8DAD ]]( var_0 ) )
        {
            _id_09BC::_id_396E();
            return 0;
        }
    }

    if ( _id_0A04::_id_F791( var_1, "s2_airstrike" ) )
    {
        self._id_139E = 0;
        return 1;
    }

    _id_09BC::_id_396E();
    return 0;
}

_id_13BA( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level endon( "game_ended" );

    if ( isdefined( var_2 ) )
        var_2 endon( "disconnect" );

    level._id_3292 = 1;

    if ( isdefined( var_2 ) )
    {
        var_2 thread _id_AB50();
        var_2 thread _id_0A04::_id_13BD();
    }

    level._id_1346[_id_0A69::_id_6BC3( var_2._id_045B )[0]] = 1;

    if ( isdefined( level._id_0F23 ) )
    {
        foreach ( var_7 in level._id_0F23 )
        {
            if ( istrue( var_7._id_8725 ) )
                var_7 _id_0A6F::_id_4C35( 10000, var_2, var_2, _id_0A69::_id_6BC3( var_2._id_045B )[0], var_7._id_02EA, "MOD_EXPLOSIVE", "s4_airstrike_bomb_mp" );
        }
    }

    if ( scripts\mp\hud_util::_id_89BD() && isdefined( var_3 ) && isdefined( level._id_BF4E._id_CC0D ) && isdefined( level._id_BF4E._id_CC0D._id_13BC ) )
        thread [[ level._id_BF4E._id_CC0D._id_13BC ]]( 4.0 );
    else
        thread _id_1E4B();

    var_9 = 0;

    if ( isdefined( var_2 ) )
        var_9 = var_2 scripts\mp\hud_util::_id_0BF6( "specialty_improvedstreaks" );

    var_10 = 3;

    if ( var_9 )
        var_10 = 4;

    if ( scripts\mp\hud_util::_id_89BD() && isdefined( var_3 ) && isdefined( level._id_BF4E._id_CC0D ) && isdefined( level._id_BF4E._id_CC0D._id_13B8 ) )
        var_10 = _func_0037( 3 * level._id_BF4E._id_CC0D._id_13B8 );

    if ( isdefined( level._id_0DD3 ) && level._id_0DD3 )
        var_10 = 1;

    _id_09BC::_id_396E();

    for ( var_11 = 0; var_11 < var_10 && !_id_0A69::_id_8722(); var_11++ )
    {
        if ( isdefined( level._id_0DD3 ) && level._id_0DD3 )
            wait 1.0;
        else
            wait 4.0;

        var_12 = _id_0A04::_id_6B0D();

        if ( _id_0999::_id_6B0E() == "mp_airship" )
            var_12 = var_12 - 180;

        var_13 = [];

        for ( var_14 = -5; var_14 < 6; var_14++ )
        {
            var_15 = _func_020F();
            var_15._id_02EA = ( level._id_9A95[0] + cos( var_12 + 90 ) * var_14 * 700, level._id_9A95[1] + _func_01FE( var_12 + 90 ) * var_14 * 700, level._id_9A95[2] );
            var_15._id_C94A = abs( ( abs( var_14 ) - 5 ) / 50 );
            var_13[var_13.size] = var_15;
        }

        if ( isdefined( var_3 ) )
        {
            if ( isdefined( var_5 ) )
                var_12 = var_5;

            if ( isdefined( var_4 ) )
                thread _id_0A04::_id_E71D( var_0, [ var_4 ], [ var_12 ], var_1, var_3 );
            else
            {
                var_16 = _id_68F1( var_13, var_12, var_3 );
                thread _id_0A04::_id_E71D( var_0, [ var_16._id_02EA ], [ var_12 ], var_1, var_3 );
            }
        }
        else
        {
            var_16 = var_2 _id_68F1( var_13, var_12 );
            var_2 thread _id_0A04::_id_E71D( var_0, [ var_16._id_02EA ], [ var_12 ], var_1 );
        }

        if ( var_9 )
        {
            wait 7.5;
            continue;
        }

        wait 10.0;
    }

    wait 4.0;
    level._id_3292 = undefined;
    level._id_1346[_id_0A69::_id_6BC3( var_2._id_045B )[0]] = 0;
    level notify( "carpetBombingEnded" );

    if ( isdefined( var_2 ) )
        var_2 notify( "carpetBombingEnded" );
}

_id_1E4B()
{
    var_0 = scripts\mp\hud_util::_id_40D2( "mp_ks_air_raid_siren", undefined, level._id_9A95 + ( 0, 0, 200 ) );
}

_id_68F1( var_0, var_1, var_2 )
{
    foreach ( var_4 in level._id_B758 )
    {
        if ( !scripts\mp\hud_util::_id_89D3( var_4 ) )
            continue;

        if ( isdefined( var_2 ) )
        {
            if ( level._id_EF62 && var_4._id_045B == var_2 )
                continue;
        }
        else if ( level._id_EF62 && var_4._id_045B == self._id_045B && var_4 != self )
            continue;

        if ( var_4._id_045B == "spectator" )
            continue;

        var_5 = 999999999;
        var_6 = undefined;
        var_7 = 999999999;
        var_8 = undefined;

        foreach ( var_10 in var_0 )
        {
            var_11 = distance2d( ( var_10._id_02EA[0] * cos( var_1 + 90 ), var_10._id_02EA[1] * _func_01FE( var_1 + 90 ), 0 ), ( var_4._id_02EA[0] * cos( var_1 + 90 ), var_4._id_02EA[1] * _func_01FE( var_1 + 90 ), 0 ) );

            if ( var_11 <= var_5 )
            {
                var_7 = var_5;
                var_8 = var_6;
                var_5 = var_11;
                var_6 = var_10;
            }
            else if ( var_11 <= var_7 )
            {
                var_7 = var_11;
                var_8 = var_10;
            }

            if ( isdefined( self ) && var_4 == self && var_11 <= 1000 )
            {
                if ( _id_0999::_id_6B0E() != "mp_shipment_s2" && _id_0999::_id_6B0E() != "mp_sandbox_01" )
                {
                    if ( !scripts\mp\hud_util::_id_2D16( var_4._id_02EA + ( 0, 0, 32 ), var_4._id_02EA + ( 0, 0, 10000 ), 0, var_4 ) )
                    {
                        var_10._id_C94A = var_10._id_C94A - 3.25;
                        continue;
                    }

                    var_10._id_C94A = var_10._id_C94A - 6;
                }
            }
        }

        if ( isdefined( self ) && var_4 == self )
            continue;
        else
        {
            if ( !scripts\mp\hud_util::_id_2D16( var_4._id_02EA + ( 0, 0, 32 ), var_4._id_02EA + ( 0, 0, 10000 ), 0, var_4 ) )
            {
                var_6._id_C94A = var_6._id_C94A + 0.75;
                var_8._id_C94A = var_8._id_C94A + 0.5;
                continue;
            }

            var_6._id_C94A = var_6._id_C94A + 2.5;
            var_8._id_C94A = var_8._id_C94A + 1.75;
        }
    }

    if ( isdefined( var_2 ) )
        var_14 = var_2;
    else
        var_14 = self._id_045B;

    var_15 = level._id_C0E2[_id_0A69::_id_6BC3( var_14 )[0]];

    if ( !level._id_EF62 )
        var_15 = level._id_C0E2["all"];

    foreach ( var_17 in var_15 )
    {
        if ( !level._id_EF62 && var_17["player"] == self._id_723F )
            continue;

        var_5 = 999999999;
        var_6 = undefined;
        var_7 = 999999999;
        var_8 = undefined;

        foreach ( var_10 in var_0 )
        {
            var_11 = distance2d( ( var_10._id_02EA[0] * cos( var_1 + 90 ), var_10._id_02EA[1] * _func_01FE( var_1 + 90 ), 0 ), ( var_17["position"][0] * cos( var_1 + 90 ), var_17["position"][1] * _func_01FE( var_1 + 90 ), 0 ) );

            if ( var_11 <= var_5 )
            {
                var_7 = var_5;
                var_8 = var_6;
                var_5 = var_11;
                var_6 = var_10;
                continue;
            }

            if ( var_11 <= var_7 )
            {
                var_7 = var_11;
                var_8 = var_10;
            }
        }

        if ( !scripts\mp\hud_util::_id_2D16( var_17["position"] + ( 0, 0, 32 ), var_17["position"] + ( 0, 0, 10000 ), 0, undefined ) )
        {
            var_6._id_C94A = var_6._id_C94A + 0.075;
            var_8._id_C94A = var_8._id_C94A + 0.05;
            continue;
        }

        var_6._id_C94A = var_6._id_C94A + 0.125;
        var_8._id_C94A = var_8._id_C94A + 0.1;
    }

    var_21 = var_0[0];

    foreach ( var_10 in var_0 )
    {
        if ( var_10._id_C94A > var_21._id_C94A )
        {
            var_21 = var_10;
            continue;
        }

        if ( var_10._id_C94A == var_21._id_C94A )
        {
            if ( _id_077B::_id_3A02() )
                var_21 = var_10;
        }
    }

    return var_21;
}

_id_AB50()
{
    self endon( "carpetBombingEnded" );
    self waittill( "disconnect" );
    level._id_3292 = undefined;
    level._id_1395 = undefined;
    level notify( "aud_carpet_bomb_killed" );
}
