// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_C9A9( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isdefined( var_4 ) && var_4 - 1 >= 0 )
    {
        _id_07FF::_id_ED98( var_1, var_4, 0.333333, 0.5 );
        waitframe();
    }

    var_6 = level._id_6098._id_E433["group_featured_characters_3_middle"];

    if ( var_2[8] != "" )
        var_7 = _func_021A( var_2[8], "," );
    else
        var_7 = [];

    var_8 = var_2[7];
    var_9 = scripts\cp_mp\hostmigration::_id_2CEB( var_8, var_7, "none", "none" );
    var_10 = _func_034D( var_9 );
    var_11 = "none";

    if ( _id_077B::_id_85A4( var_0, "teamMVP" ) )
    {
        var_12 = var_2[9];

        if ( var_12 != "none" )
        {
            var_13 = scripts\cp_mp\hostmigration::_id_2CEB( var_12, [], "none", "none" );
            var_11 = _func_034D( var_13 );
        }
    }

    var_14 = var_2[13];

    foreach ( var_16 in level._id_EF67[var_1]["players"] )
    {
        if ( _id_077B::_id_85A4( var_0, "teamMVP" ) )
            var_16 _meth_82F6( "ui_wc_anim_type", 0 );
        else
            var_16 _meth_82F6( "ui_wc_anim_type", 1 );

        var_16 _meth_82F6( "ui_wc_anim_select", var_14 );
    }

    if ( _id_077B::_id_85A4( var_0, "teamMVP" ) )
    {
        var_18 = var_6._id_02EA;
        var_19 = var_6._id_0054 + ( 0, 90, 0 );
        var_20 = [ var_18, var_18 ];
        var_21 = [ var_19, var_19 ];
        _id_E0F7( var_1, var_20, var_21 );
        level thread scripts\mp\team_mvp_characters_util::_id_C9A4( level._id_BA25["podium"][var_1], var_2[4], var_6._id_02EA, var_6._id_0054 + ( 0, 90, 0 ) );
        level thread scripts\mp\team_mvp_characters_util::spawn_props_and_animate( var_2, var_6._id_02EA, var_6._id_0054 );
    }
    else
    {
        var_20 = [ var_6._id_02EA ];
        var_21 = [ var_6._id_0054 ];
        _id_E0F7( var_1, var_20, var_21 );
        level thread scripts\mp\team_mvp_characters_util::_id_C9A4( level._id_BA25["podium"][var_1], var_2[4], var_6._id_02EA, var_6._id_0054 );
        level thread scripts\mp\team_mvp_characters_util::spawn_props_and_animate( var_2, var_6._id_02EA, var_6._id_0054 );
    }

    for ( var_22 = 0; var_22 < level._id_10CDD[var_1].size; var_22++ )
    {
        if ( var_22 == 0 )
            var_23 = var_2[2];
        else
            var_23 = var_2[3];

        var_24 = level._id_10CDD[var_1][var_22];

        if ( _id_077B::_id_85A4( var_0, "teamMVP" ) )
            var_25 = var_24 scripts\mp\team_mvp_characters_util::run_delta_motion_on_client_character( var_23, var_6._id_02EA, var_6._id_0054 + ( 0, 90, 0 ) );
        else
            var_25 = var_24 scripts\mp\team_mvp_characters_util::run_delta_motion_on_client_character( var_23, var_6._id_02EA, var_6._id_0054 );

        var_25 thread _id_07FF::_id_C9C2( "clientCharacterAnim", var_1 );
    }

    var_26 = var_3;

    if ( _id_077B::_id_85A4( var_0, "teamMVP" ) )
        var_27 = [ var_26, var_26 ];
    else
        var_27 = [ var_26 ];

    var_28 = _id_65A0( var_27, var_2, var_10, var_11 );

    if ( isdefined( var_26 ) )
    {
        foreach ( var_16 in level._id_EF67[var_1]["players"] )
        {
            var_16 _id_07FF::_id_10E55( "podium" );
            _func_0336( var_16 getentitynumber(), var_28 );
        }
    }

    var_31 = scripts\mp\team_mvp_characters_util::_id_6335( var_2[0] );
    wait( var_31 );

    if ( isdefined( var_4 ) && isdefined( var_5 ) && var_4 == var_5 - 1 )
        _id_07FF::_id_ED98( var_1, var_4 + 1, 0.333333, 0.5 );
}

_id_E0F7( var_0, var_1, var_2 )
{
    if ( !isdefined( level._id_10CDD ) )
        level._id_10CDD = [];

    if ( !isdefined( level._id_10CDD[var_0] ) )
        level._id_10CDD[var_0] = [];

    foreach ( var_4 in level._id_10CDD[var_0] )
        var_4 _meth_809A();

    level._id_10CDD[var_0] = [];

    for ( var_6 = 0; var_6 < var_1.size; var_6++ )
    {
        var_4 = _func_0205( "script_character", var_1[var_6], 0, 0, var_6, "MPClientCharacter" );
        var_4._id_0054 = var_2[var_6];
        level._id_10CDD[var_0][level._id_10CDD[var_0].size] = var_4;

        foreach ( var_8 in level._id_B758 )
        {
            if ( var_0 != var_8._id_0393 )
                var_4 _meth_847B( var_8 );
        }
    }
}

_id_65A0( var_0, var_1, var_2, var_3 )
{
    var_4 = [];

    for ( var_5 = 0; var_5 < var_0.size; var_5++ )
    {
        var_6 = var_5 == 0;
        var_7 = var_0[var_5];
        var_8 = _func_020F();

        if ( var_6 && getdvar( "scr_mvp_operator_override", "" ) != "" )
        {
            var_9 = getdvar( "scr_mvp_operator_override", "" );
            [var_8._id_0096, var_8._id_01FE] = get_customization_indicies_from_skin( var_9 );
        }
        else if ( var_6 )
        {
            var_8._id_0096 = var_7 _meth_812A();
            var_8._id_01FE = var_7 _meth_812B();
        }
        else
            [var_8._id_0096, var_8._id_01FE] = get_customization_indicies_from_skin( var_1[11] );

        var_8._id_0352 = 0;

        if ( var_5 == 0 )
            var_8._id_04D6 = var_2;
        else if ( isdefined( var_3 ) )
        {
            if ( var_3 != "none" )
                var_8._id_04D6 = var_3;
            else
                var_8._id_04D6 = "s4_me_fists_mp";
        }

        var_8._id_00DD = var_7 _meth_8586();
        var_8._id_02BA = var_7._id_02BA;
        var_8.vertalign = var_7 getxuid();
        var_8._id_397F = var_7 getentitynumber();
        var_8._id_B97E = var_4.size;
        var_4[var_4.size] = var_8;
    }

    return var_4;
}

get_customization_indicies_from_skin( var_0 )
{
    var_1 = stopfxontag( "operatorskins.csv", 1, var_0, 4 );
    var_2 = stopfxontag( "operatorskins.csv", 1, var_0, 5 );
    var_3 = _func_0225( "mp/cac/bodies.csv", 1, var_1 );
    var_4 = _func_0225( "mp/cac/heads.csv", 1, var_2 );
    return [ var_3, var_4 ];
}
