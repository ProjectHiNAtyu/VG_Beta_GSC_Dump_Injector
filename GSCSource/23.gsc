// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_1273( var_0, var_1 )
{
    self._id_2496 = var_0;
    _id_0009::_id_1C50();
    _id_0008::_id_00A5();
    _id_0695::_id_1C4F( var_1, self._id_1874 );

    if ( self _meth_85EA() )
        thread _id_0695::_id_F4E6();
}

_id_7434( var_0, var_1, var_2 )
{
    if ( isdefined( anim._id_A63C[var_0] ) )
        return [[ anim._id_A63C[var_0] ]]( var_0, var_1 );

    return undefined;
}

_id_02E4( var_0, var_1 )
{
    if ( isdefined( self._id_AAB2 ) )
        self [[ self._id_AAB2 ]]( var_0, var_1 );
}

_id_02E3()
{
    self notify( "killanimscript" );
    self notify( "terminate_ai_threads" );
}

_id_B347( var_0, var_1, var_2, var_3 )
{
    _id_B343( var_0, 0, var_1, var_2, var_3 );
}

_id_B343( var_0, var_1, var_2, var_3, var_4 )
{
    self _meth_82E5( var_0, var_1 );

    if ( !isdefined( var_3 ) )
        var_3 = "end";

    _id_1097E( var_2, var_3, var_0, var_1, var_4 );
}

_id_B340( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self _meth_82E5( var_0, var_1, var_2 );

    if ( !isdefined( var_4 ) )
        var_4 = "end";

    _id_1097E( var_3, var_4, var_0, var_1, var_5 );
}

_id_1097D( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = undefined;

    if ( isdefined( var_5 ) )
        var_7 = ( gettime() - var_6 ) * 0.001 / var_5;

    _id_7434( var_0, var_2, var_4 );

    if ( isdefined( var_2 ) && isdefined( self._id_1C08 ) )
        _id_0695::_id_1C49( var_0, var_2, var_3, var_7 );

    if ( !isdefined( var_5 ) || var_7 > 0 )
    {
        if ( var_0 == var_1 || var_0 == "end" || var_0 == "anim_will_finish" || var_0 == "finish" )
            return 1;
    }

    if ( isdefined( var_4 ) )
        [[ var_4 ]]( var_0, var_2, var_3, var_7 );

    return 0;
}

_id_1097E( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = gettime();
    var_6 = undefined;

    if ( isdefined( var_2 ) && isdefined( var_3 ) )
        var_6 = _func_0079( self _meth_810C( var_2, var_3 ) );

    var_7 = 0;

    while ( !var_7 )
    {
        self waittill( var_0, var_8 );

        if ( isalive( var_8 ) )
        {
            foreach ( var_10 in var_8 )
            {
                if ( _id_1097D( var_10, var_1, var_2, var_3, var_4, var_6, var_5 ) )
                    var_7 = 1;
            }

            continue;
        }

        var_7 = _id_1097D( var_8, var_1, var_2, var_3, var_4, var_6, var_5 );
    }
}

_id_B33E( var_0, var_1 )
{
    _id_B342( var_0, 0, var_1 );
}

_id_B342( var_0, var_1, var_2 )
{
    self _meth_82E5( var_0, var_1 );
    wait( var_2 );
}

_id_B345( var_0, var_1, var_2, var_3, var_4 )
{
    self _meth_82E5( var_0, var_1 );
    thread _id_B346( var_0, var_1, var_2, var_4 );
    wait( var_3 );
    self notify( var_0 + var_1 );
}

_id_B346( var_0, var_1, var_2, var_3 )
{
    self notify( var_0 + var_1 );
    self endon( var_0 + var_1 );
    var_4 = 0;
    var_5 = self _meth_810C( var_0, var_1 );
    var_6 = _func_0079( var_5 );
    var_7 = gettime();

    while ( !var_4 )
    {
        self waittill( var_2, var_8 );

        if ( !isalive( var_8 ) )
            var_8 = [ var_8 ];

        foreach ( var_10 in var_8 )
        {
            if ( _id_1097D( var_10, "end", var_0, var_1, var_3, var_6, var_7 ) )
                var_4 = 1;
        }
    }
}

_id_B33F( var_0, var_1, var_2, var_3 )
{
    self _meth_82E5( var_0, var_1, var_2 );
    wait( var_3 );
}

_id_68A6( var_0, var_1, var_2 )
{
    var_3 = _func_0131( var_0 );
    var_4 = var_0[2];
    var_5 = _func_0131( var_1 );
    var_6 = var_1[2];
    var_7 = 1;
    var_8 = 1;

    if ( isdefined( var_2 ) && var_2 )
    {
        var_9 = ( var_1[0], var_1[1], 0 );
        var_10 = _func_025A( var_9 );

        if ( _func_0257( var_10, var_0 ) < 0 )
            var_7 = 0;
        else if ( var_5 > 0 )
            var_7 = var_3 / var_5;
    }
    else if ( var_5 > 0 )
        var_7 = var_3 / var_5;

    if ( abs( var_6 ) > 0.001 && var_6 * var_4 >= 0 )
        var_8 = var_4 / var_6;

    var_11 = _func_020F();
    var_11._id_10FDB = var_7;
    var_11._id_04E3 = var_8;
    return var_11;
}

_id_6E15( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 6;

    var_3 = ( 0, 0, 1 ) * var_2;
    var_4 = var_0 + var_3;
    var_5 = var_1 + var_3;
    return self _meth_8008( var_4, var_5, self._id_0333 + 4, self._id_0201 - var_2, 1 );
}

_id_6CE2( var_0 )
{
    var_1 = _func_00B0( var_0 );
    var_2 = self _meth_8215( var_1 );
    var_3 = _id_6E15( self._id_02EA, var_2 );
    var_4 = distance( self._id_02EA, var_3 );
    var_5 = distance( self._id_02EA, var_2 );
    return _func_0148( 1.0, var_4 / var_5 );
}

_id_CAD8( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_6C9B( var_0 );
    _id_CAD7( var_0, var_4, var_1, var_2, var_3 );
}

_id_CAD5( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _id_6C9B( var_0 );
    _id_CAD6( var_0, var_5, var_1, var_2, var_3, var_4 );
}

_id_CAD6( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self _meth_82E5( var_0, var_1, var_2 );
    _id_CAD7( var_0, var_1, var_3, var_4, var_5 );
}

_id_CAD7( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = self _meth_810C( var_0, var_1 );
    var_6 = _id_6CE2( var_5 );

    if ( self _meth_85EA() )
        self _meth_82B9( var_6, 1.0 );

    _id_B343( var_0, var_1, var_2, var_3, var_4 );

    if ( self _meth_85EA() )
        self _meth_82B9( 1.0, 1.0 );
}

_id_6C9B( var_0 )
{
    var_1 = self _meth_810F( var_0 );
    return _func_01B8( var_1 );
}

_id_689E( var_0 )
{
    var_1 = _func_025B( var_0 );
    var_2 = _func_000B( var_1[1] - self._id_0054[1] );
    return _func_0321( var_2 );
}

_id_D141( var_0, var_1, var_2 )
{
    if ( isdefined( var_2 ) )
        self _meth_82E5( var_0, var_1, var_2 );
    else if ( isdefined( var_1 ) )
        self _meth_82E5( var_0, var_1 );
    else
        self _meth_82E5( var_0 );
}

_id_8A49()
{
    if ( !isdefined( self._id_03DF ) )
        return 0;

    return self._id_03DF;
}

_id_D6E1( var_0, var_1 )
{
    self._id_03DF = var_0;
}

_id_B344( var_0, var_1, var_2, var_3, var_4 )
{
    _id_B341( var_0, var_1, 1.0, var_2, var_3, var_4 );
}

_id_1097F( var_0, var_1, var_2 )
{
    self endon( "death_or_disconnect" );

    if ( isdefined( var_2 ) )
        childthread _id_A5F5( var_0, var_2, var_1 );

    _id_1097E( var_0, var_1 );
    self notify( "Notetrack_Timeout" );
}

_id_B341( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death_or_disconnect" );

    if ( isdefined( var_0 ) )
    {
        if ( isdefined( var_1 ) )
            var_6 = _func_0079( self _meth_810C( var_0, var_1 ) );
        else
            var_6 = _func_0079( self _meth_810C( var_0, 0 ) );

        childthread _id_A5F5( var_3, var_6 * ( 1.0 / var_2 ), var_4 );
    }

    _id_B340( var_0, var_1, var_2, var_3, var_4, var_5 );
    self notify( "Notetrack_Timeout" );
}

_id_A5F5( var_0, var_1, var_2 )
{
    self notify( "Notetrack_Timeout" );
    self endon( "Notetrack_Timeout" );
    var_1 = _func_0147( 0.05, var_1 );
    wait( var_1 );

    if ( isdefined( var_2 ) )
        self notify( var_0, var_2 );
    else
        self notify( var_0, "end" );
}

_id_4E68( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( var_4 != "highest_point" )
        _id_B343( var_0, var_1, var_3, var_4, var_7 );

    if ( var_6 )
    {
        var_8 = self._id_530D;
        var_9 = 1;
    }
    else
    {
        var_8 = _id_077B::_id_6D7A( self._id_530B._id_0457, "targetname" );
        var_8 = var_8._id_02EA;
        var_10 = _func_00BB( var_2, "highest_point" );
        var_9 = var_10[0];
    }

    _id_4E69( var_0, var_1, var_3, var_2, var_4, var_5, var_8, var_9, var_7 );
}

_id_4E69( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    var_9 = abs( self._id_02EA[2] - var_6[2] );
    var_10 = _func_00BB( var_3, var_4 );
    var_11 = var_10[0];
    var_12 = var_11;
    var_13 = _func_00BB( var_3, var_5 );
    var_14 = var_13[0];
    var_7 = var_14;
    var_15 = "flex_height_up_top";
    var_16 = _func_00BB( var_3, var_15 );
    var_17 = "flex_height_down_top";
    var_18 = _func_00BB( var_3, var_17 );
    var_19 = "flex_height_down_bottom";
    var_20 = _func_00BB( var_3, var_19 );

    if ( var_4 == "flex_height_up_start" && var_16.size > 0 )
        var_7 = var_16[0];

    if ( var_4 == "flex_height_down_start" )
    {
        if ( var_18.size > 0 )
            var_12 = var_16[0];

        if ( var_20.size > 0 )
            var_7 = var_20[0];
    }

    var_21 = _func_00B0( var_3, var_12, var_7 );
    var_22 = abs( var_21[2] );
    var_24 = _func_00B0( var_3, var_11, var_14 );
    var_25 = abs( var_24[2] );

    if ( var_25 < 1 )
        var_26 = 1;
    else
    {
        var_27 = var_22 - var_25;

        if ( var_9 <= var_27 )
            var_26 = ( var_27 - var_9 ) / var_25;
        else
            var_26 = ( var_9 - var_27 ) / var_25;
    }

    var_28 = clamp( 1 / var_26, 0.33, 3.0 );

    if ( self _meth_85EA() )
        self _meth_82B9( 1.0, var_26 );

    _id_B340( var_0, var_1, var_28, var_2, var_5, var_8 );
}
