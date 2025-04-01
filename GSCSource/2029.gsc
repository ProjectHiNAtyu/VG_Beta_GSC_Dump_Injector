// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_809B()
{
    if ( !isdefined( level._id_E0F8 ) )
        level._id_E0F8 = 250000;

    if ( !isdefined( level._id_540A ) )
        level._id_540A = 810000;

    _id_C24C( "preferOptimalTTLOS", ::_id_BB7C, 0, undefined );
    _id_C24C( "avoidShortTimeToEnemySight", ::_id_1F93, 0, undefined );
    _id_C24C( "preferAlliesByDistance", ::_id_BB72, 0, undefined );
    _id_C24C( "preferCloseToAlly", ::_id_BB75, 0, undefined );
    _id_C24C( "avoidRecentlyUsedByEnemies", ::_id_1F8E, 0, undefined );
    _id_C24C( "avoidEnemiesByDistance", ::_id_1F82, 0, undefined );
    _id_C24C( "avoidEnemyInfluence", ::_id_1F83, 0, undefined );
    _id_C24C( "avoidLastDeathLocation", ::_id_1F89, 0, undefined );
    _id_C24C( "avoidLastAttackerLocation", ::_id_1F88, 0, undefined );
    _id_C24C( "avoidShortTimeToJumpingEnemySight", ::_id_1F94, 0, undefined );
    _id_C24C( "avoidVeryShortTimeToJumpingEnemySight", ::_id_1F96, 0, undefined );
    _id_C24C( "avoidSameSpawn", ::_id_1F92, 0, undefined );
    _id_C24C( "avoidRecentlyUsedByAnyone", ::_id_1F8D, 0, undefined );
    _id_C24C( "randomSpawnScore", ::_id_C009, 0, undefined );
    _id_C24C( "preferNearLastTeamSpawn", ::_id_BB79, 0, undefined );
    _id_C24C( "preferNearGroupsOfTeamMates", ::_id_BB78, 0, undefined );
    _id_C24C( "preferOccupiedLanes", ::_id_BB7B, 0, undefined );
    _id_C24C( "preferToBalanceLanes", ::_id_BB83, 0, undefined );
    _id_C24C( "avoidClosestEnemy", ::_id_1F7D, 0, undefined );
    _id_C24C( "scriptOnlyTest", ::_id_CF87, 1, [ "test" ] );
    _id_C24C( "avoidClosestEnemyByDistance", ::_id_1F7E, 1, [ "closestEnemyInfluenceDistSq" ] );
    _id_C24C( "preferNearSinglePoint", ::_id_BB7A, 1, [ "singlePointPos", "minDistToSinglePointSq", "maxDistToSinglePointSq", "distRangeToSinglePointSq" ] );
    _id_C24C( "preferDomPoints", ::_id_BB76, 1, [ "preferredDomPoints", "secondaryDomPoints" ] );
    _id_C24C( "preferShortestDistToKOTHZone", ::_id_BB82, 1, [ "activeKOTHZoneNumber", "maxSquaredDistToObjective" ] );
    _id_C24C( "avoidCloseToKOTHZone", ::_id_1F7F, 1, [ "activeKOTHZoneNumber", "kothZoneDeadzoneDistSq" ] );
    _id_C24C( "preferClosePoints", ::_id_BB74, 1, [ "closestPoints" ] );
    _id_C24C( "avoidRugbyOffsides", ::_id_1F90, 1, [ "juggPos", "rugbyFieldDir2D" ] );
    _id_C24C( "oneUseSpawns", ::_id_AAC0, 1, undefined );
    _id_8181();
}

_id_C24C( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._id_E2F1._id_587A ) )
        level._id_E2F1._id_587A = [];

    var_4 = _func_020F();
    level._id_E2F1._id_587A[var_0] = var_4;
    var_4._id_6018 = var_1;
    var_4._id_AE36 = var_3;
    var_4._id_8A04 = var_2;
}

_id_8833( var_0 )
{
    return isdefined( level._id_E2F1._id_587A[var_0] );
}

_id_8834( var_0 )
{
    return level._id_E2F1._id_587A[var_0]._id_8A04;
}

_id_6A11( var_0 )
{
    return level._id_E2F1._id_587A[var_0]._id_6018;
}

_id_6A12( var_0 )
{
    return level._id_E2F1._id_587A[var_0]._id_AE36;
}

_id_2EC0( var_0, var_1, var_2 )
{
    if ( !_id_8833( var_1 ) )
        return 0;

    var_3 = _id_6A11( var_1 );
    var_4 = _id_6A12( var_1 );
    var_5 = level._id_E2F1._id_0F34;

    if ( isdefined( var_4 ) )
    {
        if ( !isdefined( var_5._id_5879 ) )
        {

        }
    }

    var_13 = [[ var_3 ]]( var_0 );
    var_13 = clamp( var_13, 0, 100 );
    var_13 = var_13 * var_2;
    var_0._id_F37A = var_0._id_F37A + 100 * var_2;
    var_0._id_9024[self._id_045B] = var_0._id_9024[self._id_045B] + var_13;
    var_0._id_0470 = var_0._id_0470 + var_13;
    return var_13;
}

_id_4068( var_0, var_1 )
{
    var_2 = [[ var_0 ]]( var_1 );
    var_2 = clamp( var_2, 0, 100 );
    return var_2;
}

_id_1F7B( var_0 )
{
    foreach ( var_2 in level._id_3248 )
    {
        if ( !isdefined( var_2 ) )
            continue;

        if ( distancesquared( var_0._id_02EA, var_2._id_02EA ) < 22500 )
            return 0;
    }

    return 100;
}

_id_1F7A( var_0 )
{
    if ( isdefined( level._id_2AAF ) )
    {
        foreach ( var_2 in level._id_2AAF._id_0F3E["total"] )
        {
            if ( distancesquared( var_0._id_02EA, var_2._id_02EA ) < 50625 )
                return 0;
        }

        foreach ( var_2 in level._id_2AAF._id_7D6C["total"] )
        {
            if ( distancesquared( var_0._id_02EA, var_2._id_02EA ) < 50625 )
                return 0;
        }
    }

    return 100;
}

_id_1F86( var_0 )
{
    foreach ( var_2 in level._id_715A )
    {
        if ( !isdefined( var_2 ) || !var_2 _id_8829( self ) || istrue( var_2._id_DB85 ) )
            continue;

        if ( distancesquared( var_0._id_02EA, var_2._id_02EA ) < 122500 )
            return 0;
    }

    return 100;
}

_id_1F8A( var_0 )
{
    var_1 = level._id_9ECB;

    if ( isdefined( level._id_F4BD ) && level._id_F4BD.size > 0 )
        var_1 = _id_077B::_id_1B72( var_1, level._id_F4BD );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3 ) || !var_3 _id_8829( self ) || istrue( var_3._id_DB85 ) )
            continue;

        if ( distancesquared( var_0._id_02EA, var_3._id_02EA ) < 122500 )
            return 0;
    }

    return 100;
}

_id_8829( var_0 )
{
    if ( !level._id_EF62 || level._id_5F86 || !isdefined( var_0._id_045B ) )
        return 1;
    else
    {
        var_1 = undefined;

        if ( isdefined( self._id_02F2 ) )
        {
            if ( var_0 == self._id_02F2 )
                return 1;

            var_1 = self._id_02F2._id_045B;
        }

        if ( isdefined( var_1 ) )
            return var_1 != var_0._id_045B;
        else
            return 1;
    }
}

_id_1F80( var_0 )
{
    var_1 = "all";

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];

    if ( var_0._id_3D51[var_1] > 0 )
        return 0;

    return 100;
}

_id_1F85( var_0 )
{
    var_1 = "all";

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];

    if ( var_0._id_5FDA[var_1] > 0 )
        return 0;

    return 100;
}

_id_1F7C( var_0 )
{
    var_1 = [];
    var_2 = [];

    if ( level._id_EF62 )
        var_1[0] = _id_0A7C::_id_69E2( self._id_045B )[0];
    else
        var_1[var_1.size] = "all";

    foreach ( var_4 in var_1 )
    {
        if ( var_0._id_F378[var_4] == 0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    if ( var_2.size == 0 )
        return 100;

    foreach ( var_4 in var_2 )
    {
        if ( var_0._id_9EA2[var_4] < level._id_E0F8 )
            return 0;
    }

    return 100;
}

_id_1F95( var_0 )
{
    return 100;
}

_id_1F92( var_0 )
{
    if ( isdefined( self._id_9035 ) && self._id_9035 == var_0 )
        return 0;

    return 100;
}

_id_1F84( var_0 )
{
    if ( isdefined( self._id_045B ) && isdefined( var_0._id_9037 ) && ( !level._id_EF62 || var_0._id_9037 != self._id_045B ) )
    {
        var_1 = var_0._id_9038 + 500;

        if ( gettime() < var_1 )
            return 0;
    }

    return 100;
}

_id_1F8E( var_0 )
{
    var_1 = !level._id_EF62 || isdefined( var_0._id_9037 ) && self._id_045B != var_0._id_9037;

    if ( var_1 && isdefined( var_0._id_9038 ) )
    {
        var_2 = gettime() - var_0._id_9038;
        var_0._id_172D._id_E39C = var_2 / 1000;

        if ( var_2 > 4000 )
            return 100;

        return var_2 / 4000 * 100;
    }

    return 100;
}

_id_1F8D( var_0 )
{
    if ( isdefined( var_0._id_9038 ) )
    {
        var_1 = gettime() - var_0._id_9038;
        var_0._id_172D._id_F26F = var_1 / 1000;

        if ( var_1 > 4000 )
            return 100;

        return var_1 / 4000 * 100;
    }

    return 100;
}

_id_1F89( var_0 )
{
    if ( !isdefined( self._id_8FA4 ) )
        return 100;

    var_1 = distancesquared( var_0._id_02EA, self._id_8FA4 );

    if ( var_1 > 810000 )
        return 100;

    var_2 = var_1 / 810000;
    return var_2 * 100;
}

_id_1F88( var_0 )
{
    if ( !isdefined( self._id_0251 ) || !isdefined( self._id_0251._id_02EA ) )
        return 100;

    if ( !_id_0A74::_id_89D3( self._id_0251 ) )
        return 100;

    var_1 = distancesquared( var_0._id_02EA, self._id_0251._id_02EA );

    if ( var_1 > 810000 )
        return 100;

    var_2 = var_1 / 810000;
    return var_2 * 100;
}

_id_8181()
{
    var_0 = _id_6A51();

    if ( getdvarint( "scr_ignore_frontline_anchor", 0 ) == 1 )
        return;

    var_1 = [];

    if ( istrue( level._id_F0E1 ) )
    {
        var_2 = getdvarfloat( "scr_tdmAnywhere_frontlineHeading", _func_01B7( 0, 359 ) );
        var_0._id_FEFE = 1;
        var_0._id_174B = anglestoforward( ( 0, var_2, 0 ) );
        var_0._id_175B = anglestoright( ( 0, var_2, 0 ) );

        if ( isdefined( level._id_9A95 ) )
            var_0._id_BCBF = ( level._id_9A95[0], level._id_9A95[1], 0 );

        level._id_EF36 = var_0;
    }
    else
    {
        var_1 = getentarray( "mp_frontline_anchor", "classname" );

        if ( isdefined( _id_0999::_id_6AF9() ) )
        {
            var_3 = [];

            foreach ( var_5 in var_1 )
            {
                if ( isdefined( var_5._id_0375 ) && var_5._id_0375 == level._id_96B5 )
                {
                    var_3[var_3.size] = var_5;
                    continue;
                }

                var_5 _meth_809A();
            }

            var_1 = var_3;
        }
        else if ( var_1.size != 1 )
        {
            var_7 = [];

            foreach ( var_5 in var_1 )
            {
                if ( !isdefined( var_5._id_0375 ) || !_func_0121( var_5._id_0375, "locale" ) )
                {
                    var_7[var_7.size] = var_5;
                    continue;
                }

                var_5 _meth_809A();
            }

            var_1 = var_7;
        }

        if ( var_1.size != 0 )
        {
            if ( !isdefined( var_1[0]._id_0054 ) )
                var_1[0]._id_0054 = ( 0, 0, 0 );

            var_0._id_FEFE = 1;
            var_0._id_174B = anglestoforward( var_1[0]._id_0054 );
            var_0._id_BCBF = ( var_1[0]._id_02EA[0], var_1[0]._id_02EA[1], 0 );
        }
    }
}

_id_FC6D( var_0 )
{
    if ( !_id_FC6F() )
        return;

    _id_CA30( var_0 );
    _id_FC6E();
}

_id_FC6F()
{
    if ( !_id_41D1() )
        return 0;

    var_0 = _id_6A51();
    var_1 = gettime();

    if ( !isdefined( var_0._id_909C ) )
        var_0._id_909C = var_1;
    else if ( var_0._id_8716["allies"] && var_0._id_8716["axis"] )
        var_0._id_FDAA = var_0._id_FDAA + var_0._id_909D;
    else
        var_0._id_4E9B = var_0._id_4E9B + var_0._id_909D;

    var_2 = ( var_1 - var_0._id_909C ) / 1000.0;
    var_0._id_909C = var_1;
    var_0._id_909D = var_2;
    var_3 = _id_6A3D( "allies" );

    if ( !isdefined( var_3 ) )
        return 0;

    var_3 = ( var_3[0], var_3[1], 0 );
    var_0._id_14E5 = var_3;
    var_4 = _id_6A3D( "axis" );

    if ( !isdefined( var_4 ) )
        return 0;

    var_4 = ( var_4[0], var_4[1], 0 );
    var_0._id_1FBA = var_4;

    if ( var_0._id_FEFE )
    {
        var_5 = var_3 - var_0._id_BCBF;
        var_6 = _func_0257( var_0._id_174B, var_5 );
        var_7 = var_0._id_174B * var_6 + var_0._id_BCBF;
        var_0._id_BD8A = var_7;
        var_5 = var_4 - var_0._id_BCBF;
        var_8 = _func_0257( var_0._id_174B, var_5 );
        var_9 = var_0._id_174B * var_8 + var_0._id_BCBF;
        var_0._id_BD8B = var_9;
        var_10 = abs( var_6 - var_8 );

        if ( var_10 < 600 && isdefined( var_0._id_EF69 ) )
            var_0._id_3BC8 = 1;
        else
        {
            var_0._id_3BC8 = 0;
            var_0._id_9E74 = var_7 + ( var_9 - var_7 ) * 0.5;
            var_11 = var_9 - var_7;
            var_0._id_EF69 = vectordot( var_11 );
        }
    }
    else
    {
        var_12 = var_4 - var_3;
        var_13 = vectordot( var_12 );
        var_0._id_EF69 = var_13;
        var_14 = var_3 + var_12 * 0.5;
        var_0._id_9E74 = var_14;
    }

    var_15 = anglestoforward( ( 0, var_0._id_EF69, 0 ) );
    var_16 = level._id_E34A;
    var_16 = _id_07EF::_id_34D2( var_16 );

    foreach ( var_18 in var_16 )
    {
        var_19 = var_0._id_9E74 - var_18._id_02EA;
        var_20 = _func_0257( var_19, var_15 );
        var_18._id_5FC3 = _id_077B::_id_F07F( var_20 > 0, "allies", "axis" );
    }

    return 1;
}

_id_FC6E()
{
    var_0 = isdefined( level._id_9BC3 ) && isdefined( level._id_9BBA );
    var_1 = _id_0780::_id_1740();

    if ( !var_0 && !var_1 )
        return;

    var_2 = _id_6A51();

    if ( !isdefined( var_2._id_9786 ) && isdefined( level._id_9BBA ) )
    {
        var_2._id_9786 = [];
        var_2._id_9786["alliesCenter"] = [[ level._id_9BBA ]]();
        var_2._id_9786["axisCenter"] = [[ level._id_9BBA ]]();
    }

    if ( !var_2._id_8716["allies"] && !var_2._id_8716["axis"] )
        return;

    var_3 = ( var_2._id_9E74[0], var_2._id_9E74[1], level._id_9A95[2] );
    var_4 = anglestoright( ( 0, var_2._id_EF69, 0 ) );
    _id_977F( var_3, var_4, var_2._id_8716["allies"], var_2._id_8716["axis"] );

    if ( isdefined( level._id_9BC3 ) )
    {
        var_5 = _id_077B::_id_F07F( var_2._id_8716["axis"], var_2._id_1FBA, ( 10000, 10000, 10000 ) );
        [[ level._id_9BC3 ]]( var_2._id_9786["axisCenter"], "axis", "ANCHOR", var_5[0], var_5[1], gettime() );
        var_6 = _id_077B::_id_F07F( var_2._id_8716["allies"], var_2._id_14E5, ( 10000, 10000, 10000 ) );
        [[ level._id_9BC3 ]]( var_2._id_9786["alliesCenter"], "allies", "ANCHOR", var_6[0], var_6[1], gettime() );
    }
}

_id_977F( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( level._id_9BC3 ) )
    {
        var_4 = var_0 + var_1 * 5000;
        var_5 = var_0 - var_1 * 5000;

        if ( !isdefined( level._id_9BB9 ) )
            level._id_9BB9 = [[ level._id_9BBA ]]();

        var_6 = undefined;

        if ( var_2 && var_3 )
            var_6 = "FRONT_LINE";
        else
            var_6 = _id_077B::_id_F07F( var_2, "FRONT_LINE_ALLIES", "FRONT_LINE_AXIS" );

        [[ level._id_9BC3 ]]( level._id_9BB9, "allies", var_6, var_4[0], var_4[1], gettime(), undefined, var_5[0], var_5[1] );
    }
}

_id_6A3D( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_B758 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        if ( !_id_0A74::_id_89D3( var_3 ) )
            continue;

        if ( !var_3 _id_0A74::_id_8970() )
            continue;

        if ( var_3._id_045B == var_0 )
            var_1[var_1.size] = var_3;
    }

    if ( var_1.size == 0 )
        return undefined;

    var_5 = _id_0A67::_id_68D2( var_1 );
    return var_5;
}

_id_CA30( var_0 )
{
    if ( !_id_41D1() )
        return;

    var_1 = _id_6A51();
    var_1._id_8716[var_0] = 1;

    if ( getdvarint( "#x36491c57149e188a4" ) == 0 )
        return;

    var_2 = getdvarint( "#x3889309a3ece0fd2e", 0 );

    if ( var_2 == 0 )
        var_2 = 4;

    var_3 = _id_0A69::_id_6BC3( var_0 )[0];
    var_4 = 0;
    var_5 = level._id_E34A;
    var_5 = _id_07EF::_id_34D2( var_5 );

    foreach ( var_7 in var_5 )
    {
        if ( !isdefined( var_7._id_5FC3 ) || var_7._id_5FC3 != var_0 )
            continue;

        if ( !isdefined( var_7._id_5FDA ) || !isdefined( var_7._id_5FDA[var_3] ) || var_7._id_5FDA[var_3] <= 0 )
            var_4++;
    }

    var_9 = var_4 / var_5.size;

    if ( var_4 < var_2 || var_9 < 0.0 )
    {
        if ( var_4 < var_2 )
            var_1._id_4A86[var_0] = 0;
        else
            var_1._id_4A86[var_0] = 1;

        var_1._id_8716[var_0] = 0;
    }
}

_id_41D1()
{
    return istrue( level._id_E2F1._id_5FC1[level._id_E2F1._id_0F35] );
}

_id_6A51()
{
    if ( !isdefined( level._id_5FC0 ) )
    {
        level._id_5FC0 = _func_020F();
        level._id_5FC0._id_8716 = [];
        level._id_5FC0._id_8716["allies"] = 0;
        level._id_5FC0._id_8716["axis"] = 0;
        level._id_5FC0._id_FDAA = 0.0;
        level._id_5FC0._id_4E9B = 0.0;
        level._id_5FC0._id_3BC8 = 0;
        level._id_5FC0._id_FEFE = 0;
    }

    return level._id_5FC0;
}

_id_BB72( var_0 )
{
    if ( var_0._id_F378[self._id_045B] == 0 )
        return 0;

    var_1 = var_0._id_4B9A[self._id_045B] / var_0._id_F378[self._id_045B];
    var_1 = _func_0148( var_1, 3240000 );
    var_0._id_172D._id_15FA = var_1;
    var_2 = 1 - var_1 / 3240000;
    return var_2 * 100;
}

_id_BB75( var_0 )
{
    var_1 = _func_0148( var_0._id_9EA2[self._id_045B], 3240000 );
    var_2 = 1 - var_1 / 3240000;
    return var_2 * 100;
}

_id_1F82( var_0 )
{
    var_1 = [];
    var_2 = [];

    if ( level._id_EF62 )
        var_1[0] = _id_0A7C::_id_69E2( self._id_045B )[0];
    else
        var_1[var_1.size] = "all";

    foreach ( var_4 in var_1 )
    {
        if ( var_0._id_F378[var_4] == 0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    if ( var_2.size == 0 )
        return 100;

    foreach ( var_4 in var_2 )
    {
        if ( var_0._id_9EA2[var_4] < 250000 )
            return 0;
    }

    var_8 = 0;
    var_9 = 0;

    foreach ( var_4 in var_2 )
    {
        var_8 = var_8 + var_0._id_4B9B[var_4];
        var_9 = var_9 + var_0._id_F378[var_4];
    }

    var_12 = var_8 / var_9;
    var_12 = _func_0148( var_12, 7290000 );
    var_13 = var_12 / 7290000;
    var_0._id_172D._id_53E5 = var_12;
    return var_13 * 100;
}

_id_1F83( var_0 )
{
    var_1 = undefined;

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];
    else
        var_1 = "all";

    if ( var_0._id_9EA2[var_1] < level._id_540A )
        return 0;

    return 100;
}

_id_1F7D( var_0 )
{
    var_1 = [];
    var_2 = [];

    if ( level._id_EF62 )
        var_1[0] = _id_0A7C::_id_69E2( self._id_045B )[0];
    else
        var_1[var_1.size] = "all";

    foreach ( var_4 in var_1 )
    {
        if ( var_0._id_F378[var_4] == 0 )
            continue;

        var_2[var_2.size] = var_4;
    }

    if ( var_2.size == 0 )
        return 100;

    var_6 = 0;

    foreach ( var_4 in var_2 )
    {
        if ( var_0._id_9EA2[var_4] < 250000 )
            return 0;

        var_8 = _func_0148( var_0._id_9EA2[var_4], 3240000 );
        var_9 = var_8 / 3240000;
        var_6 = var_6 + var_9 * 100;
    }

    return var_6 / var_2.size;
}

_id_1F7E( var_0 )
{
    var_1 = level._id_E2F1._id_0F34._id_5879["closestEnemyInfluenceDistSq"];
    var_2 = "all";

    if ( level._id_EF62 )
        var_2 = _id_0A7C::_id_69E2( self._id_045B )[0];

    var_3 = 0;

    foreach ( var_5 in level._id_EF67[var_2]["players"] )
    {
        var_6 = distancesquared( var_0._id_02EA, var_5._id_02EA );

        if ( var_6 < var_3 )
            var_3 = var_6;
    }

    if ( var_3 < 250000 )
        return 0;

    var_8 = _func_0148( var_3, var_1 );
    var_9 = var_8 / var_1;
    return var_9 * 100;
}

_id_BB76( var_0 )
{
    var_1 = level._id_E2F1._id_0F34._id_5879["preferredDomPoints"];
    var_2 = level._id_E2F1._id_0F34._id_5879["secondaryDomPoints"];
    var_3 = var_0._id_CF28;

    if ( isdefined( var_3._id_4D0A ) )
    {
        if ( var_3._id_4D0A & var_1 )
            return 100;
        else if ( var_3._id_4D0A & var_2 )
            return 50.0;
    }

    return 0;
}

_id_BB74( var_0 )
{
    var_1 = level._id_E2F1._id_0F34._id_5879["closestPoints"];

    foreach ( var_3 in var_1 )
    {
        if ( var_0 == var_3 )
            return 100;
    }

    return 0;
}

_id_BB73( var_0, var_1 )
{
    if ( isdefined( var_0._id_EF61 ) && var_0._id_EF61 == var_1 )
        return 100;

    return 0;
}

_id_BB7C( var_0 )
{
    var_1 = "all";

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];

    var_2 = 1.0 - var_0._id_9C8A[var_1];
    var_3 = _id_07EE::_id_6B1C();
    var_4 = var_2 * var_3;

    if ( var_4 > 600 )
    {
        var_5 = ( var_3 - var_4 ) / ( var_3 - 600 );
        return 100 * var_5;
    }
    else
    {
        var_5 = var_4 / 600;
        return 100 * var_5;
    }
}

_id_1F93( var_0 )
{
    var_1 = "all";

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];

    var_2 = 1.0 - var_0._id_9C8A[var_1];
    var_0._id_172D._id_9C53 = var_2;
    return ( 1.0 - var_2 ) * 0 + var_2 * 100;
}

_id_1F94( var_0 )
{
    var_1 = "all";

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];

    var_2 = 1.0 - var_0._id_9C66[var_1];
    var_0._id_172D._id_9C65 = var_2;
    return ( 1.0 - var_2 ) * 0 + var_2 * 100;
}

_id_1F96( var_0 )
{
    var_1 = "all";

    if ( level._id_EF62 )
        var_1 = _id_0A7C::_id_69E2( self._id_045B )[0];

    var_2 = 1.0 - var_0._id_9C66[var_1];
    var_3 = var_2 * _id_07EE::_id_6B1C();

    if ( var_3 < 300 )
        return 0;
    else
        return 100;
}

_id_C009( var_0 )
{
    var_0._id_172D._id_C008 = _func_01B9( 0, 99 );
    return var_0._id_172D._id_C008;
}

_id_9C7D( var_0 )
{
    return 3240000;
}

_id_BB82( var_0 )
{
    var_1 = level._id_E2F1._id_0F34;
    var_2 = var_1._id_5879["activeKOTHZoneNumber"];
    var_3 = var_0._id_CF28._id_4B98[var_2];
    var_4 = var_1._id_5879["maxSquaredDistToObjective"];
    var_5 = 1.0 - var_3 / var_4;
    return 100 * var_5 + 0;
}

_id_1F7F( var_0 )
{
    var_1 = level._id_E2F1._id_0F34;
    var_2 = var_1._id_5879["activeKOTHZoneNumber"];
    var_3 = var_0._id_CF28._id_4B98[var_2];
    var_4 = var_1._id_5879["kothZoneDeadzoneDistSq"];
    return _id_077B::_id_F07F( var_3 < var_4, 0, 100 );
}

_id_BB79( var_0 )
{
    var_1 = level._id_E2F1._id_9089[self._id_045B];

    if ( !isdefined( var_1 ) )
        return 0;

    var_2 = distancesquared( var_1._id_02EA, var_0._id_02EA );
    var_2 = int( _func_0148( var_2, 9000000 ) );
    var_3 = 1.0 - var_2 / 9000000;
    return 100 * var_3 + 0;
}

_id_BB78( var_0 )
{
    var_1 = level._id_E2F1;
    var_2 = -1;

    foreach ( var_4 in var_1.teambased[self._id_045B]._id_39E6 )
    {
        if ( var_4._id_B758.size <= 1 )
            continue;

        var_5 = distance2dsquared( var_4._id_3360, var_0._id_02EA );

        if ( var_2 < 0 || var_5 < var_2 )
            var_2 = var_5;
    }

    if ( var_2 < 0 )
        return 0;

    if ( var_2 < 10000 )
        return 100;

    var_2 = int( _func_0148( var_2, 9000000 ) );
    var_7 = 1.0 - ( var_2 - 10000 ) / 8990000;
    return 100 * var_7 + 0;
}

_id_BB7B( var_0 )
{
    var_1 = level._id_E2F1;
    var_2 = "all";

    if ( level._id_EF62 )
        var_2 = _id_0A7C::_id_69E2( self._id_045B )[0];

    if ( !isdefined( var_1._id_A915[var_2] ) )
        return 0;

    if ( ( var_0._id_8E93 & var_1._id_A915[var_2] ) != 0 )
        return 100;
    else
        return 0;
}

_id_BB83( var_0 )
{
    var_1 = level._id_E2F1;
    var_2 = _id_07EE::_id_6D40( self );
    var_3 = "all";

    if ( level._id_EF62 )
        var_3 = _id_0A7C::_id_69E2( var_2 )[0];

    if ( !isdefined( var_1._id_A915[var_3] ) )
        return 0;

    var_4 = var_0._id_8E93 & var_1._id_A915[var_3];
    var_5 = isdefined( var_1._id_A915[var_2] ) && var_0._id_8E93 & var_1._id_A915[var_2];

    if ( var_4 && !var_5 )
        return 100;
    else
        return 0;
}

_id_CF87( var_0 )
{
    return 0;
}

_id_BB7A( var_0 )
{
    var_1 = level._id_E2F1._id_0F34;
    var_2 = var_1._id_5879["singlePointPos"];
    var_3 = var_1._id_5879["minDistToSinglePointSq"];
    var_4 = var_1._id_5879["maxDistToSinglePointSq"];
    var_5 = var_1._id_5879["distRangeToSinglePointSq"];
    var_6 = distance2dsquared( var_2, var_0._id_02EA );

    if ( var_6 >= var_4 )
        return 0;

    if ( var_6 <= var_3 )
        return 100;

    var_7 = 1.0 - ( var_6 - var_3 ) / var_5;
    return 100 * var_7;
}

_id_1F90( var_0 )
{
    var_1 = level._id_E2F1._id_0F34;
    var_2 = var_1._id_5879["juggPos"];
    var_3 = var_1._id_5879["rugbyFieldDir2D"];
    var_4 = ( var_0._id_02EA - var_2 ) * ( 1, 1, 0 );
    var_5 = _func_0257( var_4, var_3 );

    if ( var_5 >= 0 )
        return 0;

    return 100;
}

_id_AAC0( var_0 )
{
    var_1 = var_0._id_CF28;

    if ( istrue( var_1._id_FE38 ) )
        return 0;
    else
        return 100;
}
