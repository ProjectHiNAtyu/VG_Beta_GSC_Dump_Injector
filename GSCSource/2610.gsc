// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    level._id_9F66 = 14000;
    level._id_9F64 = 7000;
    level._id_9F65 = 1500;
    level._id_C8AB = [];
    level._id_C332["explode"] = _func_0139( "vfx/core/expl/aerial_explosion" );
}

_id_F794( var_0, var_1 )
{
    _id_0A74::_id_D8C9( "remotemissile" );
    var_2 = _id_0A28::_id_8260();

    if ( var_2 != "success" )
    {
        if ( var_2 != "disconnect" )
            _id_0A74::_id_396C();

        return 0;
    }

    self _meth_82F6( "ui_predator_missile", 1 );
    level thread _id_0BBD( var_0, self );
    return 1;
}

_id_68FA( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        var_3._id_FF61 = [];
        var_3._id_E364 = 0;
    }

    foreach ( var_6 in level._id_B758 )
    {
        if ( !_id_0A74::_id_89D3( var_6 ) )
            continue;

        if ( var_6._id_045B == self._id_045B )
            continue;

        if ( var_6._id_045B == "spectator" )
            continue;

        var_7 = 999999999;
        var_8 = undefined;

        foreach ( var_3 in var_0 )
        {
            var_3._id_FF61[var_3._id_FF61.size] = var_6;
            var_10 = distance2d( var_3._id_EE9F._id_02EA, var_6._id_02EA );

            if ( var_10 <= var_7 )
            {
                var_7 = var_10;
                var_8 = var_3;
            }
        }

        var_8._id_E364 = var_8._id_E364 + 2;
    }

    var_13 = var_0[0];

    foreach ( var_3 in var_0 )
    {
        foreach ( var_6 in var_3._id_FF61 )
        {
            var_3._id_E364 = var_3._id_E364 + 1;

            if ( _id_077A::_id_0B4D( var_6._id_02EA + ( 0, 0, 32 ), var_3._id_02EA, 0, var_6 ) )
                var_3._id_E364 = var_3._id_E364 + 3;

            if ( var_3._id_E364 > var_13._id_E364 )
            {
                var_13 = var_3;
                continue;
            }

            if ( var_3._id_E364 == var_13._id_E364 )
            {
                if ( _id_077B::_id_3A02() )
                    var_13 = var_3;
            }
        }
    }

    return var_13;
}

_id_0BBD( var_0, var_1 )
{
    var_2 = getentarray( "remoteMissileSpawn", "targetname" );

    foreach ( var_4 in var_2 )
    {
        if ( isdefined( var_4._id_0457 ) )
            var_4._id_EE9F = getent( var_4._id_0457, "targetname" );
    }

    if ( var_2.size > 0 )
        var_6 = var_1 _id_68FA( var_2 );
    else
        var_6 = undefined;

    if ( isdefined( var_6 ) )
    {
        var_7 = var_6._id_02EA;
        var_8 = var_6._id_EE9F._id_02EA;
        var_9 = _func_025A( var_7 - var_8 );
        var_7 = var_9 * 14000 + var_8;
        var_10 = _id_09A2::_id_0C2D( _func_034C( "remotemissile_projectile_mp" ), var_7, var_8, var_1 );
    }
    else
    {
        var_11 = ( 0, 0, level._id_9F66 );
        var_12 = level._id_9F64;
        var_13 = level._id_9F65;
        var_14 = anglestoforward( var_1._id_0054 );
        var_7 = var_1._id_02EA + var_11 + var_14 * var_12 * -1;
        var_8 = var_1._id_02EA + var_14 * var_13;
        var_10 = _id_09A2::_id_0C2D( _func_034C( "remotemissile_projectile_mp" ), var_7, var_8, var_1 );
    }

    if ( !isdefined( var_10 ) )
    {
        var_1 _id_0A74::_id_396C();
        return;
    }

    var_10._id_045B = var_1._id_045B;
    var_10 thread _id_7413();
    var_10._id_9355 = var_0;
    var_10._id_048F = "remote";
    level._id_C333 = 1;
    _id_9F56( var_1, var_10 );
}

_id_7413()
{
    self endon( "death" );
    self endon( "deleted" );
    self _meth_82F0( 1 );

    for (;;)
        self waittill( "damage" );
}

_id_9F56( var_0, var_1 )
{
    var_0 endon( "joined_team" );
    var_0 endon( "joined_spectators" );
    var_1 thread _id_C89A();
    var_0 thread _id_B3DA( var_1 );
    var_0 thread _id_B3DB( var_1 );
    var_0 _meth_844E( "black_bw", 0 );
    var_0 endon( "disconnect" );

    if ( isdefined( var_1 ) )
    {
        var_0 _meth_844E( game["thermal_vision"], 1.0 );
        var_0 _meth_840A();
        var_0 thread _id_469D();
        var_0 _meth_805E( var_1, "tag_origin" );
        var_0 _meth_8093( var_1 );

        if ( getdvarint( "#x3863d66ab814c070" ) )
            var_0 _id_0A74::_id_D717( 0 );

        var_1 waittill( "death" );
        var_0 _meth_8409();

        if ( isdefined( var_1 ) )
            var_0 _id_06BB::_id_F737( level._id_9B9D, "predator_missile", var_1._id_02EA );

        var_0 _meth_8094();
        var_0 _id_0A74::_id_0BC4( 1 );

        if ( !level._id_609B )
            var_0 _meth_82F6( "ui_predator_missile", 2 );

        wait 0.5;
        var_0 cameralinkto();

        if ( getdvarint( "#x3863d66ab814c070" ) )
            var_0 _id_0A74::_id_D717( 1 );
    }

    var_0 _meth_82F6( "ui_predator_missile", 0 );
    var_0 _id_0A74::_id_396C();
}

_id_469D()
{
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );
    wait 0.15;
}

_id_B3DB( var_0 )
{
    var_0 endon( "death" );
    self endon( "disconnect" );
    _id_077B::_id_1087E( "joined_team", "joined_spectators" );

    if ( self._id_045B != "spectator" )
    {
        self _meth_8094();
        self cameralinkto();

        if ( getdvarint( "#x3863d66ab814c070" ) )
            _id_0A74::_id_D717( 1 );
    }

    _id_0A74::_id_396C();
    level._id_C333 = undefined;
}

_id_C89A()
{
    var_0 = self getentitynumber();
    level._id_C8AB[var_0] = self;
    self waittill( "death" );
    level._id_C8AB[var_0] = undefined;
    level._id_C333 = undefined;
}

_id_B3DA( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    level waittill( "game_ended" );
    self _meth_8094();
    self cameralinkto();

    if ( getdvarint( "#x3863d66ab814c070" ) )
        _id_0A74::_id_D717( 1 );
}
