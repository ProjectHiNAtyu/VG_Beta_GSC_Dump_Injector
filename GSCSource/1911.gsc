// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_1763( var_0, var_1 )
{
    return _func_0002( _func_0257( var_0, var_1 ) / ( _func_0130( var_0 ) * _func_0130( var_1 ) ) );
}

_id_1766( var_0, var_1 )
{
    return _func_0002( _func_0257( var_0, var_1 ) );
}

_id_1765( var_0, var_1, var_2 )
{
    var_3 = _func_025A( var_0 );
    var_4 = _func_025A( var_1 );
    var_5 = _func_0002( clamp( _func_0257( var_3, var_4 ), -1, 1 ) );
    var_6 = _func_0256( var_3, var_4 );

    if ( _func_0257( var_6, var_2 ) < 0 )
        var_5 = var_5 * -1;

    return var_5;
}

_id_9192( var_0, var_1, var_2 )
{
    return var_0 + ( var_1 - var_0 ) * var_2;
}

_id_919B( var_0, var_1, var_2 )
{
    return ( var_2 - var_0 ) / ( var_1 - var_0 );
}

_id_58E2( var_0, var_1, var_2 )
{
    return ( _id_175E( var_0[0], var_1[0], var_2 ), _id_175E( var_0[1], var_1[1], var_2 ), _id_175E( var_0[2], var_1[2], var_2 ) );
}

_id_175E( var_0, var_1, var_2 )
{
    return _func_000A( var_0 + _func_000B( var_1 - var_0 ) * var_2 );
}

_id_643F( var_0, var_1, var_2 )
{
    var_3 = _func_025A( var_2 - var_0 );
    var_4 = anglestoforward( var_1 );
    var_5 = _func_0257( var_4, var_3 );
    return var_5;
}

_id_FFDA( var_0, var_1 )
{
    return _func_025A( var_0 - _func_0257( var_1, var_0 ) * var_1 );
}

_id_FFD9( var_0, var_1, var_2 )
{
    var_3 = anglestoforward( var_1 );
    var_3 = var_3 * var_2;
    var_4 = var_0 + var_3;
    return var_4;
}

_id_FFDB( var_0, var_1 )
{
    return _func_025A( 2 * _id_FFDA( var_0, var_1 ) - var_0 );
}

_id_FFD7( var_0, var_1, var_2 )
{
    return var_1[0] * var_2[1] - var_1[1] * var_2[0] + ( var_2[0] * var_0[1] - var_0[0] * var_2[1] ) + ( var_0[0] * var_1[1] - var_1[0] * var_0[1] );
}

_id_CB68( var_0, var_1 )
{
    return _func_0257( _func_025A( var_0 ), var_1 );
}

_id_668F( var_0, var_1, var_2, var_3 )
{
    var_4 = var_3 * 2 - 1;
    var_5 = var_1 - var_0;
    var_6 = ( 0, 0, 1 );
    var_7 = var_0 + var_3 * var_5;
    var_7 = var_7 + ( var_4 * var_4 * -1 + 1 ) * var_2 * var_6;
    return var_7;
}

_id_6584( var_0, var_1 )
{
    return ( ( var_0[0] + var_1[0] ) * 0.5, ( var_0[1] + var_1[1] ) * 0.5, ( var_0[2] + var_1[2] ) * 0.5 );
}

_id_C92B( var_0, var_1, var_2 )
{
    var_3 = _id_C926( var_0[0], var_1, var_2 );
    var_4 = _id_C926( var_0[1], var_1, var_2 );
    var_5 = _id_C926( var_0[2], var_1, var_2 );
    return ( var_3, var_4, var_5 );
}

_id_C926( var_0, var_1, var_2 )
{
    var_1 = int( var_1 );

    if ( var_1 < 0 || var_1 > 4 )
        return var_0;

    var_3 = 1;

    for ( var_4 = 1; var_4 <= var_1; var_4++ )
        var_3 = var_3 * 10;

    var_5 = var_0 * var_3;

    if ( !isdefined( var_2 ) || var_2 )
        var_5 = floor( var_5 );
    else
        var_5 = _func_0037( var_5 );

    var_0 = var_5 / var_3;
    return var_0;
}

_id_C927( var_0, var_1, var_2 )
{
    var_3 = var_0 / 1000;
    var_3 = _id_C926( var_3, var_1, var_2 );
    var_0 = var_3 * 1000;
    return int( var_0 );
}

_id_C314( var_0, var_1, var_2, var_3, var_4 )
{
    return var_3 + ( var_0 - var_1 ) * ( var_4 - var_3 ) / ( var_2 - var_1 );
}

_id_A5B2( var_0, var_1, var_2 )
{
    if ( var_0 > var_1 )
    {
        var_3 = var_0;
        var_0 = var_1;
        var_1 = var_3;
    }

    if ( var_2 > var_1 )
        return 1.0;
    else if ( var_2 < var_0 )
        return 0.0;
    else if ( var_0 == var_1 )
    {

    }

    return ( var_2 - var_0 ) / ( var_1 - var_0 );
}

_id_A5BE( var_0, var_1, var_2 )
{
    return ( var_1 - var_0 ) * spawnstruct( var_2 ) + var_0;
}

_id_A5BD( var_0, var_1, var_2 )
{
    return _id_A5BE( var_0, var_1, 1 - var_2 );
}

_id_A5BA( var_0 )
{
    return -1 * spawnstruct( 2 * var_0 - 1 ) + 1;
}

_id_A5BB( var_0 )
{
    var_1 = var_0 * 2 * 3.14159 - 1.5708;
    var_1 = ( _func_01FE( _id_BF0C( var_1 ) ) + 1 ) * 0.5;
    return var_1;
}

_id_A5B4( var_0 )
{
    var_1 = var_0 * 2 * 3.14159;
    var_1 = ( cos( _id_BF0C( var_1 ) ) + 1 ) * 0.5;
    return var_1;
}

_id_BF0C( var_0 )
{
    return var_0 * 57.2958;
}

_id_4626( var_0 )
{
    return var_0 * 0.0174533;
}

_id_5878( var_0, var_1, var_2 )
{
    return var_1 * var_2 + var_0 * ( 1 - var_2 );
}

_id_A5B8( var_0 )
{
    if ( var_0 < 0.5 )
    {
        var_0 = var_0 * 2;
        var_0 = _id_A5B6( var_0 );
        var_0 = var_0 * 0.5;
    }
    else
    {
        var_0 = ( var_0 - 0.5 ) * 2;
        var_0 = _id_A5B7( var_0 );
        var_0 = var_0 * 0.5 + 0.5;
    }

    return var_0;
}

_id_A5B6( var_0 )
{
    return var_0 * var_0;
}

_id_A5B7( var_0 )
{
    var_0 = 1 - var_0;
    var_0 = var_0 * var_0;
    var_0 = 1 - var_0;
    return var_0;
}

_id_94CB( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_0257( var_3, var_2 );
    var_5 = var_1 - var_0;
    var_6 = _func_0257( var_3, var_5 );

    if ( var_6 == 0 )
        return undefined;

    var_7 = ( var_4 - _func_0257( var_3, var_0 ) ) / var_6;
    var_8 = var_0 + var_5 * var_7;
    return var_8;
}

project_point_onto_line_segment( var_0, var_1, var_2 )
{
    var_3 = distancesquared( var_0, var_1 );

    if ( var_3 == 0.0 )
        return var_0;

    var_4 = _func_0147( 0, _func_0148( 1, _func_0257( var_2 - var_0, var_1 - var_0 ) / var_3 ) );
    return var_0 + var_4 * ( var_1 - var_0 );
}

distance_from_line_segment( var_0, var_1, var_2 )
{
    var_3 = distancesquared( var_0, var_1 );

    if ( var_3 == 0.0 )
        return distance( var_0, var_2 );

    var_4 = _func_0147( 0, _func_0148( 1, _func_0257( var_2 - var_0, var_1 - var_0 ) / var_3 ) );
    var_5 = var_0 + var_4 * ( var_1 - var_0 );
    return distance( var_2, var_5 );
}

_id_C041( var_0, var_1, var_2, var_3 )
{
    return _func_0257( var_2 - var_0, var_3 ) / _func_0257( var_1, var_3 );
}

_id_D024( var_0, var_1, var_2, var_3 )
{
    if ( var_0 == var_1 )
        return 0;

    var_4 = var_2 - var_0;
    var_5 = var_1 - var_0;
    var_6 = clamp( _func_0257( var_4, var_5 ) / _func_0257( var_5, var_5 ), 0, 1 );
    var_7 = var_0 + var_5 * var_6;
    return _func_0133( var_2 - var_7 ) <= var_3 * var_3;
}

_id_B9B4( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = var_0 - var_1;
    var_9 = _func_0257( var_8, var_2 );
    var_10 = _func_0257( var_8, var_3 );

    if ( var_9 > var_4 )
        return 0;

    if ( var_9 < var_5 )
        return 0;

    if ( isdefined( var_7 ) )
    {
        if ( abs( var_10 ) > var_7 )
            return 0;
    }

    if ( _id_1763( var_2, var_8 ) > var_6 )
        return 0;

    return 1;
}

_id_B9B5( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_0 - var_3;
    var_6 = _func_0257( var_5, var_4 );

    if ( var_6 < 0 || var_6 > var_2 )
        return 0;

    var_5 = var_5 - var_6 * var_4;
    var_7 = _func_0133( var_5 );

    if ( var_7 > var_1 )
        return 0;

    return 1;
}

_id_B9A3( var_0, var_1, var_2 )
{
    var_3 = _id_FFD7( var_0, var_1, var_2 );

    if ( var_3 > 0.0 )
        return "left";

    return "right";
}

_id_10FA0( var_0, var_1, var_2 )
{
    var_3 = var_1 - var_0 + 1;

    if ( var_2 < var_0 )
        var_2 = var_2 + var_3 * int( ( var_0 - var_2 ) / var_3 + 1 );

    return var_0 + ( var_2 - var_0 ) % var_3;
}

_id_B99D( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = 0.766;

    if ( _func_0117( self ) )
        var_3 = anglestoforward( self getplayerangles( !istrue( var_2 ) ) );
    else
        var_3 = anglestoforward( self._id_0054 );

    var_4 = _func_025A( var_0 - self._id_02EA );
    var_5 = _func_0257( var_3, var_4 );
    return var_5 > var_1;
}

_id_10E75( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_025A( ( var_2[0], var_2[1], 0 ) - ( var_0[0], var_0[1], 0 ) );
    var_5 = anglestoforward( ( 0, var_1[1], 0 ) );
    return _func_0257( var_5, var_4 ) >= var_3;
}

_id_8665( var_0 )
{
    var_1 = 0;

    if ( _func_02DB( self ) && _func_0117( self ) )
    {
        var_2 = var_0 - self _meth_8169();
        var_3 = anglestoforward( self getplayerangles( 1 ) );
        var_1 = _func_0257( var_2, var_3 );
    }
    else
    {
        var_2 = var_0 - self._id_02EA;
        var_3 = anglestoforward( self._id_0054 );
        var_1 = _func_0257( var_2, var_3 );
    }

    return var_1 > 0;
}

_id_8666( var_0 )
{
    var_1 = 0;

    if ( _func_0117( self ) )
    {
        var_2 = var_0 - self _meth_8169();
        var_3 = anglestoright( self getplayerangles( 1 ) );
        var_1 = _func_0257( var_2, var_3 );
    }
    else
    {
        var_2 = var_0 - self._id_02EA;
        var_3 = anglestoright( self._id_0054 );
        var_1 = _func_0257( var_2, var_3 );
    }

    return var_1 > 0;
}

_id_BFE2()
{
    var_0 = _func_01B6( 360 );
    return ( cos( var_0 ), _func_01FE( var_0 ), 0.0 );
}

_id_D27C( var_0 )
{
    var_1 = anglestoforward( self._id_0054 );
    var_2 = _func_0256( var_1, var_0 );
    var_3 = _func_0256( var_0, var_2 );
    self._id_0054 = _func_0017( var_3, var_2, var_0 );
}

_id_D27D( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = self._id_0054;

    self._id_0054 = _id_2CA8( var_0, var_1 );
}

_id_2CA8( var_0, var_1 )
{
    var_2 = _func_0002( -1 * _func_0257( anglestoforward( var_1 ), var_0 ) );
    var_3 = anglestoup( var_1 + ( var_2, 0, 0 ) );
    var_4 = _func_0256( var_3, var_0 );
    var_3 = _func_0256( var_0, var_4 );
    return _func_0017( var_3, var_4, var_0 );
}

_id_406F( var_0, var_1, var_2 )
{
    thread _id_4070( var_0, var_1, var_2 );
}

_id_4070( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "stop_spring" );

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = _id_E450( var_1, self._id_02EA, anglestoforward( self._id_0054 ) * var_2 );

    while ( distancesquared( self._id_02EA, var_0 ) > spawnstruct( 0.1 ) )
    {
        self._id_02EA = _id_E455( var_3, var_0 );
        wait 0.05;
    }

    self notify( "movedone" );
    _id_E44C( var_3 );
}

_id_406D( var_0, var_1, var_2 )
{
    thread _id_406E( var_0, var_1, var_2 );
}

_id_406E( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "stop_spring" );

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = _id_E450( var_1, self._id_02EA, anglestoforward( self._id_0054 ) * var_2 );

    while ( distancesquared( self._id_02EA, var_0 ) > spawnstruct( 0.1 ) )
    {
        self._id_02EA = _id_E455( var_3, var_0 );
        self._id_0054 = _func_025B( _id_E44E( var_3 ) );
        wait 0.05;
    }

    self notify( "movedone" );
    _id_E44C( var_3 );
}

_id_AD08( var_0, var_1, var_2, var_3 )
{
    thread _id_AD09( var_0, var_1, var_2, var_3 );
}

_id_AD09( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "stop_spring" );

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    var_4 = _id_E451( var_1, var_2, self._id_02EA, anglestoforward( self._id_0054 ) * var_3 );

    while ( distancesquared( self._id_02EA, var_0 ) > spawnstruct( 0.1 ) )
    {
        self._id_02EA = _id_E455( var_4, var_0 );
        wait 0.05;
    }

    self notify( "movedone" );
    _id_E44C( var_4 );
}

_id_F937( var_0, var_1, var_2, var_3 )
{
    thread _id_F938( var_0, var_1, var_2, var_3 );
}

_id_F938( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "stop_spring" );

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    var_4 = _id_E452( var_1, var_2, self._id_02EA, anglestoforward( self._id_0054 ) * var_3 );

    while ( distancesquared( self._id_02EA, var_0 ) > spawnstruct( 0.1 ) || _func_0130( _id_E44E( var_4 ) ) < spawnstruct( 0.1 ) )
    {
        self._id_02EA = _id_E455( var_4, var_0 );
        wait 0.05;
    }

    self notify( "movedone" );
    _id_E44C( var_4 );
}

_id_E450( var_0, var_1, var_2 )
{
    var_3 = _id_E44A( var_1, var_2 );
    var_4 = var_0 * 0.05;
    var_5 = _func_0065( -1 * var_4 );
    level._id_E456[var_3]._id_2DD1 = ( var_4 + 1 ) * var_5;
    level._id_E456[var_3]._id_2DD2 = var_5;
    level._id_E456[var_3]._id_2E19 = -1 * var_4 * var_4 * var_5;
    level._id_E456[var_3]._id_2E1A = ( 1 - var_4 ) * var_5;
    _id_E453( var_3, var_1 );
    _id_E454( var_3, var_2 );
    return var_3;
}

_id_E451( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_E44A( var_2, var_3 );
    var_5 = var_0 * var_0;
    var_6 = -1 * _func_0213( var_1 * var_1 + 4.0 * var_5 );
    var_7 = 0.5 * ( var_6 + var_1 );
    var_8 = 0.5 * ( var_6 - var_1 );
    var_9 = var_8 - var_7;
    var_10 = 1.0 / var_9;
    var_11 = _func_0065( var_7 * 0.05 );
    var_12 = _func_0065( var_8 * 0.05 );
    var_13 = var_12 - var_11;
    level._id_E456[var_4]._id_2DD2 = var_13 * var_10;
    level._id_E456[var_4]._id_2DD1 = var_11 - var_7 * level._id_E456[var_4]._id_2DD2;
    level._id_E456[var_4]._id_2E1A = ( var_8 * var_12 - var_7 * var_11 ) * var_10;
    level._id_E456[var_4]._id_2E19 = var_7 * ( var_11 - level._id_E456[var_4]._id_2E1A );
    _id_E453( var_4, var_2 );
    _id_E454( var_4, var_3 );
    return var_4;
}

_id_E452( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_E44A( var_2, var_3 );
    var_5 = -0.5 * var_1;
    var_6 = var_0;
    var_7 = _func_0065( var_5 * 0.05 ) / var_6;
    var_8 = _func_000A( var_6 * 0.05 );
    var_9 = _func_01FE( var_8 );
    var_10 = cos( var_8 );
    var_11 = var_6 * var_10;
    var_12 = var_5 * var_9;
    level._id_E456[var_4]._id_2DD1 = var_7 * ( var_11 - var_12 );
    level._id_E456[var_4]._id_2DD2 = var_7 * var_9;
    level._id_E456[var_4]._id_2E19 = var_7 * -1 * var_9 * ( var_5 * var_5 + var_6 * var_6 );
    level._id_E456[var_4]._id_2E1A = var_7 * ( var_11 + var_12 );
    _id_E453( var_4, var_2 );
    _id_E454( var_4, var_3 );
    return var_4;
}

_id_E455( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_2 ) )
        _id_E453( var_0, var_2 );

    if ( isdefined( var_3 ) )
        _id_E454( var_0, var_3 );

    var_4 = level._id_E456[var_0]._id_B9F0 - var_1;
    var_5 = level._id_E456[var_0]._id_2DD1 * var_4 + level._id_E456[var_0]._id_2DD2 * level._id_E456[var_0]._id_10397;
    var_6 = level._id_E456[var_0]._id_2E19 * var_4 + level._id_E456[var_0]._id_2E1A * level._id_E456[var_0]._id_10397;
    level._id_E456[var_0]._id_B9F0 = var_5 + var_1;
    level._id_E456[var_0]._id_10397 = var_6;
    return level._id_E456[var_0]._id_B9F0;
}

_id_E44C( var_0 )
{
    level._id_E456[var_0] = undefined;
}

_id_E44D( var_0 )
{
    return level._id_E456[var_0]._id_B9F0;
}

_id_E44E( var_0 )
{
    return level._id_E456[var_0]._id_10397;
}

_id_E44F()
{
    if ( !isdefined( level._id_E456 ) )
    {
        level._id_E456 = [];
        level._id_E44B = 0;
    }
}

_id_E44A( var_0, var_1 )
{
    _id_E44F();
    var_2 = level._id_E44B;
    level._id_E44B++;
    level._id_E456[var_2] = _func_020F();
    level._id_E456[var_2]._id_B9F0 = var_0;
    level._id_E456[var_2]._id_10397 = var_1;
    level._id_E456[var_2]._id_2DD1 = 0;
    level._id_E456[var_2]._id_2DD2 = 0;
    level._id_E456[var_2]._id_2E19 = 0;
    level._id_E456[var_2]._id_2E1A = 0;
    return var_2;
}

_id_E453( var_0, var_1 )
{
    level._id_E456[var_0]._id_B9F0 = var_1;
}

_id_E454( var_0, var_1 )
{
    level._id_E456[var_0]._id_10397 = var_1;
}

_id_86F3( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0.001;

    return abs( var_0[0] - var_1[0] ) < var_2 && abs( var_0[1] - var_1[1] ) < var_2 && abs( var_0[2] - var_1[2] ) < var_2;
}

_id_85BC( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0.001;

    return abs( var_0 - var_1 ) < 0.001;
}
