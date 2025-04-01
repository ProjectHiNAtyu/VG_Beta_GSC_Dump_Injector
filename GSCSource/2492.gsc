// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0D58( var_0, var_1 )
{
    if ( !istrue( var_0._id_E725 ) )
    {
        if ( !_id_31BB() )
        {
            if ( isdefined( var_1 ) )
                var_1._id_58AA = "total_limit_exceeded";

            return undefined;
        }
    }

    var_2 = undefined;

    if ( isdefined( var_0._id_81E0 ) )
        var_2 = _func_0211( var_0._id_02AF, var_0._id_045A, var_0.type, var_0._id_02EA, var_0._id_0054, var_0._id_02F2, var_0._id_81E0 );
    else
        var_2 = _func_0211( var_0._id_02AF, var_0._id_045A, var_0.type, var_0._id_02EA, var_0._id_0054, var_0._id_02F2 );

    if ( !isdefined( var_2 ) )
    {
        if ( isdefined( var_1 ) )
            var_1._id_58AA = "total_limit_exceeded";

        return undefined;
    }

    if ( _id_099D::_id_8A10( "vehicle_tracking", "vehicle_spawned" ) )
        [[ _id_099D::_id_6D05( "vehicle_tracking", "vehicle_spawned" ) ]]( var_2 );

    var_2._id_E290 = var_0;
    level._id_102F1++;
    var_0._id_317A = 1;

    if ( !istrue( var_0._id_317A ) )
    {
        if ( istrue( var_0._id_E725 ) )
            _id_0D62( var_2 );
        else
            thread _id_10C25( var_2, 3 );
    }
    else
        _id_102ED( var_2, 1 );

    return var_2;
}

_id_0D54( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_020F();
    var_6 = _func_020F();
    var_6._id_02AF = var_4;
    var_6.type = var_3;
    var_6._id_02EA = var_1;
    var_6._id_0054 = var_2;
    var_6._id_02F2 = var_0;

    if ( !_id_31BB() )
    {
        if ( isdefined( var_5 ) )
            var_5._id_58AA = "total_limit_exceeded";

        return undefined;
    }

    var_7 = _func_0209( var_6._id_02F2, var_6._id_02EA, var_6._id_0054, var_6.type, var_6._id_02AF );

    if ( !isdefined( var_7 ) )
    {
        if ( isdefined( var_5 ) )
            var_5._id_58AA = "code";

        return undefined;
    }

    level._id_102F1++;
    return var_7;
}

_id_0B8F( var_0 )
{
    var_0 notify( "vehicle_deleted" );
    level._id_102F1--;

    if ( istrue( var_0._id_8A6B ) )
    {
        level._id_EBE1--;
        level._id_EBE2[var_0 getentitynumber()] = undefined;
    }

    var_0 _meth_809A();
    return 1;
}

_id_0D62( var_0 )
{
    if ( isdefined( var_0._id_317A ) )
        return 0;

    var_0 notify( "vehicle_wake_up_or_suspend" );

    if ( !istrue( var_0._id_8A6B ) )
    {
        var_0._id_8A6B = 1;
        level._id_EBE1++;
        level._id_EBE2[var_0 getentitynumber()] = var_0;

        if ( !var_0 _meth_8104() )
            var_0 _meth_8102();
    }

    return 1;
}

_unsetperk( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 3;

    if ( !istrue( var_0._id_8A6B ) )
        return 1;

    var_0 notify( "vehicle_wake_up_or_suspend" );

    if ( !_id_31E6() )
    {
        if ( istrue( var_1 ) )
            thread _id_BECD( var_0, var_2, var_3 );

        return 0;
    }
    else
    {
        var_0._id_8A6B = undefined;
        level._id_EBE1--;
        level._id_EBE2[var_0 getentitynumber()] = undefined;

        if ( var_0 _meth_8104() )
            var_0 _meth_8103();

        if ( istrue( var_2 ) )
            thread _id_10C25( var_0, var_3 );
    }

    return 1;
}

_id_BECD( var_0, var_1, var_2 )
{
    var_0 endon( "vehicle_deleted" );
    var_0 endon( "vehicle_wake_up_or_suspend" );

    for (;;)
    {
        if ( _id_31E6() )
        {
            thread _unsetperk( var_0, undefined, var_1, var_2 );
            return;
        }

        waitframe();
    }
}

_id_10C25( var_0, var_1 )
{
    var_0 endon( "vehicle_deleted" );
    var_0 endon( "vehicle_wake_up_or_suspend" );

    if ( isdefined( var_1 ) )
        wait( var_1 );

    var_2 = undefined;
    var_3 = undefined;
    var_4 = 0;

    for (;;)
    {
        wait 0.05;

        if ( !var_0 _id_102EB() )
            return;

        if ( isdefined( var_2 ) )
            var_3 = var_2;

        var_2 = var_0 _meth_842D();

        if ( isdefined( var_3 ) && abs( var_2 - var_3 ) / 0.05 > 3 )
        {
            var_4 = 0;
            continue;
        }

        var_4 = var_4 + 0.05;

        if ( var_4 >= 3 )
        {
            thread _id_0D62( var_0 );
            return;
        }
    }
}

_id_102ED( var_0, var_1, var_2 )
{
    if ( var_1 )
    {
        if ( !isdefined( var_0._id_317A ) )
            var_0._id_317A = 0;

        var_0._id_317A++;

        if ( istrue( var_0._id_8A6B ) )
            return _unsetperk( var_0, var_2, 0 );
    }
    else
    {
        if ( !isdefined( var_0._id_317A ) )
            return;

        var_0._id_317A--;

        if ( var_0._id_317A == 0 )
            var_0._id_317A = undefined;

        if ( !isdefined( var_0._id_317A ) )
            thread _id_10C25( var_0 );
    }

    return 1;
}

_id_31BB()
{
    return level._id_102F1 - level._id_EBE1 < level._id_9CA1;
}

_id_31E6()
{
    return _id_31BB();
}

_id_102EB()
{
    return !isdefined( self._id_317A );
}

_id_0C18()
{
    return istrue( self._id_8A6B );
}

_id_6E1F()
{
    return level._id_102F1;
}

_id_6D8C()
{
    return level._id_EBE1;
}

_id_C58D( var_0 )
{
    if ( _id_31BB() )
    {
        if ( !isdefined( var_0 ) )
        {
            level._id_102F1++;
            return 1;
        }

        var_1 = level._id_9CA1 - ( level._id_102F1 - level._id_EBE1 );

        if ( var_0 <= var_1 )
        {
            level._id_102F1 = level._id_102F1 + var_0;
            return 1;
        }
    }

    return 0;
}

_id_396E( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    level._id_102F1 = level._id_102F1 - var_0;
    level._id_102F1 = int( _func_0147( 0, level._id_102F1 ) );
}

_id_6E22( var_0 )
{
    return var_0._id_E290;
}

_id_3D43( var_0, var_1 )
{
    var_1._id_02AF = var_0._id_02AF;
    var_1._id_045A = var_0._id_045A;
    var_1.type = var_0.type;
    var_1._id_02EA = var_0._id_02EA;
    var_1._id_0054 = var_0._id_0054;
    var_1._id_02F2 = var_0._id_02F2;
    var_1._id_81E0 = var_0._id_81E0;
    var_1._id_317A = var_0._id_317A;
    var_1._id_E725 = var_0._id_E725;
    var_1._id_E39A = var_0._id_E39A;
    var_1._id_045B = var_0._id_045B;
    var_1._id_FE20 = var_0._id_FE20;
}

_id_102C3( var_0, var_1, var_2 )
{
    _id_102B9( var_0 );
    level._id_FFF1._id_82E6[var_0._id_1031C][var_0 getentitynumber()] = var_0;
    var_0._id_10321 = undefined;

    if ( isdefined( var_1 ) )
        var_0._id_10321 = var_1;

    var_0._id_10354 = undefined;

    if ( isdefined( var_2 ) )
        var_0._id_10354 = var_2;
}

_id_102B9( var_0 )
{
    if ( !isdefined( level._id_FFF1 ) )
        return;

    if ( !isdefined( level._id_FFF1._id_82E6 ) )
        return;

    if ( !isdefined( level._id_FFF1._id_82E6[var_0._id_1031C] ) )
        return;

    level._id_FFF1._id_82E6[var_0._id_1031C][var_0 getentitynumber()] = undefined;

    if ( level._id_FFF1._id_82E6[var_0._id_1031C].size <= 0 )
        level._id_FFF1._id_82E6[var_0._id_1031C] = undefined;

    var_0._id_10321 = undefined;
    var_0._id_10354 = undefined;
}

_id_102C0( var_0, var_1, var_2 )
{
    level._id_FFF1._id_82E5[var_0] = var_1;
    level._id_FFF1._id_82E4[var_0] = var_2;
}

_id_102C1( var_0, var_1, var_2 )
{
    level._id_FFF1._id_AD93[var_0] = var_1;
    level._id_FFF1._id_AD92[var_0] = var_2;
}

_id_102C2( var_0, var_1, var_2 )
{
    level._id_FFF1._id_EF7B[var_0] = var_1;
    level._id_FFF1._id_EF7A[var_0] = var_2;
}

_id_102B7( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._id_FFF1._id_82E6[var_0] ) )
        return 0;

    var_4 = level._id_FFF1._id_82E5[var_0];

    if ( isdefined( var_4 ) )
    {
        if ( isdefined( level._id_FFF1._id_82E6[var_0] ) && level._id_FFF1._id_82E6[var_0].size >= var_4 )
            return 1;
    }

    var_5 = undefined;
    var_6 = undefined;

    if ( isdefined( var_1 ) )
    {
        var_5 = level._id_FFF1._id_AD93[var_0];
        var_6 = 0;
    }

    var_7 = undefined;
    var_8 = undefined;

    if ( isdefined( var_2 ) )
    {
        var_7 = level._id_FFF1._id_EF7B[var_0];
        var_8 = 0;
    }

    if ( !isdefined( var_5 ) && !isdefined( var_7 ) )
        return 0;

    foreach ( var_10 in level._id_FFF1._id_82E6[var_0] )
    {
        if ( isdefined( var_5 ) && isdefined( var_10._id_10321 ) && var_10._id_10321 == var_1 )
        {
            var_6++;

            if ( var_6 >= var_5 )
                return 1;
        }

        if ( isdefined( var_7 ) && isdefined( var_10._id_10354 ) && var_10._id_10354 == var_2 )
        {
            var_8++;

            if ( var_8 >= var_7 )
                return 1;
        }
    }

    return 0;
}

_id_102BA( var_0 )
{
    if ( !isdefined( level._id_FFF1._id_82E6[var_0] ) )
        return [];

    return level._id_FFF1._id_82E6[var_0];
}

_id_102BC( var_0, var_1 )
{
    if ( !isdefined( level._id_FFF1._id_82E6[var_0] ) )
        return [];

    var_2 = [];

    foreach ( var_4 in level._id_FFF1._id_82E6[var_0] )
    {
        if ( isdefined( var_4._id_10321 ) && var_4._id_10321 == var_1 )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_id_102BD( var_0, var_1 )
{
    if ( !isdefined( level._id_FFF1._id_82E6[var_0] ) )
        return [];

    var_2 = [];

    foreach ( var_4 in level._id_FFF1._id_82E6[var_0] )
    {
        if ( isdefined( var_4._id_10354 ) && var_4._id_10354 == var_1 )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_id_102BB()
{
    if ( !isdefined( level._id_FFF1._id_82E6 ) )
        return [];

    var_0 = [];

    foreach ( var_2 in level._id_FFF1._id_82E6 )
    {
        foreach ( var_4 in var_2 )
            var_0[var_0.size] = var_4;
    }

    return var_0;
}

_id_102BF( var_0 )
{
    if ( isdefined( level._id_FFF1._id_82E5[var_0] ) )
        return 1;

    if ( isdefined( level._id_FFF1._id_AD93[var_0] ) )
        return 1;

    if ( isdefined( level._id_FFF1._id_EF7B[var_0] ) )
        return 1;

    return 0;
}

_id_102BE()
{
    level._id_FFF1._id_82E6 = [];
    level._id_FFF1._id_82E5 = [];
    level._id_FFF1._id_AD93 = [];
    level._id_FFF1._id_EF7B = [];
    level._id_FFF1._id_82E4 = [];
    level._id_FFF1._id_AD92 = [];
    level._id_FFF1._id_EF7A = [];
    level._id_102F1 = 0;
    level._id_EBE1 = 0;
    level._id_9CA1 = getdvarint( "scr_maxVehicleCount", 128 );
    level._id_EBE2 = [];
}
