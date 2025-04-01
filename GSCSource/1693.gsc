// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_1797( var_0, var_1, var_2 )
{
    var_3 = _id_6337( var_2 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    _id_077B::_id_1B8F( var_0, ::_id_1799, var_1, var_4, var_5 );
}

_id_17A5( var_0, var_1, var_2 )
{
    var_3 = _id_6337( var_2 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    thread _id_1799( var_0, var_1, var_4, var_5, "generic" );
}

_id_17A2( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _id_1813( var_3, var_1, var_2, 0, "generic" );
}

_id_17AB( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4[0] = var_0;
    _id_1813( var_4, var_1, var_2, 0.25, "generic", var_3 );
}

_id_181F( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _id_1813( var_3, var_1, var_2, 0.25 );
}

_id_179A( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _id_1797( var_3, var_1, var_2 );
}

_id_1799( var_0, var_1, var_2, var_3, var_4 )
{
    var_0._id_5B90 = gettime();
    var_5 = undefined;

    if ( isdefined( var_4 ) )
        var_5 = var_4;
    else
        var_5 = var_0._id_1887;

    var_6 = 0;

    if ( isalive( level._id_CC24[var_5][var_1] ) )
    {
        var_7 = level._id_CC24[var_5][var_1][0];
        var_6 = 1;
    }
    else
        var_7 = level._id_CC24[var_5][var_1];

    var_0 _id_D3B0( var_1, var_2, var_3, var_5, var_6 );

    if ( _func_0104( var_0 ) )
        var_0 [[ anim._id_2F2C["AIAnimFirstFrame"] ]]( var_7, var_5 );
    else
    {
        var_0 _meth_83EB();
        var_0 _meth_82DA( var_7, 1, 0, 0 );

        if ( !_id_06BB::_id_8A2C() )
        {
            if ( !_func_0117( var_0 ) && isdefined( level._id_CC25[var_5] ) && isdefined( level._id_CC25[var_5][var_1] ) )
                var_0 call [[ level._id_5FF7["scriptModelPlayAnim"] ]]( level._id_CC25[var_5][var_1], undefined, 0, 0, "none" );
        }
    }
}

_id_D3B0( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = undefined;

    if ( isdefined( var_3 ) )
        var_5 = var_3;
    else
        var_5 = self._id_1887;

    if ( isdefined( var_4 ) && var_4 )
        var_6 = level._id_CC24[var_5][var_0][0];
    else
        var_6 = level._id_CC24[var_5][var_0];

    var_7 = getstartorigin( var_1, var_2, var_6 );
    var_8 = _func_00D2( var_1, var_2, var_6 );
    self [[ anim._id_2F2C["TeleportEnt"] ]]( var_7, var_8 );
}

_id_1830( var_0, var_1, var_2 )
{
    var_3 = _id_6337( var_2 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    _id_077B::_id_1BBA( var_0, ::_id_D3B0, var_1, var_4, var_5 );
}

_id_1831( var_0, var_1, var_2 )
{
    var_3[0] = var_0;
    _id_1830( var_3, var_1, var_2 );
}

_id_17C1( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _id_1797( var_3, var_1, var_2 );
    var_4 = var_0 _id_077B::_id_68A0( var_1 );

    if ( isalive( var_4 ) )
        var_4 = var_4[0];

    if ( var_0 _meth_82EA( var_4 ) )
        _id_1811( var_3, var_1, 0.999999 );
    else
        _id_1811( var_3, var_1, 1.0 );

    var_5 = _func_00B0( var_4 );
    var_6 = _func_0078( var_4 );
    var_7 = _func_01C2( var_5, var_0._id_0054 );
    var_8 = var_0._id_02EA + var_7;
    var_9 = _func_0047( var_0._id_0054, var_6 );
    var_0 [[ anim._id_2F2C["TeleportEnt"] ]]( var_8, var_9 );
}

_id_181D( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5[0] = var_0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    _id_1813( var_5, var_1, var_2, var_3, var_4 );
}

_id_181A( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = self;

    if ( !isdefined( var_6 ) )
        var_6 = 0;

    foreach ( var_9 in var_0 )
    {
        if ( !isdefined( var_9 ) )
            continue;

        if ( !isdefined( var_9._id_0B0E ) )
            var_9._id_0B0E = 0;

        var_9._id_0B0E++;
    }

    var_11 = _id_6337( var_2 );
    var_12 = var_11["origin"];
    var_13 = var_11["angles"];
    var_14 = undefined;

    if ( var_6 )
        var_15 = 0;
    else
        var_15 = 999999;

    var_16 = undefined;
    var_17 = undefined;
    var_18 = undefined;
    var_19 = undefined;
    var_20 = "single anim";

    foreach ( var_32, var_9 in var_0 )
    {
        if ( !isdefined( var_9 ) )
            continue;

        var_22 = 0;
        var_23 = 0;
        var_24 = 0;
        var_25 = 0;
        var_26 = 0;
        var_27 = undefined;
        var_28 = undefined;
        var_29 = undefined;
        var_30 = undefined;

        if ( isdefined( var_4 ) )
            var_30 = var_4;
        else
            var_30 = var_9._id_1887;

        if ( isdefined( level._id_CC39[var_30] ) && isdefined( level._id_CC39[var_30][var_1] ) )
        {
            var_24 = 1;
            var_27 = level._id_CC39[var_30][var_1];
        }

        if ( isdefined( level._id_CC2F[var_30] ) && isdefined( level._id_CC2F[var_30][var_1] ) )
        {
            var_22 = 1;
            var_28 = level._id_CC2F[var_30][var_1];
            var_18 = var_28;

            if ( var_24 )
            {
                if ( _func_0011( var_28, "vo_" + var_27 ) )
                {
                    var_24 = 0;
                    var_27 = undefined;
                }
            }
        }

        if ( isdefined( level._id_CC32[var_30] ) && isdefined( level._id_CC32[var_30][var_1] ) )
        {
            var_23 = 1;
            var_29 = level._id_CC32[var_30][var_1];
            var_19 = var_29;
        }

        if ( isdefined( level._id_CC24[var_30] ) && isdefined( level._id_CC24[var_30][var_1] ) && self [[ anim._id_2F2C["ShouldDoAnim"] ]]() )
            var_25 = 1;

        if ( isdefined( level._id_CC26[var_30] ) && isdefined( level._id_CC26[var_30][var_1] ) )
            var_9 _meth_827B( level._id_CC26[var_30][var_1] );

        if ( var_25 )
        {
            var_9 guy_pre_anim_func();
            var_31 = var_9 [[ anim._id_2F2C["DoAnimation"] ]]( var_12, var_13, var_30, var_1, var_20, var_5 );
            var_9 thread guy_post_anim_func_watcher( var_20, undefined );

            if ( var_6 )
            {
                if ( var_31 > var_15 )
                {
                    var_15 = var_31;
                    var_14 = var_32;
                }
            }
            else if ( var_31 < var_15 )
            {
                var_15 = var_31;
                var_14 = var_32;
            }
        }

        if ( var_22 || var_24 )
        {
            if ( var_9 [[ anim._id_2F2C["DoFacialAnim"] ]]( var_22, var_24, var_25, var_1, var_30, var_27, 0 ) )
                var_17 = var_32;

            var_16 = var_32;
        }

        if ( var_23 )
            var_9 thread _id_B1CE( var_9, var_19 );

        if ( !_func_0117( var_9 ) && isdefined( level._id_CC25[var_30] ) && isdefined( level._id_CC25[var_30][var_1] ) )
            var_9 _id_077B::_id_D06D( "scriptModelPlayAnim", level._id_CC25[var_30][var_1] );
    }

    if ( isdefined( var_14 ) )
    {
        var_33 = _func_020F();
        var_33 thread _id_178A( var_0[var_14], var_1 );
        var_33 thread _id_1778( var_0[var_14], var_1, var_15, var_3 );
        var_33 waittill( var_1 );
    }
    else if ( isdefined( var_17 ) )
    {
        var_33 = _func_020F();
        var_33 thread _id_178A( var_0[var_17], var_1 );
        var_33 thread _id_1795( var_0[var_17], var_1, var_18 );
        var_33 waittill( var_1 );
    }
    else if ( isdefined( var_16 ) )
    {
        var_33 = _func_020F();
        var_33 thread _id_178A( var_0[var_16], var_1 );
        var_33 thread _id_178B( var_0[var_16], var_1 );
        var_33 waittill( var_1 );
    }

    foreach ( var_9 in var_0 )
    {
        if ( !isdefined( var_9 ) )
            continue;

        var_9._id_0B0E--;
        var_9._id_0C1E = gettime();
    }

    self notify( var_1 );
}

_id_1813( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    _id_181A( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_id_17CB( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_6[0] = var_0;
    _id_17C6( var_6, var_1, var_2, var_3, var_4, var_5 );
}

_id_17CC( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_4[0] = var_0;
    _id_17C6( var_4, var_1, var_2, var_3 );
}

_id_17A7( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4["guy"] = var_0;
    var_4["entity"] = self;
    var_4["tag"] = var_3;
    var_5[0] = var_4;
    _id_17C9( var_5, var_1, var_2, "generic" );
}

_id_17C6( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = [];

    foreach ( var_8 in var_0 )
    {
        var_9 = [];
        var_9["guy"] = var_8;
        var_9["entity"] = self;
        var_9["tag"] = var_3;
        var_9["origin_offset"] = var_4;
        var_6[var_6.size] = var_9;
    }

    _id_17C9( var_6, var_1, var_2, var_5 );
}

_id_17CA( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4[0] = var_0;
    _id_17C9( var_4, var_1, var_2, var_3 );
}

_id_B04B( var_0 )
{
    var_1 = undefined;

    if ( var_0._id_A387.size == 1 )
        var_1 = 0;
    else if ( var_0._id_41B6 == var_0._id_A387.size - 1 )
        var_1 = 0;
    else
        var_1 = var_0._id_41B6 + 1;

    var_0._id_41B6 = var_1;
    var_0._id_8F2B = gettime();
    return var_0._id_41B6;
}

_id_17C9( var_0, var_1, var_2, var_3 )
{
    foreach ( var_5 in var_0 )
    {
        var_6 = var_5["guy"];

        if ( !isdefined( var_6 ) )
            continue;

        if ( !isdefined( var_6._id_0B0E ) )
            var_6._id_0B0E = 0;

        var_6 endon( "death" );
        var_6._id_0B0E++;
    }

    var_8 = var_0[0]["guy"];

    if ( !isdefined( var_2 ) )
        var_2 = "stop_loop";

    thread _id_5316( var_2, var_0 );
    self endon( var_2 );
    var_9 = "looping anim";
    var_10 = var_1;
    var_11 = undefined;

    if ( isdefined( var_3 ) )
        var_11 = var_3;
    else
        var_11 = var_8._id_1887;

    var_12 = 0;
    var_13 = 0;
    var_14 = 0;
    var_15 = isdefined( level._id_CC24[var_11][var_1 + "_nags"] );

    if ( var_15 && _id_06BB::_id_8A2C() )
    {
        var_16 = 0;

        foreach ( var_18, var_5 in var_0 )
        {
            if ( _func_0104( var_5["guy"] ) )
                var_16++;
        }

        if ( isdefined( level._id_CC24[var_11][var_1 + "_nags_timer"] ) )
            var_14 = level._id_CC24[var_11][var_1 + "_nags_timer"];
        else
            var_14 = 15;
    }

    var_19 = 0;
    var_20 = undefined;
    var_21 = 0;
    var_22 = 1;

    if ( var_15 )
    {
        _func_01D1( "#x395ac93d24fb09a42", 0 );
        var_20 = _func_020F();
        var_20._id_8F2B = gettime();
        var_20._id_A387 = level._id_CC24[var_11][var_1 + "_nags"];
        var_20._id_41B6 = 0;
        childthread _id_A3A2( var_14, var_8 );
    }

    for (;;)
    {
        if ( !var_19 )
        {
            var_1 = var_10;

            for ( var_12 = _id_1845( var_11, var_1 ); var_12 == var_13 && var_12 != 0; var_12 = _id_1845( var_11, var_1 ) )
            {

            }
        }
        else
        {
            var_12 = _id_B04B( var_20 );
            var_1 = var_10 + "_nags";
            childthread _id_A3A2( var_14, var_8 );
            var_19 = 0;
        }

        var_13 = var_12;
        var_23 = undefined;
        var_24 = 999999;
        var_25 = undefined;
        var_6 = undefined;

        foreach ( var_18, var_5 in var_0 )
        {
            var_27 = var_5["entity"];
            var_6 = var_5["guy"];
            var_28 = var_27 _id_6337( var_5["tag"] );
            var_29 = var_28["origin"];
            var_30 = var_28["angles"];

            if ( isdefined( var_5["origin_offset"] ) )
            {
                var_31 = var_5["origin_offset"];
                var_32 = anglestoforward( var_30 );
                var_33 = anglestoright( var_30 );
                var_34 = anglestoup( var_30 );
                var_29 = var_29 + var_32 * var_31[0];
                var_29 = var_29 + var_33 * var_31[1];
                var_29 = var_29 + var_34 * var_31[2];
            }

            if ( isdefined( var_6._id_C3B4 ) )
            {
                var_6._id_C3B4 = undefined;
                var_0[var_18] = undefined;
                continue;
            }

            var_35 = 0;
            var_36 = 0;
            var_37 = 0;
            var_38 = 0;
            var_39 = undefined;
            var_40 = undefined;
            var_41 = undefined;

            if ( isdefined( var_3 ) )
                var_41 = var_3;
            else
                var_41 = var_6._id_1887;

            if ( isdefined( level._id_CC2F[var_41] ) && isdefined( level._id_CC2F[var_41][var_1] ) && isdefined( level._id_CC2F[var_41][var_1][var_12] ) )
            {
                var_35 = 1;
                var_39 = level._id_CC2F[var_41][var_1][var_12];
            }

            if ( isdefined( level._id_CC39[var_41] ) && isdefined( level._id_CC39[var_41][var_1] ) && isdefined( level._id_CC39[var_41][var_1][var_12] ) )
            {
                var_36 = 1;
                var_40 = level._id_CC39[var_41][var_1][var_12];
            }

            if ( isdefined( level._id_CC26[var_41] ) && isdefined( level._id_CC26[var_41][var_12 + var_1] ) )
                var_6 _meth_827B( level._id_CC26[var_41][var_12 + var_1] );

            if ( isdefined( level._id_CC24[var_41] ) && isdefined( level._id_CC24[var_41][var_1] ) && self [[ anim._id_2F2C["ShouldDoAnim"] ]]() )
                var_37 = 1;

            if ( var_37 )
            {
                if ( var_22 )
                    var_6 guy_pre_anim_func();

                var_42 = var_6 [[ anim._id_2F2C["DoAnimation"] ]]( var_29, var_30, var_41, var_1, var_9, var_12 );

                if ( var_22 )
                    var_6 thread guy_post_anim_func_watcher( undefined, var_2 );

                if ( var_42 < var_24 )
                {
                    var_24 = var_42;
                    var_23 = var_18;
                }
            }

            if ( var_35 || var_36 )
            {
                var_6 [[ anim._id_2F2C["DoFacialAnim"] ]]( var_35, var_36, var_37, var_1, var_41, var_40, 1 );
                var_25 = var_18;
            }
        }

        var_22 = 0;

        if ( !isdefined( var_6 ) )
            break;

        if ( isdefined( var_23 ) )
        {
            var_43 = _id_1087C( var_0[var_23]["guy"], var_9 );

            if ( !isdefined( var_43 ) && var_15 )
            {
                var_19 = 1;

                if ( isdefined( anim._id_2F2C["StopAnimscripted"] ) )
                    var_6 [[ anim._id_2F2C["StopAnimscripted"] ]]();
            }
        }
        else if ( isdefined( var_25 ) )
            var_0[var_25]["guy"] waittill( var_9 );

        if ( var_21 )
            break;
    }
}

_id_1087C( var_0, var_1 )
{
    self endon( "do_nag" );
    var_0 waittillmatch( var_1, "end" );
    return 1;
}

_id_A3A2( var_0, var_1 )
{
    self endon( "death" );
    var_2 = var_0;
    var_3 = gettime();

    while ( var_3 + var_0 * 1000 > gettime() )
        wait 1;

    self notify( "do_nag" );
}

_id_1812( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _id_1811( var_3, var_1, var_2 );
}

_id_1811( var_0, var_1, var_2 )
{
    _id_077B::_id_1BBA( var_0, ::_id_180B, var_1, var_2 );
}

_id_180B( var_0, var_1 )
{
    var_2 = _id_077B::_id_68A0( var_0 );

    if ( isalive( var_2 ) )
        var_2 = var_2[0];

    self _meth_82E6( var_2, var_1 );
}

_id_8EF1()
{
    if ( !isdefined( self._id_8EF0 ) )
    {
        self._id_8EF0 = gettime();
        return;
    }

    var_0 = gettime();

    if ( self._id_8EF0 == var_0 )
    {
        self endon( "death" );
        wait 0.05;
    }

    self._id_8EF0 = var_0;
}

_id_17CF( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _id_6337( var_2 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];

    foreach ( var_10 in var_0 )
    {
        var_11 = getstartorigin( var_7, var_8, level._id_CC24[var_10._id_1887][var_1] );
        var_12 = _func_00D2( var_7, var_8, level._id_CC24[var_10._id_1887][var_1] );

        if ( _func_0104( var_10 ) )
            continue;

        var_10 _meth_823B( var_11, var_3, var_4, var_5 );
        var_10 rotateroll( var_12, var_3, var_4, var_5 );
    }
}

_id_1836( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _id_1835( var_3, var_1, var_2 );
}

_id_1835( var_0, var_1, var_2 )
{
    var_3 = _id_6337( var_2 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];

    foreach ( var_7 in var_0 )
    {
        var_8 = getstartorigin( var_4, var_5, level._id_CC24[var_7._id_1887][var_1] );
        var_9 = _func_00D2( var_4, var_5, level._id_CC24[var_7._id_1887][var_1] );
        var_7 [[ anim._id_2F2C["TeleportEnt"] ]]( var_8, var_9 );
    }
}

_id_17AC( var_0, var_1, var_2 )
{
    var_3 = _id_6337( var_2 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    var_6 = getstartorigin( var_4, var_5, level._id_CC24["generic"][var_1] );
    var_7 = _func_00D2( var_4, var_5, level._id_CC24["generic"][var_1] );
    var_0 [[ anim._id_2F2C["TeleportEnt"] ]]( var_6, var_7 );
}

_id_1827( var_0, var_1, var_2 )
{
    return _id_1828( var_0, "generic", var_1, var_2 );
}

_id_1828( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_6337( var_3 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    var_7 = getstartorigin( var_5, var_6, level._id_CC24[var_1][var_2] );
    var_8 = getstartorigin( var_5, var_6, level._id_CC24[var_1][var_2] );
    var_9 = _func_0205( "script_model", var_7 );
    var_9 setmode( var_0 );
    var_9._id_0054 = var_8;
    return var_9;
}

_id_1829( var_0, var_1 )
{
    self _meth_801E( var_0, var_1 );
}

_id_17C3( var_0, var_1 )
{
    var_2 = self gettagorigin( var_1 );
    var_3 = _func_0205( "script_model", var_2 );
    var_3 setmode( var_0 );
    var_3 _meth_820B( self, var_1, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    return var_3;
}

_id_C4E0( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_0243( var_1 );
    var_5 = level._id_CC36[var_0][var_2][var_1];
    var_2 = _id_64A6( var_2 );
    var_6 = -1;

    if ( !isdefined( var_5 ) || !isalive( var_5 ) || var_5.size < 1 )
        return;

    for ( var_7 = 0; var_7 < var_5.size; var_7++ )
    {
        if ( isdefined( var_5[var_7][var_3] ) )
        {
            if ( !isdefined( var_4 ) || var_5[var_7][var_3] == var_4 )
            {
                var_6 = var_7;
                break;
            }
        }
    }

    if ( var_6 < 0 )
        return;

    if ( var_5.size == 1 )
        var_5 = [];
    else
        var_5 = _id_077B::_id_1B9C( var_5, var_6 );

    level._id_CC36[var_0][var_2][var_1] = var_5;
}

_id_10CC( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_4 = _id_0FD1( var_0, var_1, var_3 );
    var_5 = [];
    var_5["flag"] = var_2;
    level._id_CC36[var_0][var_3][var_1][var_4] = var_5;

    if ( _id_06BB::_id_8A2C() )
    {
        if ( !isdefined( level._id_5BE0 ) || !isdefined( level._id_5BE0[var_2] ) )
            _id_077B::_id_5BF1( var_2 );
    }
}

_id_10CD( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_4 = _id_0FD1( var_0, var_1, var_3 );
    var_5 = [];
    var_5["flag_clear"] = var_2;
    level._id_CC36[var_0][var_3][var_1][var_4] = var_5;

    if ( !isdefined( level._id_5BE0 ) || !isdefined( level._id_5BE0[var_2] ) )
        _id_077B::_id_5BF1( var_2 );
}

_id_10CB( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_4 = _id_0FD1( var_0, var_1, var_2 );
    level._id_CC36[var_0][var_2][var_1][var_4] = [];
    level._id_CC36[var_0][var_2][var_1][var_4]["dialog"] = var_3;
}

_id_0FD1( var_0, var_1, var_2 )
{
    var_1 = _func_0243( var_1 );
    _id_0FD2( var_0, var_1, var_2 );
    return level._id_CC36[var_0][var_2][var_1].size;
}

_id_0FD2( var_0, var_1, var_2 )
{
    var_1 = _func_0243( var_1 );

    if ( !isdefined( level._id_CC36 ) )
        level._id_CC36 = [];

    if ( !isdefined( level._id_CC36[var_0] ) )
        level._id_CC36[var_0] = [];

    if ( !isdefined( level._id_CC36[var_0][var_2] ) )
        level._id_CC36[var_0][var_2] = [];

    if ( !isdefined( level._id_CC36[var_0][var_2][var_1] ) )
        level._id_CC36[var_0][var_2][var_1] = [];
}

_id_10D3( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_6 = _id_0FD1( var_0, var_1, var_2 );
    level._id_CC36[var_0][var_2][var_1][var_6] = [];
    level._id_CC36[var_0][var_2][var_1][var_6]["sound"] = var_3;

    if ( isdefined( var_4 ) )
        level._id_CC36[var_0][var_2][var_1][var_6]["sound_stays_death"] = 1;

    if ( isdefined( var_5 ) )
        level._id_CC36[var_0][var_2][var_1][var_6]["sound_on_tag"] = var_5;
}

_id_A5D6( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_641D();
    _id_10D3( var_4._id_1887, var_0, var_4._id_180C, var_1, var_2, var_3 );
}

_id_10D2( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_4 = _id_0FD1( var_0, var_1, var_2 );
    level._id_CC36[var_0][var_2][var_1][var_4] = [];
    level._id_CC36[var_0][var_2][var_1][var_4]["playersound"] = var_3;
}

_id_64A6( var_0 )
{
    if ( !isdefined( var_0 ) )
        return "any";

    return var_0;
}

_id_10DC( var_0, var_1, var_2 )
{
    if ( !isdefined( level._id_CC26[var_0] ) )
        level._id_CC26[var_0] = [];

    level._id_CC26[var_0][var_1] = var_2;
}

_id_10D1( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_4 = _id_0FD1( var_0, var_1, var_2 );
    level._id_CC36[var_0][var_2][var_1][var_4] = [];
    level._id_CC36[var_0][var_2][var_1][var_4]["playerdialogue"] = var_3;
}

_id_10C5( var_0, var_1, var_2, var_3 )
{
    var_2 = _func_0243( var_2 );
    var_1 = _id_64A6( var_1 );
    var_4 = _id_0FD1( var_0, var_2, var_1 );
    var_5 = [];
    var_5["sound"] = var_3;
    var_5["created_by_animSound"] = 1;
    level._id_CC36[var_0][var_1][var_2][var_4] = var_5;
}

_id_10C6( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_0243( var_1 );
    var_4 = _id_64A6( var_4 );
    var_5 = _id_0FD1( var_0, var_1, var_4 );
    var_6 = [];
    var_6["attach model"] = var_2;
    var_6["selftag"] = var_3;
    level._id_CC36[var_0][var_4][var_1][var_5] = var_6;
}

_id_10C9( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_0243( var_1 );
    var_4 = _id_64A6( var_4 );
    var_5 = _id_0FD1( var_0, var_1, var_4 );
    var_6 = [];
    var_6["detach model"] = var_2;
    var_6["selftag"] = var_3;
    level._id_CC36[var_0][var_4][var_1][var_5] = var_6;
}

_id_10CA( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_4 = _id_0FD1( var_0, var_1, var_2 );
    var_5 = [];
    var_5["detach gun"] = 1;
    var_5["tag"] = "tag_weapon_right";

    if ( isdefined( var_3 ) )
        var_5["suspend"] = var_3;

    level._id_CC36[var_0][var_2][var_1][var_4] = var_5;
}

_id_10C7( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_4 = _id_0FD1( var_0, var_1, var_2 );
    var_5 = [];

    if ( isdefined( var_3 ) )
        var_5["attach gun " + var_3] = 1;
    else
        var_5["attach gun right"] = 1;

    level._id_CC36[var_0][var_2][var_1][var_4] = var_5;
}

_id_10C8( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_4 = _id_0FD1( var_0, var_1, var_3 );
    var_5 = [];
    var_5["function"] = var_2;
    level._id_CC36[var_0][var_3][var_1][var_4] = var_5;
}

_id_10D4( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _id_077B::_id_6A40( var_3 );
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_6 = _id_0FD1( var_0, var_1, var_2 );
    var_7 = [];
    var_7["effect"] = var_3;
    var_7["selftag"] = var_4;

    if ( isdefined( var_5 ) )
        var_7["moreThanThreeHack"] = var_5;

    level._id_CC36[var_0][var_2][var_1][var_6] = var_7;
}

_id_10D5( var_0, var_1, var_2, var_3, var_4 )
{
    _id_077B::_id_6A40( var_3 );
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_5 = _id_0FD1( var_0, var_1, var_2 );
    var_6 = [];
    var_6["stop_effect"] = var_3;
    var_6["selftag"] = var_4;
    level._id_CC36[var_0][var_2][var_1][var_5] = var_6;
}

_id_10CF( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_5 = _id_0FD1( var_0, var_1, var_3 );
    var_6 = [];
    var_6["mayhem_start"] = var_2;
    var_6["use_hat_model"] = var_4;
    level._id_CC36[var_0][var_3][var_1][var_5] = var_6;
}

_id_10CE( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_5 = _id_0FD1( var_0, var_1, var_3 );
    var_6 = [];
    var_6["mayhem_end"] = var_2;
    var_6["use_hat_model"] = var_4;
    level._id_CC36[var_0][var_3][var_1][var_5] = var_6;
}

_id_A5D8( var_0, var_1, var_2 )
{
    var_3 = _id_641D();
    _id_077B::_id_0FB3( var_1, var_1 );
    _id_10D6( var_3._id_1887, var_0, var_3._id_18B1, var_1, var_2 );
}

_id_A5D7( var_0, var_1, var_2 )
{
    var_3 = _id_641D();
    _id_077B::_id_0FB3( var_1, var_1 );
    _id_10D5( var_3._id_1887, var_0, var_3._id_18B1, var_1, var_2 );
}

_id_10D6( var_0, var_1, var_2, var_3, var_4 )
{
    _id_077B::_id_6A40( var_3 );
    var_1 = _func_0243( var_1 );
    var_2 = _id_64A6( var_2 );
    var_5 = _id_0FD1( var_0, var_1, var_2 );
    var_6 = [];
    var_6["swap_part_to_efx"] = var_3;
    var_6["selftag"] = var_4;
    level._id_CC36[var_0][var_2][var_1][var_5] = var_6;
}

_id_A5D9( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _id_641D();

    if ( var_0 != "start" && !_func_0011( var_6 _id_077B::_id_68A0( var_6._id_180C ), var_0 ) )
        return;

    _id_077B::_id_0FB3( var_3, var_3 );

    if ( isdefined( var_4 ) )
        _id_077B::_id_0FB3( var_4, var_4 );

    _id_10D7( var_6._id_1887, var_0, var_1, var_6._id_180C, var_2, var_3, var_4, var_5 );
}

_id_A5D5( var_0, var_1, var_2 )
{
    var_3 = _id_641D();

    if ( var_0 != "start" && !_func_0011( var_3 _id_077B::_id_68A0( var_3._id_180C ), var_0 ) )
        return;

    _id_077B::_id_0FB3( var_2, var_2 );
    _id_10D4( var_3._id_1887, var_0, var_3._id_180C, var_2, var_1, 1 );
}

_id_641D()
{
    var_0 = level._id_412D;
    return var_0;
}

_id_10D7( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _id_077B::_id_6A40( var_5 );
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_8 = _id_0FD1( var_0, var_1, var_3 );
    var_9 = [];
    var_9["trace_part_for_efx"] = var_5;
    var_9["trace_part_for_efx_water"] = var_6;
    var_9["trace_part_for_efx_cancel"] = var_2;
    var_9["trace_part_for_efx_delete_depth"] = var_7;
    var_9["selftag"] = var_4;
    level._id_CC36[var_0][var_3][var_1][var_8] = var_9;

    if ( isdefined( var_2 ) )
    {
        var_9 = [];
        var_9["trace_part_for_efx_canceling"] = var_2;
        var_9["selftag"] = var_4;
        var_8 = _id_0FD1( var_0, var_2, var_3 );
        level._id_CC36[var_0][var_3][var_2][var_8] = var_9;
    }
}

_id_10D0( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0243( var_1 );
    var_3 = _id_64A6( var_3 );
    var_4 = _id_0FD1( var_0, var_1, var_3 );
    var_5 = [];
    var_5["notify"] = var_2;
    level._id_CC36[var_0][var_3][var_1][var_4] = var_5;
}

_id_D46E()
{
    self _meth_841D( level._id_CC27[self._id_1887] );
}

_id_8114()
{
    if ( !isdefined( level._id_CC36 ) )
        level._id_CC36 = [];

    if ( !isdefined( level._id_CC2F ) )
        level._id_CC2F = [];

    if ( !isdefined( level._id_CC32 ) )
        level._id_CC32 = [];

    if ( !isdefined( level._id_CC33 ) )
        level._id_CC33 = [];

    if ( !isdefined( level._id_CC26 ) )
        level._id_CC26 = [];

    if ( !isdefined( level._id_CC39 ) )
        level._id_CC39 = [];

    if ( !isdefined( level._id_CC38 ) )
        level._id_CC38 = [];

    if ( !isdefined( level._id_CC3A ) )
        level._id_CC3A = [];

    if ( !isdefined( level._id_CC24 ) )
        level._id_CC24[0][0] = 0;

    if ( !isdefined( level._id_CC25 ) )
        level._id_CC25 = [];

    if ( !isdefined( level._id_CC38 ) )
        level._id_CC38 = [];

    if ( !isdefined( level._id_CC37 ) )
        level._id_CC37 = [];

    if ( !isdefined( level._id_CC31 ) )
        level._id_CC31 = [];

    if ( !isdefined( level._id_0C45 ) )
        level._id_0C45 = [];

    if ( !isdefined( level._id_CC28 ) )
        level._id_CC28 = [];

    thread _id_BB55();
    thread _id_BB57();
    _id_077B::_id_3F13( "moreThanThreeHack", 3 );
    _id_077B::_id_3F13( "trace_part_for_efx", 12 );
    _id_7ED4();
}

_id_BB55()
{
    waittillframeend;

    if ( !isdefined( level._id_CC35 ) )
        return;

    var_0 = getarraykeys( level._id_CC35 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( isalive( level._id_CC35[var_0[var_1]] ) )
        {
            for ( var_2 = 0; var_2 < level._id_CC35[var_0[var_1]].size; var_2++ )
                _func_01A8( level._id_CC35[var_0[var_1]][var_2] );

            continue;
        }

        _func_01A8( level._id_CC35[var_0[var_1]] );
    }
}

_id_BB57()
{
    waittillframeend;

    if ( !isdefined( level._id_CC3D ) )
        return;

    var_0 = getarraykeys( level._id_CC3D );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = [];

        if ( isdefined( level._id_CC3D[var_0[var_1]][1] ) )
            var_2 = level._id_CC3D[var_0[var_1]][1];

        _id_06BB::_id_99BF( level._id_CC3D[var_0[var_1]][0], var_2, 1, 1 );
    }
}

_id_7ED4()
{
    level._id_18BB = [];
    level._id_18B4 = [];
    var_0 = getarraykeys( level._id_CC36 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        _id_7FF0( var_0[var_1] );

    var_0 = getarraykeys( level._id_CC26 );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        _id_7ED5( var_0[var_1] );
}

_id_7ED5( var_0 )
{
    var_1 = getarraykeys( level._id_CC26[var_0] );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];
        var_4 = level._id_CC26[var_0][var_3];
        level._id_18B4[var_0][var_3]["#" + var_3]["soundalias"] = var_4;
        level._id_18B4[var_0][var_3]["#" + var_3]["created_by_animSound"] = 1;
    }
}

_id_7FF0( var_0 )
{
    foreach ( var_10, var_2 in level._id_CC36[var_0] )
    {
        foreach ( var_9, var_4 in var_2 )
        {
            foreach ( var_6 in var_4 )
            {
                var_7 = var_6["sound"];

                if ( !isdefined( var_7 ) )
                    continue;

                level._id_18B4[var_0][var_10][var_9]["soundalias"] = var_7;

                if ( isdefined( var_6["created_by_animSound"] ) )
                    level._id_18B4[var_0][var_10][var_9]["created_by_animSound"] = 1;
            }
        }
    }
}

_id_5316( var_0, var_1 )
{
    self waittill( var_0 );

    foreach ( var_3 in var_1 )
    {
        var_4 = var_3["guy"];

        if ( !isdefined( var_4 ) )
            continue;

        var_4._id_0B0E--;
        var_4._id_0C1E = gettime();
    }
}

_id_178A( var_0, var_1 )
{
    self endon( var_1 );
    var_0 waittill( "death" );

    if ( isdefined( var_0._id_17BF ) && var_0._id_17BF )
        return;

    self notify( var_1 );
}

_id_1795( var_0, var_1, var_2 )
{
    self endon( var_1 );
    var_3 = _func_0079( var_2 );
    wait( var_3 );
    self notify( var_1 );
}

_id_178B( var_0, var_1 )
{
    self endon( var_1 );
    var_0 waittill( "single dialogue" );
    self notify( var_1 );
}

_id_1778( var_0, var_1, var_2, var_3 )
{
    self endon( var_1 );
    var_0 endon( "death" );
    var_2 = var_2 - var_3;

    if ( var_3 > 0 && var_2 > 0 )
    {
        var_0 _id_077B::_id_108E2( "single anim", "end", var_2 );
        var_0 _meth_83EB();
    }
    else
        var_0 waittillmatch( "single anim", "end" );

    self notify( var_1 );
}

_id_1845( var_0, var_1 )
{
    var_2 = level._id_CC24[var_0][var_1].size;
    var_3 = _func_01B8( var_2 );

    if ( isdefined( level._id_CC24[var_0][var_1 + "weight"] ) )
        var_3 = _id_6841( var_0, var_1, var_2 );

    return var_3;
}

_id_6841( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( var_2 > 1 )
    {
        var_4 = 0;
        var_5 = 0;

        for ( var_6 = 0; var_6 < var_2; var_6++ )
        {
            if ( isdefined( level._id_CC24[var_0][var_1 + "weight"] ) )
            {
                if ( isdefined( level._id_CC24[var_0][var_1 + "weight"][var_6] ) )
                {
                    var_4++;
                    var_5 = var_5 + level._id_CC24[var_0][var_1 + "weight"][var_6];
                }
            }
        }

        if ( var_4 == var_2 )
        {
            var_7 = _func_01B6( var_5 );
            var_5 = 0;

            for ( var_6 = 0; var_6 < var_2; var_6++ )
            {
                var_5 = var_5 + level._id_CC24[var_0][var_1 + "weight"][var_6];

                if ( var_7 < var_5 )
                {
                    var_3 = var_6;
                    break;
                }
            }
        }
    }

    return var_3;
}

#using_animtree("generic_human");

_id_B1CE( var_0, var_1 )
{
    var_0 _meth_82E2( %addtive_head_anims, 1.0, 0.2 );
    var_0 _meth_82E2( var_1, 1.0, 0.2 );
    wait( _func_0079( var_1 ) );
    var_0 _meth_8076( %addtive_head_anims, 0.2 );
    var_0 _meth_8076( var_1, 0.2 );
}

_id_6337( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;

    if ( isdefined( var_0 ) )
    {
        var_1 = self gettagorigin( var_0 );
        var_2 = self gettagangles( var_0 );
    }
    else
    {
        var_1 = self._id_02EA;
        var_2 = self._id_0054;

        if ( !isdefined( var_2 ) )
            var_2 = ( 0, 0, 0 );
    }

    var_3 = [];
    var_3["angles"] = var_2;
    var_3["origin"] = var_1;
    return var_3;
}

_id_177B( var_0, var_1 )
{
    var_2 = [];
    var_2["guy"] = self;
    var_2["entity"] = self;
    return var_2;
}

_id_177A( var_0, var_1 )
{
    var_2 = [];
    var_2["guy"] = self;
    var_2["entity"] = var_0;
    var_2["tag"] = var_1;
    return var_2;
}

_id_1CC1( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = self._id_1887;

    var_2 = 0;

    if ( isdefined( level._id_CC24[var_1] ) )
    {
        var_2 = 1;

        if ( isdefined( level._id_CC24[var_1][var_0] ) )
            return;
    }

    var_3 = 0;

    if ( isdefined( level._id_CC2F[var_1] ) )
    {
        var_3 = 1;

        if ( isdefined( level._id_CC2F[var_1][var_0] ) )
            return;
    }

    var_4 = 0;

    if ( isdefined( level._id_CC39[var_1] ) )
    {
        var_4 = 1;

        if ( isdefined( level._id_CC39[var_1][var_0] ) )
            return;
    }

    var_5 = 0;

    if ( isdefined( level._id_CC28[var_1] ) )
    {
        var_5 = 1;

        if ( isdefined( level._id_CC28[var_1][var_0] ) )
            return;
    }

    if ( var_2 || var_4 || var_3 || var_5 )
    {
        if ( var_2 )
        {
            var_6 = getarraykeys( level._id_CC24[var_1] );

            foreach ( var_8 in var_6 )
            {

            }
        }

        if ( var_4 )
        {
            var_6 = getarraykeys( level._id_CC39[var_1] );

            foreach ( var_8 in var_6 )
            {

            }
        }

        if ( var_3 )
        {
            var_6 = getarraykeys( level._id_CC2F[var_1] );

            foreach ( var_8 in var_6 )
            {

            }
        }

        if ( var_5 )
        {
            var_6 = getarraykeys( level._id_CC28[var_1] );

            foreach ( var_8 in var_6 )
            {

            }
        }

        return;
    }

    var_16 = getarraykeys( level._id_CC24 );
    var_16 = _id_077B::_id_1B72( var_16, getarraykeys( level._id_CC39 ) );

    foreach ( var_18 in var_16 )
    {

    }
}

_id_1818( var_0, var_1 )
{

}

_id_1817( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
        var_3 thread _id_1818( self, var_1 );
}

_id_17AD( var_0, var_1 )
{
    if ( isdefined( level._id_CC31[var_0] ) && isdefined( level._id_CC31[var_0][var_1] ) )
        return level._id_CC31[var_0][var_1];
    else
        return 0.5;
}

#using_animtree("turret");

guy_pre_anim_func()
{
    if ( isdefined( self._id_00E1 ) && self._id_00E1 == "misc_turret" )
    {
        self _meth_8845( 1 );
        self _meth_841D( #animtree );
        self.revert_to_code_animtree_when_done = 1;
    }
}

guy_post_anim_func()
{
    if ( isdefined( self._id_00E1 ) && self._id_00E1 == "misc_turret" )
    {
        self _meth_8845( 0 );

        if ( istrue( self.revert_to_code_animtree_when_done ) )
        {
            self _meth_83F8();
            self.revert_to_code_animtree_when_done = undefined;
        }
    }
}

guy_post_anim_func_watcher( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "dummy_endon_for_anim_loop";

    if ( !isdefined( var_0 ) )
        var_0 = "dummy_notify_for_anim_single";

    self notify( "kill_anim_end_handler" );
    self endon( "kill_anim_end_handler" );
    self endon( "entitydeleted" );
    var_2 = undefined;

    for (;;)
    {
        var_3 = _id_077B::_id_108A2( var_0, var_1, "stopanimscripted" );

        if ( !isdefined( var_3 ) )
        {
            if ( !isdefined( self ) )
                return;
            else
                break;
        }

        var_2 = var_3["message"];
        var_4 = undefined;

        if ( isdefined( var_3[0] ) )
        {
            if ( isalive( var_3[0] ) )
                var_4 = var_3[0][0];
            else
                var_4 = var_3[0];
        }

        if ( var_2 != var_0 || isdefined( var_4 ) && var_4 == "end" )
            break;
    }

    guy_post_anim_func();

    if ( isdefined( anim._id_2F2C["EntityHandleAnimScriptedEnd"] ) && isdefined( var_2 ) && var_2 == "stopanimscripted" )
        [[ anim._id_2F2C["EntityHandleAnimScriptedEnd"] ]]( self );
}
