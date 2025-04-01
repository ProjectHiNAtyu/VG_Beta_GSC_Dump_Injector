// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_A6AA( var_0, var_1, var_2, var_3 )
{
    return !_id_DBDF( var_0, var_1, var_3 );
}

_id_6B19( var_0 )
{
    return 256.0;
}

_id_DBDF( var_0, var_1, var_2, var_3 )
{
    if ( !self _meth_8847() )
        return 0;

    if ( !isdefined( self._id_0303 ) )
        return 0;

    var_4 = _id_08C8::_id_68B9();

    if ( !_id_0009::_id_1C28( var_0, "cover_approach" ) )
        return 0;

    if ( isdefined( var_3 ) )
    {
        if ( !isalive( var_3 ) )
            var_5 = var_3;
        else if ( var_3.size < 1 )
            var_5 = "Exposed";
        else
            var_5 = var_3[0];
    }
    else
        var_5 = "Exposed";

    if ( !_id_08C8::_id_874A( var_0, var_1, var_2, var_5 ) )
        return 0;

    var_6 = distance( self._id_02EA, self._id_0303 );
    var_7 = _id_6B19( var_5 );

    if ( var_6 > var_7 )
        return 0;

    var_8 = 0;

    if ( isdefined( var_3 ) && var_3.size > 1 )
        var_8 = int( var_3[1] );

    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;

    if ( var_5 == "Exposed Moving" )
        var_11 = "code_move";

    var_12 = _id_0009::_id_1C39();

    if ( var_12 == "casual" || var_12 == "casual_gun" || var_12 == "patrol" )
    {
        var_13 = 0.053;

        if ( self _meth_8472() < 25.0 )
            var_13 = 2.0;

        self._id_1C08._id_E903 = _id_2ED7( var_0, var_1, var_2, var_5, var_8, undefined, var_9, var_13, undefined, var_10, var_11 );
    }
    else
        self._id_1C08._id_E903 = _id_2ED7( var_0, var_1, var_2, var_5, var_8, undefined, var_9, undefined, undefined, var_10, var_11 );

    if ( !isdefined( self._id_1C08._id_E903 ) )
        return 0;

    return 1;
}

_id_DBE7( var_0, var_1, var_2, var_3 )
{
    if ( !_id_0009::_id_1C28( var_0, "code_move" ) )
        return 0;

    return _id_DBE6( var_0, var_1, var_2, var_3 );
}

_id_DBE6( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_0009::_id_1C39();

    if ( !isdefined( var_3 ) || var_4 != var_3[2] )
        return 0;

    return _id_DBDF( var_0, var_1, var_2, var_3 );
}

_id_DBE9( var_0, var_1, var_2, var_3 )
{
    if ( !_id_0009::_id_1C28( var_0, "code_move" ) )
        return 0;

    return _id_DBE8( var_0, var_1, var_2, var_3 );
}

_id_DBE8( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_0009::_id_1C39();

    if ( !isdefined( var_3 ) || var_4 != var_3[2] )
        return 0;

    return _id_DBDF( var_0, var_1, var_2, var_3 );
}

_id_AF3C()
{
    var_0 = _id_08C8::_id_68B9();

    if ( !isdefined( var_0 ) )
        return 1;

    if ( !isdefined( var_0._id_AF30 ) )
        return 1;

    return var_0._id_AF30;
}

_id_DBE4( var_0, var_1, var_2, var_3 )
{
    if ( _id_0694::_id_23AD() )
        return 0;

    if ( !_id_AF3C() )
        return 0;

    if ( isdefined( self._id_0B3E.doortoopen ) )
        return 0;

    return _id_DBDF( var_0, var_1, var_2, var_3 );
}

_id_3580( var_0, var_1, var_2 )
{
    return self._id_1C08._id_E903;
}

calculatefootprefix( var_0, var_1, var_2 )
{
    var_3 = "";

    if ( var_1 )
    {
        var_4 = "left";

        if ( _id_0009::_id_1C29( var_0, "pass_left" ) )
            var_4 = "left";
        else if ( _id_0009::_id_1C29( var_0, "pass_right" ) )
            var_4 = "right";
        else if ( self._id_1C08._id_5E1A._id_5E16 == "right" )
            var_4 = "right";

        if ( isdefined( var_2 ) )
            var_3 = var_2 + var_4;
        else
            var_3 = var_4;
    }
    else
        var_3 = var_2;

    return var_3;
}

_id_2ED7( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    var_12 = _id_08C8::_id_68B9();

    if ( isdefined( var_12 ) && !self _meth_84C0() && isdefined( self._id_038B ) && self._id_038B == var_12 )
    {
        if ( distance2dsquared( self._id_038B._id_02EA, self._id_0303 ) > 4096 )
        {
            if ( !isdefined( self._id_038B._id_2ED8 ) || self._id_038B._id_2ED8 < gettime() - level._id_01CC )
                self._id_038B._id_2ED8 = gettime();
            else
            {
                self._id_038B _meth_809A();
                self._id_038B = undefined;
                var_12 = _id_08C8::_id_68B9();
            }
        }
    }

    var_13 = undefined;

    if ( isdefined( var_12 ) )
        var_13 = var_12._id_02EA;
    else
        var_13 = self._id_0303;

    var_14 = var_13 - self._id_02EA;
    var_14 = _func_025A( ( var_14[0], var_14[1], 0 ) );
    var_15 = _func_0257( var_14, anglestoforward( self._id_0054 ) );

    if ( var_15 < 0 )
        return undefined;
    else if ( var_15 < 0.707 )
    {
        if ( !isdefined( var_7 ) )
            var_7 = 0.106;

        if ( !isdefined( var_8 ) )
            var_8 = 0.7;
    }

    if ( var_3 == "Custom" )
    {
        var_2 = self._id_1C08._id_4249._id_1BE8;
        var_4 = self._id_1C08._id_4249._id_1BED;
    }

    if ( !isdefined( var_6 ) )
        var_6 = "";

    var_17 = calculatefootprefix( var_0, var_4, var_6 );
    var_18 = _id_08C8::_id_A568( var_12 );
    var_19 = undefined;
    var_20 = undefined;

    if ( ( var_3 == "Exposed" || var_3 == "Exposed Crouch" ) && ( scripts\anim\utility_common::_id_C0EB() || _id_08C8::_id_03AC() || isdefined( self._id_017D ) ) )
    {
        if ( !_id_0694::_id_23E8() && !isdefined( self._id_03B5 ) )
        {
            if ( isdefined( var_12 ) && isdefined( var_12._id_0054 ) )
            {
                var_19 = var_12._id_0054[1];
                var_20 = var_12._id_0054;
                var_18 = 1;
            }
            else
                var_18 = 0;
        }
        else
        {
            var_21 = _id_08D7::_id_6DED();
            var_20 = ( 0, self._id_0054[1] + var_21, 0 );
            var_19 = var_20[1];
            var_18 = 1;
        }
    }
    else if ( var_18 )
    {
        var_19 = _id_08C8::_id_6B7E( var_12, undefined, 0 );
        var_20 = var_12._id_0054;
    }

    var_22 = self _meth_856A( var_13, var_20, _id_6996(), var_5, var_18, var_2, var_19, var_17, var_6, var_7, var_8, var_3, var_9, var_10, var_11 );
    return var_22;
}

calculatesuppressionstopdata( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    var_12 = self._id_0B3E._id_014E;
    var_13 = var_12 - self._id_02EA;
    var_14 = getdvarfloat( "#x3d812793fe8c62a33" ) + 1;
    var_15 = var_14 * var_14;

    if ( _func_0133( var_13 ) > var_15 )
        return undefined;

    if ( !isdefined( var_6 ) )
        var_6 = "";

    var_16 = calculatefootprefix( var_0, var_4, var_6 );
    var_17 = 0;
    var_18 = undefined;
    var_19 = undefined;
    var_8 = 0;
    var_20 = self _meth_856A( var_12, var_18, undefined, var_5, var_17, var_2, var_19, var_16, var_6, var_7, var_8, var_3, var_9, var_10, var_11 );

    if ( isdefined( var_20 ) )
        var_20._id_425B = var_12;

    return var_20;
}

_id_B336( var_0, var_1 )
{
    self endon( "runto_arrived" );
    self endon( var_1 + "_finished" );
    self waittill( "path_set" );
    _id_0009::_id_1C2B( var_0, "abort" );
}

_id_B335( var_0, var_1 )
{
    self endon( "runto_arrived" );
    self endon( var_1 + "_finished" );

    for (;;)
    {
        if ( !isdefined( self._id_0303 ) )
            break;

        wait 0.05;
    }

    _id_0009::_id_1C2B( var_0, "abort" );
}

_id_1BEB( var_0, var_1, var_2 )
{
    self _meth_85FA();
    self _meth_8614();

    if ( _id_AF3C() )
    {
        var_3 = _id_08C8::_id_68B9();
        var_4 = self;

        if ( _id_08C8::_id_A568( var_3 ) )
            var_4 = var_3;

        self _meth_8250( "face angle", var_4._id_0054[1] );
    }
}

_id_1BEC( var_0 )
{
    self endon( "death" );
    self._id_1C08._id_0062 = var_0;
    self waittill( var_0 + "_finished" );
    self._id_1C08._id_0062 = undefined;
}

_id_5AF2( var_0, var_1, var_2 )
{
    self _meth_85FA();
    self _meth_8614();
}

_id_B30C( var_0, var_1, var_2, var_3 )
{
    self endon( var_1 + "_finished" );
    self._id_1C08._id_1BEA = 0;
    var_4 = _func_00B0( var_2, 0.0, 1.0 );
    var_5 = _func_0079( var_2 );
    var_6 = 0.05 / var_5;

    for ( var_7 = 1.0 - var_6; var_7 > 0.0; var_7 = var_7 - var_6 )
    {
        var_8 = _func_00B0( var_2, 0.0, var_7 );

        if ( _func_0133( var_4 - var_8 ) >= 64 )
            break;
    }

    var_9 = var_7 * var_5 / var_3;
    wait( var_9 );
    self._id_1C08._id_1BEA = 1;
}

_id_C78D( var_0 )
{
    if ( var_0 == "corner" )
        return 1;
}

_id_C78E( var_0 )
{
    if ( var_0 == "warp_arrival_start" )
        return 1;
}

_id_2EB7( var_0, var_1 )
{
    var_2 = 64;
    var_3 = 110;

    if ( var_1 >= var_2 && var_1 <= var_3 )
    {
        var_4 = ( var_1 - var_2 ) / ( var_3 - var_2 );
        var_5 = self _meth_8649();
        return ( 1 - var_4 ) * var_5 + var_4 * var_0;
    }

    return var_0;
}

_id_B30A( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    var_3 = 1.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    self._id_1C08._id_1BDB = var_1;
    self._id_0DB6._id_1BDB = var_1;
    thread _id_1BEC( var_1 );
    var_4 = _id_0009::_id_1C34( var_0, var_1 );

    if ( !isdefined( var_4 ) )
    {
        self _meth_8250( "face motion" );
        _id_0009::_id_1C2B( var_0, "abort", undefined );
        return;
    }

    self _meth_8250( "face angle", self._id_0054[1] );
    var_5 = var_4._id_01AA;
    var_6 = var_4._id_0052;
    var_7 = ( 0, var_5[1] - var_4._id_0051, 0 );
    var_8 = var_4._id_03DE;
    var_9 = var_7[1];

    if ( isdefined( var_4._id_02F9 ) && isdefined( var_4._id_02F6 ) )
    {
        var_10 = var_4._id_03DE - var_4._id_02F9;
        var_10 = _func_01C3( var_10, var_4._id_02F6 );
        var_11 = _func_00FF( var_4._id_02F6 );
        var_12 = _func_0047( var_7, var_11 );
        var_13 = self setplayermusicstate();
        var_10 = _func_01C2( var_10, var_13._id_0054 );
        var_8 = var_10 + var_13._id_02EA;
        var_14 = _func_0047( var_12, var_13._id_0054 );
        var_9 = var_14[1];
    }

    var_15 = var_1;

    if ( isdefined( self._id_1C08._id_4249 ) && isdefined( self._id_1C08._id_4249._id_1BE8 ) )
        var_15 = self._id_1C08._id_4249._id_1BE8;

    var_16 = var_4._id_03E8;
    var_17 = _id_0009::_id_1C46( var_15, var_16 );
    var_18 = _id_08C8::_id_68B9();

    if ( isdefined( var_4._id_425B ) )
        var_19 = var_4._id_425B;
    else if ( isdefined( var_18 ) )
        var_19 = var_18._id_02EA;
    else
        var_19 = self._id_0303;

    if ( !istrue( var_4._id_2C2F ) )
        self _meth_83D8();

    if ( _func_0011( var_17, "code_move" ) )
    {
        self _meth_8018( "zonly_physics", 0 );
        var_20 = _id_077B::_id_A1A9( var_17, var_19, var_4._id_01AA, undefined, "corner", undefined );
        self _meth_85EB( var_15, var_16, var_20 );
        _id_0009::_id_1C1D( var_0, var_1, ::_id_C78D, undefined, var_15 );
        self _meth_85EB( var_15, var_16, 1 );
        _id_0009::_id_1C1D( var_0, var_1, undefined, undefined, var_15 );
        return;
    }

    if ( isdefined( self._id_1C08._id_4249._id_4202 ) )
    {
        var_21 = self._id_1C08._id_4249._id_4202;
        self _meth_8018( var_21 );
    }
    else
        self _meth_8018( "zonly_physics", 0 );

    _id_0009::_id_1C66( var_0, var_1, var_17 );
    var_22 = 1.0;

    if ( isdefined( var_19 ) )
    {
        var_23 = _func_0130( var_4._id_02B4 );
        var_24 = _func_0130( self._id_02EA - var_19 );

        if ( var_24 > 1.0 )
            var_22 = var_23 / _func_0130( self._id_02EA - var_19 );

        var_22 = clamp( var_22, 0.8, 1.3 );
    }

    var_25 = var_3 * var_22;

    if ( isdefined( self._id_1BE4 ) )
        var_25 = var_25 * self._id_1BE4;

    if ( isdefined( self._id_1BE5 ) && isdefined( self._id_1BDE ) && _id_08C8::_id_880B() && _id_08C8::_id_4789() )
    {
        var_25 = self._id_1BDE / self._id_1BE5;
        self._id_1BDE = undefined;
        var_26 = 0.8;
        var_25 = _func_0147( var_26, var_25 );
    }

    thread _id_B30C( var_0, var_1, var_17, var_25 );
    self _meth_85EB( var_15, var_16, var_25 );
    var_27 = 1.0;

    if ( _func_0011( var_17, "warp_arrival_start" ) )
    {
        var_28 = _func_00BB( var_17, "warp_arrival_start" );
        var_29 = _func_00BB( var_17, "warp_arrival_end" );

        if ( var_28[0] > 0.0 )
            _id_0009::_id_1C1D( var_0, var_1, ::_id_C78E, undefined, var_15, 0 );

        var_30 = _func_0079( var_17 );
        var_31 = var_28[0];

        if ( var_31 > 0 )
        {
            var_31 = var_28[0] * var_30 * 1000;
            var_31 = var_31 - _id_077B::_id_9FB1( int( var_31 ), level._id_01CC );
            var_31 = var_31 / var_30 / 1000;
        }

        var_27 = var_29[0];
        var_32 = int( ( var_27 - var_31 ) * var_30 / var_25 * 1000.0 );
        var_32 = var_32 + ( level._id_01CC - _id_077B::_id_9FB1( var_32, level._id_01CC ) );
        _id_077B::_id_A1AA( var_17, var_19, var_4._id_01AA, var_31, 1.0, var_32, 0 );
    }
    else
    {
        var_33 = 500;

        if ( _func_0011( var_17, "start_aim" ) )
        {
            var_27 = _func_00BB( var_17, "start_aim" )[0];
            var_34 = _func_0079( var_17 );
            var_33 = int( var_27 * var_34 / var_25 * 1000 );

            if ( var_33 < 300 && var_34 / var_25 >= 0.15 )
                var_33 = 300;
        }

        self _meth_85F9( var_8, var_7, var_19, var_4._id_01AA, var_33 );
    }

    if ( !_func_0102( self ) )
    {
        var_35 = _id_0009::_id_1C56( var_1, "conceal_add" );

        if ( isdefined( var_35 ) && isdefined( var_18 ) && isdefined( var_18._id_048F ) && ( var_18._id_048F == "Conceal Crouch" || var_18._id_048F == "Conceal Stand" ) )
        {
            var_36 = _id_0009::_id_1C46( var_1, var_35 );
            var_30 = _func_0079( var_17 );
            var_37 = var_30 * var_27 * 0.3;
            thread _id_08CB::_id_E5BC( var_1, var_36, var_37 );
        }
    }

    _id_0009::_id_1C1D( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ), undefined, var_15 );
    self._id_0DB6._id_A222 = "stop";
}

_id_6996()
{
    if ( isdefined( self._id_1C08._id_4249._id_1BDA ) )
        return self._id_1C08._id_4249._id_1BDA;

    return undefined;
}

_id_6D72( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_5[5] = _id_0009::_id_1C57( 1, var_0, var_1, var_3, var_4 );
    var_5[4] = _id_0009::_id_1C57( 2, var_0, var_1, var_3, var_4 );
    var_5[3] = _id_0009::_id_1C57( 3, var_0, var_1, var_3, var_4 );
    var_5[6] = _id_0009::_id_1C57( 4, var_0, var_1, var_3, var_4 );
    var_5[2] = _id_0009::_id_1C57( 6, var_0, var_1, var_3, var_4 );
    var_5[7] = _id_0009::_id_1C57( 7, var_0, var_1, var_3, var_4 );
    var_5[0] = _id_0009::_id_1C57( 8, var_0, var_1, var_3, var_4 );
    var_5[1] = _id_0009::_id_1C57( 9, var_0, var_1, var_3, var_4 );
    var_5[8] = var_5[0];
    return var_5;
}

_id_DBE3( var_0, var_1, var_2, var_3 )
{
    var_4 = "Custom";
    var_5 = distance( self._id_02EA, self._id_0303 );
    var_6 = _id_6B19( var_4 );

    if ( var_5 > var_6 )
        return 0;

    var_7 = 0;

    if ( isdefined( self._id_1C08._id_4249._id_1BED ) )
        var_7 = self._id_1C08._id_4249._id_1BED;

    var_8 = _id_0009::_id_1C3C( var_0, "cover_approach" );
    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;
    var_12 = "";
    var_13 = undefined;

    if ( isdefined( self._id_1C08._id_4249._id_1BE2 ) )
        var_13 = self._id_1C08._id_4249._id_1BE2;

    self._id_1C08._id_E903 = _id_2ED7( var_0, var_1, self._id_1C08._id_4249._id_1BE8, var_4, var_7, var_8, var_13, var_11, undefined, var_9, var_10, var_12 );

    if ( !isdefined( self._id_1C08._id_E903 ) )
        return 0;

    return 1;
}

_id_DBE2( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
    {
        if ( !isalive( var_3 ) )
            var_4 = var_3;
        else if ( var_3.size < 1 )
            var_4 = "Exposed";
        else
            var_4 = var_3[0];
    }
    else
        var_4 = "Exposed";

    var_5 = self _meth_871C();

    if ( !isdefined( var_5 ) )
        return 0;

    if ( isdefined( var_5["desiredspeed"] ) )
        self._id_1BDE = var_5["desiredspeed"];

    if ( isdefined( var_5["targetspeed"] ) )
        self._id_1BE5 = var_5["targetspeed"];
    else
        self._id_1BE5 = undefined;

    var_6 = "";

    if ( isdefined( var_5["speed"] ) )
        var_6 = var_5["speed"];

    var_7 = 0;

    if ( isdefined( var_3 ) && isalive( var_3 ) && var_3.size >= 2 )
        var_7 = 1;

    var_8 = _id_0009::_id_1C3C( var_0, "cover_approach" );
    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;

    if ( var_4 == "Exposed Moving" )
    {
        var_10 = "code_move";
        var_11 = 0.07;
    }

    self._id_1C08._id_E903 = _id_2ED7( var_0, var_1, var_2, var_4, var_7, var_8, undefined, var_11, undefined, var_9, var_10, var_6 );

    if ( !isdefined( self._id_1C08._id_E903 ) )
        return 0;

    return 1;
}

_id_DBE0( var_0, var_1, var_2, var_3 )
{
    return 0;
}

_id_DBE1( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) || var_3.size < 1 )
        var_4 = "Exposed";
    else
        var_4 = var_3[0];

    if ( !_id_08C8::_id_874B( var_0, var_4 ) )
        return 0;

    var_5 = distance( self._id_02EA, self._id_0303 );
    var_6 = _id_6B19( var_4 );

    if ( var_5 > var_6 )
        return 0;

    var_7 = 0;

    if ( isdefined( var_3 ) && var_3.size >= 2 )
        var_7 = 1;

    var_8 = _id_0009::_id_1C3C( var_0, "cover_approach" );
    var_9 = "";
    var_10 = _id_0694::_id_2392();

    if ( var_10 == "panic" || var_10 == "stealth" || var_10 == "casual" )
    {
        var_11 = _func_0130( self._id_04B7 );
        var_12 = _id_08C8::_id_68DB();
        var_9 = _func_03A1( var_12, var_11 );
        self._id_1BE5 = _func_03A0( var_12, var_9 );
    }
    else
        self._id_1BE5 = undefined;

    var_13 = 0.053;

    if ( self _meth_8472() < 25.0 )
        var_13 = 2.0;

    self._id_1C08._id_E903 = _id_2ED7( var_0, var_1, var_2, var_4, var_7, var_8, undefined, var_13, 0.3, undefined, undefined, var_9 );

    if ( !isdefined( self._id_1C08._id_E903 ) )
        return 0;

    return 1;
}

calcsuppressionarrivaltype( var_0, var_1, var_2 )
{
    var_3 = _func_01B6( 1 );

    if ( var_3 < 0.75 )
        self.suppressionarrivaltype = "Exposed Crouch";
    else
        self.suppressionarrivaltype = "Exposed";
}

shoulddosuppressionstoparrival( var_0, var_1, var_2, var_3 )
{
    return self _meth_81D4();
}

shouldstartsuppressionstoparrival( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_4 = "Exposed Crouch";
    else
        var_4 = var_3;

    if ( self.suppressionarrivaltype != var_4 )
        return 0;

    var_5 = 1;
    var_6 = "";
    var_7 = self _meth_8642();
    var_8 = _id_08C8::_id_68DB();
    var_6 = _func_03A1( var_8, var_7 );
    self._id_1BE5 = _func_03A0( var_8, var_6 );
    var_9 = undefined;
    self._id_1C08._id_E903 = calculatesuppressionstopdata( var_0, var_1, var_2, var_4, var_5, undefined, undefined, var_9, 0.3, undefined, undefined, var_6 );

    if ( !isdefined( self._id_1C08._id_E903 ) )
        return 0;

    return 1;
}

_id_F483( var_0, var_1, var_2, var_3 )
{
    return self._id_1C08._id_1BEA;
}

_id_359F( var_0, var_1, var_2 )
{
    var_3 = "left";

    if ( _id_0009::_id_1C29( var_0, "pass_left" ) )
        var_3 = "left";
    else if ( _id_0009::_id_1C29( var_0, "pass_right" ) )
        var_3 = "right";
    else if ( self._id_1C08._id_5E1A._id_5E16 == "right" )
        var_3 = "right";

    var_4 = "shuffle";
    var_5 = 0;
    var_6 = _id_08C8::_id_68B9();
    var_7 = _id_08C8::_id_A568( var_6 );
    var_8 = 6400.0;

    if ( scripts\anim\utility_common::_id_C0EB() || !isdefined( self._id_017D ) )
        var_5 = _id_08D7::_id_6DED();
    else if ( var_7 && length( var_6._id_02EA - self._id_02EA ) < var_8 )
        var_5 = _id_08C8::_id_6B7E( var_6 ) - self._id_0054[1];
    else if ( istrue( self._id_1572 ) )
    {
        var_9 = 0;

        if ( _func_011C( self._id_017D ) )
            var_9 = self _meth_8618( self._id_017D );
        else
            var_9 = _func_03FD( self._id_02EA, self._id_017D._id_02EA );

        if ( var_9 )
            var_5 = vectordot( self._id_017D._id_02EA - self._id_02EA );
    }

    var_5 = _func_000B( var_5 );

    if ( _id_08C8::_id_880B() && _id_08C8::_id_4789() )
    {
        var_10 = self _meth_8649();
        var_11 = _id_08C8::_id_68DB();
        var_4 = _func_03A1( var_11, var_10 );
    }

    var_12 = [ 8, 9, 6, 3, 2, 1, 4, 7, 8 ];
    var_13 = _func_0321( var_5, 22.5 );
    var_14 = var_3 + var_12[var_13] + var_4;
    return _id_0009::_id_1C55( var_1, var_14 );
}

_id_B338( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    self _meth_875F();
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    var_4 = _id_0009::_id_1C46( var_1, var_3 );
    var_5 = 1.0;
    self _meth_85EB( var_1, var_3, var_5 );
    _id_0009::_id_1C66( var_0, var_1, var_4 );
    _id_0009::_id_1C1D( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ) );
    self _meth_8473();
}

_id_B339( var_0, var_1, var_2 )
{
    self _meth_8760();
}

_id_2E8C( var_0, var_1, var_2 )
{
    self._id_0B3E._id_035C = _id_68BA();
}

_id_68BA()
{
    if ( isdefined( self._id_1C08._id_4249._id_1BE8 ) )
        return "Custom";

    if ( _id_0694::_id_23EC() )
        return "Exposed";

    var_0 = _id_08C8::_id_68B9();

    if ( isdefined( self._id_038B ) && isdefined( self._id_038B._id_048F ) && var_0 == self._id_038B )
        return self._id_038B._id_048F;

    if ( !isdefined( var_0 ) || !_func_02DC( var_0 ) || !isdefined( var_0._id_048F ) || var_0._id_048F == "struct" || self._id_0102 == "no_cover" )
    {
        var_1 = self _meth_875A();

        if ( isdefined( var_1 ) )
        {
            var_2 = _id_0009::_id_1C39();
            var_3 = self issprintsliding( "crouch" ) && var_2 == "combat";

            if ( var_3 && _id_08C8::_id_35BC( self, var_1 ) )
                return "Exposed Crouch";

            return "Exposed";
        }

        if ( _id_0694::_id_239F() == "crouch" || _id_08C8::_id_8845() && self issprintsliding( "crouch" ) )
            return "Exposed Crouch";

        return "Exposed";
    }

    if ( isdefined( self._id_017D ) && _id_08C8::_id_87AE( var_0 ) || _id_08C8::_id_03AC( var_0 ) )
    {
        if ( var_0 dodamage( "stand" ) && self issprintsliding( "stand" ) )
            return "Exposed";
        else if ( var_0 dodamage( "crouch" ) && self issprintsliding( "crouch" ) )
            return "Exposed Crouch";
        else
            return "Cover Prone";
    }

    if ( _func_02DC( var_0 ) && var_0 _meth_80BA() )
    {
        var_4 = _id_077B::_id_68ED( var_0 );

        if ( isdefined( var_4 ) && var_4 != var_0._id_048F )
            var_0 _meth_80B9( var_4 );
    }

    var_5 = var_0._id_048F;
    var_6 = _id_08C8::_id_1598();

    if ( var_6 )
    {
        var_7 = 1;

        if ( isdefined( self._id_017D ) )
            var_7 = enemyiswithinmountedlmgaimcone( var_0 );

        if ( var_7 )
        {
            switch ( var_5 )
            {
                case "Cover Prone":
                case "Cover Crouch":
                    return "Cover Crouch LMG";
                case "Cover Stand":
                    return "Cover Stand LMG";
            }
        }
    }

    if ( isdefined( self._id_0B3E._id_011D ) && !var_6 )
        return self._id_0B3E._id_011D;

    return self _meth_86A9( var_0, var_5 );
}

enemyiswithinmountedlmgaimcone( var_0 )
{
    if ( !isdefined( var_0 ) )
    {
        var_1 = self _meth_8849();
        var_2 = self _meth_815B();
    }
    else
    {
        var_1 = var_0._id_02EA;
        var_2 = var_0._id_0054;
    }

    var_3 = _id_0698::_id_6D0A( var_1 );

    if ( isdefined( var_3 ) )
    {
        var_4 = _func_025B( var_3._id_DA2D - var_1 );
        var_5 = _func_0438( var_2[1] - var_4[1] );

        if ( var_5 > anim._id_1335 )
            return 0;
    }

    return 1;
}
