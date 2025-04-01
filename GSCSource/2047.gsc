// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    level._id_A29A = 1;
    level.top_players = [];
    level.top_players["axis"] = [];
    level.top_players["allies"] = [];
    level._id_10E56 = _id_8100();

    if ( level._id_10E56.size == 0 )
        level._id_A29A = 0;

    if ( !getdvarint( "scr_winner_circle_enabled", 1 ) )
        level._id_A29A = 0;

    if ( getdvarint( "#x398d84acbf2bee889", 0 ) )
        level._id_A29A = 0;

    scripts\mp\team_mvp_characters_util::_id_C1BB();
    level._id_1FFA = getdvarint( "scr_winner_circle_freeze_frame", 0 ) != 0;
}

preload_weapon_internal( var_0, var_1, var_2 )
{
    var_3 = var_0[var_1];

    if ( var_1 == 7 && var_0[8] != "" )
        var_4 = _func_021A( var_0[8], "," );
    else
        var_4 = [];

    if ( var_3 != "none" )
    {
        var_5 = scripts\cp_mp\hostmigration::_id_2CEB( var_3, var_4, "none", "none" );
        var_6 = _func_034D( var_5 );

        if ( !_id_077B::_id_1B79( level.post_match_flow_weapons[var_2], var_6 ) )
        {
            var_7 = _func_0205( "weapon_" + var_6, ( 0, 0, 0 ) );
            var_7 hide();
            level.post_match_flow_weapons[var_2][var_6] = var_7;
        }
    }
}

preload_weapons( var_0 )
{
    if ( !isdefined( level.post_match_flow_weapons ) )
        level.post_match_flow_weapons = [];

    if ( !isdefined( level.post_match_flow_weapons[var_0] ) )
        level.post_match_flow_weapons[var_0] = [];

    var_1 = _id_633F( var_0 );

    foreach ( var_3 in var_1 )
    {
        preload_weapon_internal( var_3, 7, var_0 );

        if ( !_id_077B::_id_85A4( var_3[9], "none" ) )
            preload_weapon_internal( var_3, 9, var_0 );
    }
}

cleanup_preloaded_weapons( var_0 )
{
    if ( !isdefined( level.post_match_flow_weapons ) )
        return;

    if ( !isdefined( level.post_match_flow_weapons[var_0] ) )
        return;

    var_1 = level.post_match_flow_weapons[var_0];

    foreach ( var_3 in var_1 )
    {
        if ( !_func_0451( var_3 ) )
            var_3 _meth_809A();
    }

    level.post_match_flow_weapons[var_0] = [];
}

_id_D802( var_0 )
{
    level._id_6098 = _id_6846();
    level._id_BA27 = var_0;
    var_1 = level._id_6098._id_E015;
    var_2 = level._id_6098._id_0054;
    _id_8052( "podium", var_1, var_2, 2, 90, 1 );
    _id_8052( "operator", var_1, var_2, 2, 50, 1 );
    _id_8052( "player", var_1, var_2, 2, 50, 1 );
}

_id_C9E1()
{
    thread scripts\mp\playeractions::_id_9470();

    if ( !istrue( level.ran_winner_circle_intro_fx ) )
    {
        level.ran_winner_circle_intro_fx = 1;
        _id_077B::_id_579A( "winner_circle_level_vfx" );
    }

    foreach ( var_1 in level._id_B758 )
    {
        var_1 _meth_8260();
        var_1 _id_10E55( "operator", 1 );
        var_1 _meth_8208( 0.0, 0.2 );
    }

    var_3 = level._id_BA27;

    if ( _id_077B::_id_85A4( var_3, "tie" ) )
        var_3 = _id_077B::_id_BFC7( level._id_EF86 );

    var_4 = level._id_EF67[var_3]["players"][0];
    var_5 = var_4 get_mvp_highlight_animation_data();

    foreach ( var_7 in level._id_EF86 )
        level thread _id_07F5::_id_C9A9( "pom", var_7, var_5, var_4 );

    var_9 = scripts\mp\team_mvp_characters_util::_id_6335( var_5[0] );
    level _id_077B::_id_108A5( var_9, "pom_stopanim" );
    _id_44C0();

    foreach ( var_1 in level._id_B758 )
        var_1 _meth_865C();

    foreach ( var_1 in level._id_B758 )
        var_1 cameralinkto();

    cleanup_preloaded_weapons( "pom" );
}

get_mvp_highlight_animation_data()
{
    var_0 = get_operator_specific_animation( "pom", self );
    return var_0;
}

get_fatality_animation_data()
{
    var_0 = get_operator_specific_animation( "teamMVP", self );
    return var_0;
}

get_operator_specific_animation( var_0, var_1 )
{
    var_2 = var_1._id_AC2A._id_AC2E;

    if ( getdvar( "scr_mvp_operator_override", "" ) != "" )
        var_2 = _func_021A( getdvar( "scr_mvp_operator_override", "" ), "_" )[0];

    var_3 = _id_633F( var_0, var_2 );
    var_4 = _id_077B::_id_BFC7( var_3 );
    return var_4;
}

_id_C9C2( var_0, var_1 )
{
    self notify( "run_funcs_on_anim_notetracks" );
    self endon( "run_funcs_on_anim_notetracks" );
    self endon( "entitydeleted" );

    foreach ( var_3 in level._id_B758 )
        var_3 _meth_865B();

    var_5 = 1;

    for (;;)
    {
        self waittill( var_0, var_6 );

        if ( !isalive( var_6 ) )
            var_6 = [ var_6 ];

        foreach ( var_8 in var_6 )
        {
            if ( _func_0121( var_8, "slow_" ) )
            {
                if ( !getdvarint( "scr_team_mvp_slowmotion_enabled", 1 ) )
                    continue;

                var_9 = _func_021A( var_8, "_" );
                var_10 = var_9[0];
                var_11 = var_9[1];

                if ( _id_077B::_id_85A4( var_11, "stopanim" ) )
                {
                    level notify( "pom_stopanim" );
                    _func_01EB( 1, 1, 0 );
                    return;
                }

                var_12 = var_9[2];
                _func_01EB( var_5, int( var_11 ) / 100, float( var_12 ) / 1000 );
                wait( float( var_12 ) / 1000 );
                var_5 = int( var_11 );
            }

            if ( _func_0121( var_8, "dof" ) )
            {
                var_9 = _func_021A( var_8, "_" );
                var_10 = var_9[0];
                var_13 = float( var_9[1] );
                var_14 = float( var_9[2] );
                var_15 = 1.0;

                if ( isdefined( var_9[3] ) )
                    var_15 = float( var_9[3] );

                var_16 = 2.0;

                if ( isdefined( var_9[4] ) )
                    var_16 = float( var_9[4] );

                var_17 = undefined;

                if ( isdefined( var_1 ) )
                    var_18 = level._id_EF67[var_1]["players"];
                else
                    var_18 = level._id_B758;

                foreach ( var_3 in var_18 )
                    var_3 _meth_865E( var_13, var_14, var_15, var_16 );
            }
        }
    }
}

_id_C59C()
{
    _func_01EB( 1, 1, 0 );

    foreach ( var_1 in level._id_B758 )
    {
        var_1 _meth_865C();
        waitframe();
        var_1 _meth_865B();
    }
}

_id_4495( var_0, var_1 )
{
    for (;;)
    {
        level thread _id_077B::_id_4ECD( var_0, var_0 + 32 * _func_025A( anglestoforward( var_1 ) ), ( 1, 1, 1 ) );
        waitframe();
    }
}

_id_6846()
{
    var_0 = [];

    foreach ( var_2 in level._id_B758 )
    {
        if ( !isdefined( var_2._id_8FEA ) )
            continue;

        var_0[var_0.size] = var_2._id_8FEA;
    }

    if ( var_0.size == 0 )
        return _id_077B::_id_BFC7( level._id_10E56 );
    else
    {
        var_4 = _func_0016( var_0 );
        return _id_077B::_id_694A( var_4, level._id_10E56 );
    }
}

_id_8100()
{
    var_0 = _id_077B::_id_6D7C( "winner_circle_camera_struct", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2._id_E433 = [];

        if ( !isdefined( var_2._id_0054 ) )
            var_2._id_0054 = ( 0, 0, 0 );

        var_3 = _id_077B::_id_6D7C( var_2._id_0457, "targetname" );

        foreach ( var_5 in var_3 )
        {
            if ( !isdefined( var_5._id_0054 ) )
                var_5._id_0054 = ( 0, 0, 0 );

            if ( _id_077B::_id_85A4( var_5._id_0375, "solo_featured" ) )
            {
                var_2._id_E015 = var_5;
                continue;
            }

            var_2._id_E433[var_5._id_0375 + "_" + var_5._id_CD8C] = var_5;
        }
    }

    return var_0;
}

_id_8052( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._id_BA25 ) )
        level._id_BA25 = [];

    if ( !isdefined( level._id_BA25[var_0] ) )
        level._id_BA25[var_0] = [];

    foreach ( var_7 in level._id_EF86 )
        level._id_BA25[var_0][var_7] = scripts\mp\team_mvp_characters_util::create_client_character_camera( var_1._id_02EA, var_2, var_5 );
}

_id_6392( var_0 )
{
    return level._id_BA25[var_0]._id_02EA;
}

_id_638E( var_0, var_1 )
{
    if ( !isdefined( level._id_BA25[var_0][var_1]._id_0054 ) )
        return ( 0, 0, 0 );

    return level._id_BA25[var_0][var_1]._id_0054;
}

_id_10E55( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2._id_0309["team"];

    if ( isdefined( level._id_10E53 ) )
        var_3 = level._id_10E53;

    if ( !isdefined( level._id_BA25 ) )
        return;

    var_4 = level._id_BA25[var_0][var_3];
    var_2 scripts\mp\team_mvp_characters_util::attach_player_to_camera_view( var_4 );
}

_id_AC27( var_0, var_1, var_2 )
{
    thread _id_5463( var_0, var_1, var_2 );

    if ( isdefined( self._id_75BF ) )
        self._id_75BF thread _id_5463( var_0, var_1 );
}

_id_5463( var_0, var_1, var_2 )
{
    var_3 = self;
    var_3 notify( "ent_play_winner_circle_anim" );
    var_3 endon( "ent_play_winner_circle_anim" );

    if ( _id_077B::_id_85A4( var_3._id_02AE, "" ) )
        return;

    if ( _id_077B::_id_85A4( var_0, "none" ) )
        return;

    for (;;)
    {
        var_3 _meth_82C9();

        if ( isdefined( var_2 ) )
        {
            var_3._id_02EA = var_2._id_02EA;
            var_3._id_0054 = var_2._id_0054 + ( 0, 90, 0 );
        }

        var_3 _meth_82CB( var_0, "win_circle_anim" );

        if ( getdvarint( "scr_infinite_potg", 0 ) && isdefined( var_1 ) )
        {
            wait( var_1 );

            if ( isdefined( var_3._id_182E ) )
            {
                var_3._id_02EA = var_3._id_182E;
                var_3._id_0054 = var_3._id_182B;
            }

            level notify( "potg_cam_reset" );
            continue;
        }
        else
            break;
    }
}

_id_44C0()
{
    if ( level._id_1FFA )
    {
        while ( getdvarint( "scr_winner_circle_freeze_frame", 0 ) != 0 )
            waitframe();

        iprintlnbold( "RESUME ANIMATION!" );
        _func_01D0( "scr_winner_circle_freeze_frame", 1 );
        _func_01D2( "scr_winner_circle_freeze_frame", 1 );
    }

    _id_C59C();
    level notify( "pom_resume_from_freeze_frame" );
}

_id_86C2()
{
    return istrue( level._id_A29A );
}

_id_C9E0()
{
    if ( !_id_0A69::_id_10A14() && getdvarint( "potg_showcase_disableBetweenRounds", 1 ) )
        return;

    _id_C9E1();
}

_id_D836( var_0, var_1 )
{
    level.top_players[var_0] = [];

    foreach ( var_4, var_3 in var_1 )
    {
        if ( var_4 >= 3 )
            break;

        level.top_players[var_0] = _id_077B::_id_1B63( level.top_players[var_0], var_3 );
    }
}

winner_circle_thread( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_0; var_4 = var_4 + 2 )
    {
        var_5 = int( var_4 / 2 );
        var_6 = var_1[var_5];
        var_7 = var_6 get_fatality_animation_data();
        _id_07F5::_id_C9A9( "teamMVP", var_3, var_7, var_6, var_5, var_1.size );
    }
}

_id_CA0E()
{
    if ( !istrue( level.ran_winner_circle_intro_fx ) )
    {
        level.ran_winner_circle_intro_fx = 1;
        _id_077B::_id_579A( "winner_circle_level_vfx" );
    }

    thread scripts\mp\playeractions::_id_9471();

    foreach ( var_1 in level._id_B758 )
        var_1 _meth_8260();

    var_3 = _id_0A69::_id_8743();
    var_4 = undefined;
    var_5 = undefined;
    var_6 = [];
    var_7 = -2;
    var_8 = 0;
    var_9 = [];

    foreach ( var_11 in level._id_EF86 )
    {
        var_12 = mvp_get_top_players_for_team( var_11 );

        if ( !isdefined( var_12 ) || var_12.size == 0 )
            continue;

        var_14 = int( var_12.size );
        var_15 = level._id_6098._id_E433["group_featured_characters_3_middle"];
        var_5 = var_15._id_02EA;
        var_4 = var_15._id_0054 + ( 0, 90, 0 );
        var_16 = [ "left", "middle", "right" ];
        var_8 = 0;
        var_17 = int( 2 * var_14 );
        thread winner_circle_thread( var_17, var_12, var_16, var_11 );

        for ( var_13 = 0; var_13 < var_17; var_13 = var_13 + 2 )
        {
            var_18 = int( var_13 / 2 );
            var_19 = var_16[var_18];
            var_20 = "ui_wc_winner_order_" + var_18;
            var_21 = _id_6694( var_19 );
            var_22 = var_12[var_18];
            var_23 = var_22 get_fatality_animation_data();
            var_24 = scripts\mp\team_mvp_characters_util::_id_6335( var_23[0] );
            var_8 = var_8 + var_24;

            if ( level._id_1FFA )
                level waittill( "pom_resume_from_freeze_frame" );

            if ( var_3 )
            {
                var_9[var_20] = var_21;
                continue;
            }

            foreach ( var_1 in level._id_EF67[var_11]["players"] )
                var_1 _meth_82F6( var_20, var_21 );
        }

        if ( var_3 )
        {
            foreach ( var_1 in level._id_B758 )
            {
                for ( var_13 = 0; var_13 < _id_077E::_id_6572(); var_13++ )
                {
                    var_20 = "ui_wc_winner_order_" + var_13;

                    if ( isdefined( var_9[var_20] ) )
                    {
                        var_1 _meth_82F6( var_20, var_9[var_20] );
                        continue;
                    }

                    var_1 _meth_82F6( var_20, 0 );
                }
            }
        }

        foreach ( var_1 in level._id_EF67[var_11]["players"] )
            var_1 _meth_82F6( "ui_wc_anim_length", int( var_8 * 1000 ) );

        _id_077B::_id_46C3( var_8, ::_id_A67E, var_11 );
    }
}

mvp_get_top_players_for_team( var_0 )
{
    if ( !isdefined( level.top_players[var_0] ) )
        return [];

    return level.top_players[var_0];
}

_id_D17D( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];
        var_5 = _func_020F();
        var_5._id_0096 = var_4 _meth_812A();
        var_5._id_01FE = var_4 _meth_812B();
        var_5._id_0352 = 0;
        var_5._id_04D6 = var_4 getcurrentweapon();
        var_5._id_00DD = var_4 _meth_8586();
        var_5._id_02BA = var_4._id_02BA;
        var_5.vertalign = var_4 getxuid();
        var_5._id_397F = var_4 getentitynumber();
        var_5._id_B97E = var_2.size;
        var_2[var_2.size] = var_5;
    }

    _func_0336( var_1 getentitynumber(), var_2 );
}

_id_A67E( var_0 )
{
    level notify( "team_mvp_final_pose_start_" + var_0 );
}

_id_ED98( var_0, var_1, var_2, var_3 )
{
    foreach ( var_5 in level._id_EF67[var_0]["players"] )
    {
        var_5 _meth_8852( var_2, var_3 );
        var_5 _meth_82F6( "ui_wc_screenshot", var_1 );
    }
}

_id_633F( var_0, var_1 )
{
    var_2 = [];

    if ( _id_077B::_id_85A4( var_0, "pom" ) )
        var_3 = "postMatchFlowAnimationsIntros.csv";
    else
        var_3 = "postMatchFlowAnimations.csv";

    var_4 = getdvar( "scr_override_fatality_anim", "" );
    var_5 = getdvar( "scr_override_potg_anim", "" );

    for ( var_6 = 0; var_6 < strtok( var_3 ); var_6++ )
    {
        var_7 = get_pmf_data_row( var_3, var_6 );

        if ( isdefined( var_1 ) && !_id_077B::_id_85A4( var_7[1], "generic" ) && !_id_077B::_id_85A4( var_1, var_7[1] ) )
            continue;

        if ( _id_077B::_id_85A4( var_0, "teamMVP" ) && var_4 != "" && !_id_077B::_id_85A4( var_4, var_7[0] ) )
            continue;

        if ( _id_077B::_id_85A4( var_0, "pom" ) && var_5 != "" && !_id_077B::_id_85A4( var_5, var_7[0] ) )
            continue;

        var_8 = getdvarint( "scr_killswitch_wip_pmf_anims", 0 );

        if ( var_8 && int( var_7[12] ) )
            continue;

        var_2[var_2.size] = var_7;
    }

    return var_2;
}

get_pmf_data_row( var_0, var_1 )
{
    var_2 = [];
    var_2[0] = _func_021E( var_0, var_1, 0 );
    var_2[1] = _func_021E( var_0, var_1, 1 );
    var_2[2] = _func_021E( var_0, var_1, 2 );
    var_2[3] = _func_021E( var_0, var_1, 3 );
    var_2[4] = _func_021E( var_0, var_1, 4 );
    var_2[5] = _func_021E( var_0, var_1, 5 );
    var_2[6] = _func_021E( var_0, var_1, 6 );
    var_2[7] = _func_021E( var_0, var_1, 7 );
    var_2[8] = _func_021E( var_0, var_1, 8 );
    var_2[9] = _func_021E( var_0, var_1, 9 );
    var_2[11] = _func_021E( var_0, var_1, 10 );
    var_2[12] = _func_021E( var_0, var_1, 11 );
    var_2[13] = var_1;
    return var_2;
}

_id_6694( var_0 )
{
    var_1 = 0;

    switch ( var_0 )
    {
        case "left":
            var_1 = 1;
            break;
        case "right":
            var_1 = 3;
            break;
        case "middle":
            var_1 = 2;
            break;
    }

    return var_1;
}

_id_C9BE( var_0 )
{
    foreach ( var_2 in level._id_B758 )
    {
        var_2 _id_0A74::_id_FD24( "playing" );
        var_2 _meth_8576( "winnercircle" );
    }

    wait( var_0 );

    foreach ( var_2 in level._id_B758 )
        var_2 _meth_8576( "winnercircle40" );
}

_id_10E54( var_0, var_1 )
{
    wait( var_0 );
    var_2 = 0.5;

    foreach ( var_4 in level._id_B758 )
        level thread _id_0999::_id_58A7( var_4, 1, var_2 );

    wait 1;

    foreach ( var_4 in level._id_B758 )
        level thread _id_0999::_id_58A7( var_4, 0, var_2 );
}

_id_B307( var_0 )
{
    wait( var_0 );

    foreach ( var_2 in level._id_B758 )
        var_2 _meth_827E( "mp_cmd_camera_zoom_in", var_2 );
}

_id_DC5E( var_0 )
{
    var_0 _id_10E55( "podium" );
}

_id_DC5A( var_0 )
{
    var_0 _id_10E55( "podium" );
}
