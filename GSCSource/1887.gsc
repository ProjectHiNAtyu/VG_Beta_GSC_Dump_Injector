// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

#using_animtree("script_model");

_id_1804( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_020F();
    var_5._id_0186 = var_0;
    var_5._id_1887 = var_1;
    var_5._id_83FF = 0;
    var_5._id_8403 = 0;
    var_5._id_5325 = 0;
    var_5._id_5E81 = 0;

    if ( isdefined( var_2 ) && var_2 )
    {
        var_5._id_864B = var_2;

        if ( isdefined( var_3 ) )
            var_5._id_B597 = var_3;
        else
            var_5._id_B597 = 1;

        if ( isdefined( var_4 ) )
            var_5._id_4A51 = var_4;
        else
            var_5._id_4A51 = 1;
    }
    else
    {
        var_5._id_864B = 0;
        var_5._id_0186._id_1887 = var_5._id_1887;
        var_5._id_0186 _meth_841D( #animtree );
    }

    return var_5;
}

_id_1806( var_0, var_1, var_2 )
{
    self._id_83FF = var_0;

    if ( isdefined( var_1 ) )
    {
        self._id_83F9 = var_1;

        if ( isdefined( var_2 ) )
            self._id_83FB = var_2;
        else
            self._id_83FB = 0;
    }
}

_id_1803( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    foreach ( var_9 in var_0 )
    {
        var_9._id_8403 = 0;
        var_9._id_5325 = 0;
    }

    var_11 = _id_0B07( var_0, var_1, 0, var_4, var_2, var_3, var_5, var_6, var_7 );

    if ( isdefined( var_11 ) && var_11 )
        return 1;
    else
        return 0;
}

_id_1805( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    foreach ( var_9 in var_0 )
    {
        var_9._id_8403 = 0;
        var_9._id_5325 = 0;
    }

    _id_0B07( var_0, var_1, 1, var_4, var_2, var_3, var_5, var_6, var_7 );
    var_11 = 1;

    foreach ( var_9 in var_0 )
    {
        if ( !var_9._id_5325 )
        {
            var_11 = 0;
            break;
        }
    }

    return var_11;
}

_id_1808( var_0 )
{
    if ( isdefined( var_0 ) && var_0 )
        self notify( "anim_scene_force_end" );
    else
        self notify( "stop_scene" );
}

_id_1809( var_0 )
{
    var_0._id_5325 = 1;
}

_id_0B07( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    self endon( "anim_scene_interrupted" );

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    if ( !isdefined( var_5 ) )
        var_5 = 1;

    thread _id_0B05( var_0 );
    thread _id_0B06( var_0 );
    var_12 = 0.0;
    thread _id_0B0D( var_0, var_3, var_5 );

    if ( var_4 )
    {
        if ( !isdefined( var_6 ) )
            var_6 = 0.4;

        if ( !isdefined( var_7 ) )
            var_7 = 0.8;

        _id_0B08( var_0, var_1, var_3, var_6, var_8 );
        _id_0B0A( var_0, var_6, var_7 );
    }

    _id_0B0C( var_0, var_1, var_2, var_3 );

    if ( !var_2 )
    {
        foreach ( var_10 in var_0 )
        {
            var_10._id_187A = _id_0B0B( var_10, var_1 );

            if ( var_10._id_187A > var_12 )
                var_12 = var_10._id_187A;
        }

        foreach ( var_10 in var_0 )
        {
            if ( var_10._id_187A < var_12 )
                thread _id_0B04( var_10 );
        }
    }

    if ( var_2 )
        self waittill( "never" );
    else
        wait( var_12 );

    waittillframeend;
    self notify( "anim_scene_success" );

    if ( var_5 )
        _id_0B09( var_0 );

    return 1;
}

_id_0B08( var_0, var_1, var_2, var_3, var_4 )
{
    foreach ( var_6 in var_0 )
    {
        if ( var_6._id_864B )
        {
            if ( istrue( var_4 ) )
            {
                var_7 = "viewhands_base_iw8";
                var_6._id_B591 = _func_0205( "script_model", var_6._id_0186._id_02EA );
                var_6._id_B591 setmode( var_7 );
                var_6._id_B591._id_1887 = var_6._id_1887;
                var_6._id_B591 _meth_841D( #animtree );
                var_6._id_B591 hide();
            }
            else
            {
                var_6._id_B591 = _func_0205( "script_arms", var_6._id_0186._id_02EA, 0, 0, var_6._id_0186 );
                var_6._id_B591._id_1887 = var_6._id_1887;
                var_6._id_B591 _meth_841D( #animtree );
                var_6._id_B591 hide();
                var_6._id_B591._id_0186 = var_6._id_0186;
            }

            _id_069D::_id_179A( var_6._id_B591, var_1, var_2 );
            var_6._id_0186 _meth_8382( _id_62DB( var_6 ) );
            var_6._id_0186 playerlinktoabsolute( var_6._id_B591, "tag_player", var_3 );

            if ( var_6._id_4A51 )
                var_6._id_0186 _id_06BB::_id_1565( 0 );
        }
    }
}

_id_62DB( var_0 )
{
    if ( isdefined( var_0._id_0186._id_1807 ) )
        return var_0._id_0186._id_1807;

    return "stand";
}

_id_0B0A( var_0, var_1, var_2 )
{
    var_3 = var_2 - var_1;

    if ( var_3 > 0.0 )
    {
        wait( var_1 );

        foreach ( var_5 in var_0 )
        {
            if ( var_5._id_8403 )
                continue;

            if ( var_5._id_864B )
                var_5._id_0186 playerlinktoblend( var_5._id_B591, "tag_player", 1, 0, 0, 0, 0, 0, 1, 1 );
        }

        wait( var_3 );

        foreach ( var_5 in var_0 )
        {
            if ( var_5._id_8403 )
                continue;

            if ( var_5._id_864B )
            {

            }
        }
    }
    else
    {
        wait( var_1 );

        foreach ( var_5 in var_0 )
        {
            if ( var_5._id_8403 )
                continue;

            if ( var_5._id_864B )
                var_5._id_0186 playerlinktoblend( var_5._id_B591, "tag_player", 1, 0, 0, 0, 0, 0, 1, 1 );
        }
    }
}

_id_0B0B( var_0, var_1 )
{
    var_2 = 0.0;

    if ( var_0._id_864B )
    {
        var_3 = _func_0079( level._id_CC24[var_0._id_B591._id_1887][var_1] );

        if ( var_3 > var_2 )
            var_2 = var_3;
    }
    else
    {
        var_3 = _func_0079( level._id_CC24[var_0._id_1887][var_1] );

        if ( var_3 > var_2 )
            var_2 = var_3;
    }

    return var_2;
}

_id_0B0C( var_0, var_1, var_2, var_3 )
{
    foreach ( var_5 in var_0 )
    {
        if ( var_5._id_8403 )
            continue;

        if ( var_5._id_864B )
        {
            if ( var_2 )
                var_5._id_0186 _meth_84FE( "scripted_scene", level._id_CC2E[var_5._id_1887][var_1][0] );
            else
                var_5._id_0186 _meth_84FE( "scripted_scene", level._id_CC2E[var_5._id_1887][var_1] );

            if ( isdefined( level._id_CC3C[var_5._id_1887] ) && isdefined( level._id_CC3C[var_5._id_1887][var_1] ) && !istrue( var_5._id_0186._id_2581 ) )
            {
                if ( var_2 )
                    var_5._id_0186 _meth_861D( level._id_CC3C[var_5._id_1887][var_1][0] );
                else
                    var_5._id_0186 _meth_861D( level._id_CC3C[var_5._id_1887][var_1] );
            }

            if ( var_5._id_B597 )
                var_5._id_B591 showpart( var_5._id_0186 );

            if ( var_2 )
                thread _id_069D::_id_17CB( var_5._id_B591, var_1, "stop_scene", var_3 );
            else
                thread _id_069D::_id_181D( var_5._id_B591, var_1, var_3 );

            continue;
        }

        if ( var_2 )
        {
            thread _id_069D::_id_17CB( var_5._id_0186, var_1, "stop_scene", var_3 );
            continue;
        }

        thread _id_069D::_id_181D( var_5._id_0186, var_1, var_3 );
    }
}

_id_0B09( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( var_2._id_8403 )
            continue;

        if ( var_2._id_864B )
        {
            if ( var_2._id_4A51 )
                var_2._id_0186 _id_06BB::_id_1565( 1 );

            var_2._id_0186 _meth_8415();
            var_2._id_0186 _meth_835E( var_2._id_0186._id_02EA + ( 0, 0, 1 ) );
            var_2._id_B591 _meth_809A();
            var_2._id_B591 = undefined;
        }
    }
}

_id_0B05( var_0 )
{
    self endon( "anim_scene_success" );
    self endon( "anim_scene_interrupted" );
    self waittill( "stop_scene" );

    foreach ( var_2 in var_0 )
        var_2._id_5325 = 1;
}

_id_0B06( var_0 )
{
    self endon( "anim_scene_success" );
    self endon( "anim_scene_interrupted" );
    self waittill( "anim_scene_force_end" );

    foreach ( var_2 in var_0 )
        var_2._id_5E81 = 1;
}

_id_0B04( var_0 )
{
    self endon( "anim_scene_success" );
    self endon( "anim_scene_interrupted" );
    wait( var_0._id_187A );

    if ( !var_0._id_8403 )
        var_0._id_5325 = 1;
}

_id_0B0D( var_0, var_1, var_2 )
{
    self endon( "anim_scene_success" );
    self endon( "anim_scene_interrupted" );

    for (;;)
    {
        var_3 = 0;

        for (;;)
        {
            wait 0.05;

            foreach ( var_5 in var_0 )
            {
                if ( var_5._id_5325 || var_5._id_5E81 || !isdefined( var_5._id_0186 ) || var_5._id_864B && !isai( var_5._id_0186 ) || var_5._id_864B && isdefined( var_5._id_0186._id_59C0 ) )
                {
                    if ( !var_5._id_8403 )
                    {
                        var_3 = 1;
                        break;
                    }
                }
            }

            if ( var_3 )
                break;
        }

        var_7 = 1;

        foreach ( var_5 in var_0 )
        {
            var_9 = 0;

            if ( !isdefined( var_5._id_0186 ) || var_5._id_864B && !isai( var_5._id_0186 ) || var_5._id_864B && isdefined( var_5._id_0186._id_59C0 ) )
                var_9 = 1;

            if ( !var_9 && !var_5._id_5325 && !var_5._id_5E81 && !var_5._id_83FF )
            {
                var_7 = 0;
                continue;
            }

            var_5._id_8403 = 1;

            if ( var_9 && !var_5._id_864B )
                continue;

            if ( var_5._id_864B )
            {
                if ( ( var_2 || var_5._id_5E81 ) && !var_9 )
                {
                    if ( var_5._id_4A51 )
                    {
                        if ( !var_5._id_0186 _id_06B0::_id_85F2( "weapon" ) )
                            var_5._id_0186 _id_06BB::_id_1565( 1 );
                    }

                    var_5._id_0186 _meth_8653();
                    var_5._id_0186 _meth_8415();
                    var_5._id_0186 _meth_835E( var_5._id_0186._id_02EA + ( 0, 0, 1 ) );
                }

                if ( var_2 || var_5._id_5E81 || var_9 )
                {
                    if ( _func_02DB( var_5._id_B591 ) )
                    {
                        var_5._id_B591 _meth_809A();
                        var_5._id_B591 = undefined;
                    }
                }

                continue;
            }

            if ( isdefined( var_5._id_83F9 ) )
            {
                if ( var_5._id_83FB )
                    thread _id_069D::_id_179A( var_5._id_0186, var_5._id_83F9, var_1 );
                else
                {
                    var_5._id_0186 _meth_83EB();
                    thread _id_069D::_id_181D( var_5._id_0186, var_5._id_83F9, var_1 );
                }

                continue;
            }

            var_5._id_0186 _meth_83EB();
        }

        if ( var_7 )
        {
            self notify( "anim_scene_interrupted" );
            return;
        }
    }
}
