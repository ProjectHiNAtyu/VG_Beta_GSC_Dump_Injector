// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _func_01D0( "sm_sunsamplesizenear", 0.33 );
    _func_01D0( "#x312bde0b04f4a20b2", 2 );
    _func_01D0( "sm_sundistantshadows", 0 );
    _func_01D0( "#x3bc18709a4d8978a1", 500 );
    _func_01D0( "#x3f4dc153e09c98ef7", 1 );
    _func_01D0( "#x3ba1e000006a1372a", 8 );
    waitframe();
    _func_01D0( "#x352b7fb15df055cdf", 2 );
    _func_01D0( "r_screenspaceshadowsspotscenetraceauto", "0" );
    _id_077B::_id_5BF1( "flare_on" );
    _id_077B::_id_5BF1( "flare_flicker" );
    thread flare_lgt_pos_lerp();
    _id_077B::_id_5BF1( "flare_on_op" );
    thread flare_lgt_pos_lerp_op();
    thread tile_lighting();
}

operator_close()
{
    _func_01D0( "#x36af6193173cfec36", 0 );
    _func_01D0( "#x31435471c219db8c7", 16 );
}

operator_far()
{
    _func_01D0( "#x36af6193173cfec36", 0 );
    _func_01D0( "#x31435471c219db8c7", 16 );
}

weapons_close()
{
    iprintlnbold( "weapons_close" );
    _func_01D0( "#x36af6193173cfec36", 0 );
    _func_01D0( "#x31435471c219db8c7", 16 );
    _func_01D0( "#x3ba1e000006a1372a", 12 );
}

weapons_far()
{
    _func_01D0( "#x36af6193173cfec36", 0 );
    _func_01D0( "#x31435471c219db8c7", 16 );
}

lobby_close()
{
    _func_01D0( "#x33d02587c91388bcc", "128 384 640 4096" );
    _func_01D0( "#x36af6193173cfec36", 0 );
    thread lerp_spot_intensity( "lobbyWalk_fire_01", 0.1, 0.1 );
    thread lerp_spot_intensity( "lobbyWalk_fire_02", 0.1, 0.1 );
    thread lerp_spot_intensity( "lobbyWalk_fill_01", 0.1, 0.03 );
}

lobby_far()
{
    _func_01D0( "#x33d02587c91388bcc", "1024 1024 1024 4096" );
    _func_01D0( "#x36af6193173cfec36", 0 );
    _func_01D0( "#x384c1a54e64859aaa", 16 );
}

flare_lgt_pos_lerp()
{
    wait 5;
    var_0 = getent( "flare_lgt", "targetname" );
    var_0 _meth_8337( 0 );
    var_0 _meth_8333( ( 1, 0.95, 0.9 ) );
    var_1 = var_0._id_02EA;
    var_2 = getent( "lobby_charslot_01", "targetname" );
    var_3 = _id_077B::_id_6D7A( "pos_1", "targetname" );
    var_4 = _id_077B::_id_6D7A( "pos_2", "targetname" );
    var_5 = _id_077B::_id_6D7A( "pos_3", "targetname" );
    var_6 = _id_077B::_id_6D7A( "pos_4", "targetname" );
    var_7 = _id_077B::_id_6D7A( "pos_5", "targetname" );
    var_8 = _id_077B::_id_6D7A( "pos_6", "targetname" );
    var_9 = _id_077B::_id_6D7A( "pos_7", "targetname" );
    var_10 = _id_077B::_id_6D7A( "pos_8", "targetname" );
    var_11 = _id_077B::_id_6D7A( "pos_9", "targetname" );
    var_12 = _id_077B::_id_6D7A( "pos_10", "targetname" );
    var_13 = _id_077B::_id_6D7A( "pos_11", "targetname" );
    var_14 = _id_077B::_id_6D7A( "pos_12", "targetname" );

    if ( _id_077B::_id_5BE0( "flare_on" ) == 0 )
    {
        _id_077B::_id_5BFB( "flare_on" );
        thread lock_to_character( var_0, var_2 );

        while ( _id_077B::_id_5BE0( "flare_on" ) )
        {
            thread spot_lerp_origin( var_0, 3, var_3._id_02EA );
            wait 4;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 9, 13, 3, 6 );
            thread spot_lerp_origin( var_0, 5, var_4._id_02EA );
            wait 6;
            thread spot_lerp_origin( var_0, 5, var_5._id_02EA );
            wait 5;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 10;
            thread spot_lerp_origin( var_0, 1, var_6._id_02EA );
            wait 2;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 7, 16, 3, 5 );
            thread spot_lerp_origin( var_0, 3, var_7._id_02EA );
            wait 4;
            thread spot_lerp_origin( var_0, 3, var_8._id_02EA );
            wait 4;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 8;
            thread spot_lerp_origin( var_0, 1, var_9._id_02EA );
            wait 2;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 8, 18, 2, 6 );
            thread spot_lerp_origin( var_0, 3, var_10._id_02EA );
            wait 4;
            thread spot_lerp_origin( var_0, 3, var_11._id_02EA );
            wait 4;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 9;
            thread spot_lerp_origin( var_0, 1, var_12._id_02EA );
            wait 2;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 8, 18, 2, 6 );
            thread spot_lerp_origin( var_0, 4, var_13._id_02EA );
            wait 5;
            thread spot_lerp_origin( var_0, 4, var_14._id_02EA );
            wait 5;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 8;
        }
    }
}

flare_lgt_pos_lerp_op()
{
    wait 5;
    var_0 = getent( "flare_lgt_op", "targetname" );
    var_0 _meth_8337( 15 );
    var_0 _meth_8333( ( 1, 0.95, 0.9 ) );
    var_1 = var_0._id_02EA;
    var_2 = getent( "charroom_char_west_b", "targetname" );
    var_3 = _id_077B::_id_6D7A( "pos_13", "targetname" );
    var_4 = _id_077B::_id_6D7A( "pos_14", "targetname" );
    var_5 = _id_077B::_id_6D7A( "pos_15", "targetname" );
    var_6 = _id_077B::_id_6D7A( "pos_16", "targetname" );
    var_7 = _id_077B::_id_6D7A( "pos_17", "targetname" );
    var_8 = _id_077B::_id_6D7A( "pos_18", "targetname" );
    var_9 = _id_077B::_id_6D7A( "pos_19", "targetname" );
    var_10 = _id_077B::_id_6D7A( "pos_20", "targetname" );
    var_11 = _id_077B::_id_6D7A( "pos_21", "targetname" );

    if ( _id_077B::_id_5BE0( "flare_on_op" ) == 0 )
    {
        _id_077B::_id_5BFB( "flare_on_op" );
        thread lock_to_character_op( var_0, var_2 );

        while ( _id_077B::_id_5BE0( "flare_on_op" ) )
        {
            thread spot_lerp_origin( var_0, 3, var_3._id_02EA );
            wait 4;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 9, 17, 3, 6 );
            thread spot_lerp_origin( var_0, 3, var_4._id_02EA );
            wait 4;
            thread spot_lerp_origin( var_0, 4, var_5._id_02EA );
            wait 5;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 8;
            thread spot_lerp_origin( var_0, 3, var_6._id_02EA );
            wait 4;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 9, 14, 3, 6 );
            thread spot_lerp_origin( var_0, 5, var_7._id_02EA );
            wait 6;
            thread spot_lerp_origin( var_0, 5, var_8._id_02EA );
            wait 5;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 6;
            thread spot_lerp_origin( var_0, 3, var_9._id_02EA );
            wait 4;
            _id_077B::_id_5BFB( "flare_flicker" );
            thread flare_flicker( var_0, 9, 15, 3, 6 );
            thread spot_lerp_origin( var_0, 3, var_10._id_02EA );
            wait 2;
            thread spot_lerp_origin( var_0, 3, var_11._id_02EA );
            wait 2;
            _id_077B::_id_5BE4( "flare_flicker" );
            wait 7;
        }

        thread spot_lerp_origin( var_0, 4, var_1._id_02EA );
    }
}

flare_flicker( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_2;

    for ( var_6 = 0; _id_077B::_id_5BE0( "flare_flicker" ); var_5 = var_6 )
    {
        var_6 = _func_01B7( var_1, var_2 );
        var_7 = _func_01B7( var_3, var_4 );
        var_7 = var_7 * 0.75;

        for ( var_8 = 0; var_8 < var_7; var_8++ )
        {
            var_9 = var_6 * ( var_8 / var_7 ) + var_5 * ( ( var_7 - var_8 ) / var_7 );
            var_0 _meth_8337( var_9 );
            wait 0.05;
        }
    }

    thread flare_lerp_down( var_0, var_1, var_2, var_6, 4.0 );
}

flare_lerp_down( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_3;
    var_6 = _func_01B7( var_1, var_2 );
    var_7 = gettime();
    var_8 = gettime() + var_4 * 1000.0;
    var_9 = var_4 / 0.05;

    for ( var_10 = 0; var_10 < var_9; var_10++ )
    {
        var_11 = gettime() - var_7;
        var_12 = _func_0432( 0, var_4 * 1000.0, 1.0, 0.0, var_11 );
        var_13 = var_6 * ( var_10 / var_9 ) + var_5 * ( ( var_9 - var_10 ) / var_9 );
        var_13 = var_13 * var_12;
        var_0 _meth_8337( var_13 );
        wait 0.05;
        var_5 = var_6;
    }
}

_id_5B12( var_0, var_1, var_2, var_3, var_4 )
{
    for ( var_5 = var_2; _id_077B::_id_5BE0( "fire_flicker" ); var_5 = var_6 )
    {
        var_6 = _func_01B7( var_1, var_2 );
        var_7 = _func_01B7( var_3, var_4 );
        var_7 = var_7 * 0.75;

        for ( var_8 = 0; var_8 < var_7; var_8++ )
        {
            var_9 = var_6 * ( var_8 / var_7 ) + var_5 * ( ( var_7 - var_8 ) / var_7 );
            var_0 _meth_8337( var_9 );
            wait 0.05;
        }
    }
}

spot_lerp_origin( var_0, var_1, var_2 )
{
    var_0 notify( "stop lerp" );
    var_0 endon( "stop lerp" );
    var_0 endon( "death" );
    var_3 = var_0._id_02EA;
    var_4 = 0;

    while ( var_4 < var_1 )
    {
        var_0._id_02EA = _func_0259( var_3, var_2, var_4 / var_1 );
        var_4 = var_4 + 0.05;
        wait 0.05;
    }

    var_0._id_02EA = var_2;
}

lerp_spot_intensity( var_0, var_1, var_2 )
{
    var_3 = getent( var_0, "targetname" );

    if ( !isdefined( var_3 ) )
        return;

    var_3 endon( "death" );
    var_4 = var_3 _meth_8146();
    var_3.endintensity = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + ( var_2 - var_4 ) * ( var_5 / var_1 );
        var_5 = var_5 + 0.05;
        var_3 _meth_8337( var_6 );
        wait 0.05;
    }

    var_3 _meth_8337( var_2 );
}

lock_to_character( var_0, var_1 )
{
    for (;;)
    {
        var_2 = var_1._id_02EA - var_0._id_02EA;
        var_3 = _func_025B( var_2 );
        var_0._id_0054 = var_3;
        waitframe();
    }
}

lock_to_character_op( var_0, var_1 )
{
    for (;;)
    {
        var_2 = var_1._id_02EA - var_0._id_02EA;
        var_3 = _func_025B( var_2 );
        var_0._id_0054 = var_3;
        waitframe();
    }
}

tile_lighting()
{
    wait 0.5;
    var_0 = getentarray( "envLights_tile_01", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2._id_AC74 = var_2 _meth_8146();

    for (;;)
    {
        if ( _id_077B::_id_5BE0( "floor1" ) )
        {
            if ( isdefined( var_0 ) )
            {
                foreach ( var_2 in var_0 )
                    var_2 _meth_8337( 0 );
            }
        }

        if ( !_id_077B::_id_5BE0( "floor1" ) )
        {
            if ( isdefined( var_0 ) )
            {
                foreach ( var_2 in var_0 )
                    var_2 _meth_8337( var_2._id_AC74 );
            }
        }

        wait 0.05;
    }
}
