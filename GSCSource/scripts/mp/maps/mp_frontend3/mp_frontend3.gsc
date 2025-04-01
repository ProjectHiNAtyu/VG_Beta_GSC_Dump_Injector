// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_AB4C()
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    level._id_B7FF = self;

    if ( isdefined( level._id_B66C ) )
        return;

    level._id_B66C = 1;
    _id_077B::_id_80B0();
    scripts\mp\team_mvp_characters_util::_id_C1BB();

    if ( getdvarint( "scr_show_3tile_lobby", 0 ) )
        level thread endlesslobbyfloor3tiles();
    else
        level thread endlesslobbyfloor2tiles();

    thread _id_B221();
    thread _id_0768::_id_D80A();
    _id_0768::_id_81BF();
    self _meth_865B();
    wait 0.5;
    _id_077B::_id_0FB3( "vfx_frag_gren_im", "vfx/iw8/weap/_explo/vfx_explo_frag_gren.vfx" );
}

run_explosions()
{
    level endon( "game_ended" );
    var_0 = _id_077B::_id_6D7A( "frontend3_explosion_struct", "targetname" );
    var_1 = _id_077B::_id_6D7C( var_0._id_0457, "targetname" );

    for (;;)
    {
        wait 1;

        foreach ( var_3 in var_1 )
        {
            _func_0196( _id_077B::_id_6A40( "vfx_frag_gren_im" ), var_3._id_02EA );
            wait( _func_01B8( 3 ) + 2 );
        }
    }
}

_id_2F04()
{
    thread _id_AB4C();
    thread _id_0768::_id_5FBB( _id_0768::_id_3053 );
    thread _id_0768::_id_5521();
    thread _id_0768::_id_98F6();
    thread scripts\cp_mp\gunbench_adjustiments::lui_update_gunbench();
}

_id_0271()
{
    scripts\mp\maps\mp_frontend3\mp_frontend3_precache::_id_0271();
    scripts\mp\maps\mp_frontend3\gen\mp_frontend3_art::_id_0271();
    scripts\mp\maps\mp_frontend3\mp_frontend3_fx::_id_0271();
    scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::_id_0271();
    game["attackers"] = "allies";
    game["defenders"] = "axis";
    _id_0768::_id_3EBD();
    _id_0768::_id_D7C6();
    scripts\cp_mp\gunbench_adjustiments::gunbench_startup();
    level._id_F487 = 0;
    level._id_2F25 = ::_id_2F04;
    init_frontend_lighting_transitions();
    _id_077B::_id_5BF1( "floor1" );
}

init_frontend_lighting_transitions()
{
    add_frontend_transition( "squad_lobby", "squad_lobby_detail", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::lobby_far );
    add_frontend_transition( "squad_lobby_detail", "squad_lobby", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::lobby_close );
    add_frontend_transition( "loadout_showcase_overview", "character_faction_select", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_far );
    add_frontend_transition( "loadout_showcase_overview", "squad_lobby_detail", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_far );
    add_frontend_transition( "loadout_showcase_s", "loadout_showcase_p", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_close );
    add_frontend_transition( "loadout_showcase_perks", "loadout_showcase_s", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_far );
    add_frontend_transition( "loadout_showcase_l", "loadout_showcase_perks", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_close );
    add_frontend_transition( "loadout_showcase_p", "loadout_showcase_t", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_far );
    add_frontend_transition( "loadout_showcase_t", "loadout_showcase_p", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_close );
    add_frontend_transition( "loadout_showcase_perks", "loadout_showcase_l", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_far );
    add_frontend_transition( "loadout_showcase_s", "loadout_showcase_perks", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_close );
    add_frontend_transition( "loadout_showcase_p", "loadout_showcase_s", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::weapons_far );
    add_frontend_transition( "character_tango", "default", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select", "operator_far", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select", "character_faction_select_detail", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_close );
    add_frontend_transition( "character_faction_select_detail", "default", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select_detail", "character_faction_select", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select_detail", "character_faction_select_quips", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_close );
    add_frontend_transition( "character_faction_select_quips", "default", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select_quips", "character_faction_select_detail", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_close );
    add_frontend_transition( "character_preview_select", "default", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_preview_select", "character_preview_select_detail", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_close );
    add_frontend_transition( "character_preview_select", "character_faction_select_quips", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_close );
    add_frontend_transition( "character_preview_select_detail", "default", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_preview_select_detail", "character_preview_select", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select", "squad_lobby", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_far );
    add_frontend_transition( "character_faction_select", "loadout_showcase_overview", "lighting_change", scripts\mp\maps\mp_frontend3\mp_frontend3_lighting::operator_close );
}

add_frontend_transition( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level.frontend_transition_adds ) )
        level.frontend_transition_adds = [];

    var_4 = _func_020F();
    var_4.from = var_0;
    var_4.to = var_1;
    var_4._id_02BA = var_2;
    var_4._id_5FF7 = var_3;
    level.frontend_transition_adds[level.frontend_transition_adds.size] = var_4;
}

_id_B221()
{
    waitframe();
    level._id_5FBC = [];
    var_0 = getent( "wall1steam1", "script_noteworthy" );

    if ( isdefined( var_0 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_0._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_0._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam1_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_2 = getent( "lobby_floor_01", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_2 );
        level._id_5FBC[var_1]._id_6076 = "steamFXWall";
    }

    var_3 = getent( "wall2steam1", "script_noteworthy" );

    if ( isdefined( var_3 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_3._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_3._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam2_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_4 = getent( "lobby_floor_02", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_4 );
        level._id_5FBC[var_1]._id_6076 = "steamFXWall";
    }

    var_5 = getent( "wall2steam2", "script_noteworthy" );

    if ( isdefined( var_5 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_5._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_5._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam3_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_4 = getent( "lobby_floor_02", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_4 );
        level._id_5FBC[var_1]._id_6076 = "steamFXWall";
    }

    var_6 = getent( "wall2steam3", "script_noteworthy" );

    if ( isdefined( var_6 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_6._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_6._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam3_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_4 = getent( "lobby_floor_02", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_4 );
        level._id_5FBC[var_1]._id_6076 = "steamFXWall";
    }

    var_7 = getent( "floor1steam1", "script_noteworthy" );

    if ( isdefined( var_7 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_7._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_7._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam3_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_2 = getent( "lobby_floor_01", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_2 );
        level._id_5FBC[var_1]._id_6076 = "steamFXFloor";
    }

    var_8 = getent( "floor1steam2", "script_noteworthy" );

    if ( isdefined( var_8 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_8._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_8._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam3_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_2 = getent( "lobby_floor_01", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_2 );
        level._id_5FBC[var_1]._id_6076 = "steamFXFloor";
    }

    var_9 = getent( "floor2steam1", "script_noteworthy" );

    if ( isdefined( var_9 ) )
    {
        var_1 = level._id_5FBC.size;
        level._id_5FBC[var_1] = _id_077B::_id_E20C();
        level._id_5FBC[var_1]._id_02EA = var_9._id_02EA;
        level._id_5FBC[var_1]._id_0054 = var_9._id_0054;
        level._id_5FBC[var_1]._id_045A = "wallSteam3_fx1";
        level._id_5FBC[var_1] _meth_83C3();
        var_4 = getent( "lobby_floor_02", "targetname" );
        level._id_5FBC[var_1] _meth_820B( var_4 );
        level._id_5FBC[var_1]._id_6076 = "steamFXFloor";
    }

    var_10 = getentarray( "firevfx", "targetname" );

    if ( isdefined( var_10 ) )
    {
        foreach ( var_12 in var_10 )
        {
            var_1 = level._id_5FBC.size;
            level._id_5FBC[var_1] = _id_077B::_id_E20C();
            level._id_5FBC[var_1]._id_02EA = var_12._id_02EA;
            level._id_5FBC[var_1]._id_0054 = var_12._id_0054;
            level._id_5FBC[var_1]._id_045A = "firevfx";
            level._id_5FBC[var_1] _meth_83C3();

            switch ( var_12._id_0375 )
            {
                case "floor1":
                    var_2 = getent( "lobby_floor_01", "targetname" );
                    break;
                case "floor2":
                    var_4 = getent( "lobby_floor_02", "targetname" );
                    break;
                case "floor3":
                    var_13 = getent( "lobby_floor_03", "targetname" );
                    break;
            }

            level._id_5FBC[var_1]._id_6076 = "dome_fire_lrg_01";
        }
    }

    wait 0.5;
}

endlesslobbyfloor2tiles()
{
    wait 0.1;
    var_0 = getent( "lobby_floor_01", "targetname" );
    var_1 = getentarray( "lobby_floor_01_collection", "targetname" );
    var_2 = getent( "lobby_floor_02", "targetname" );
    var_3 = getentarray( "lobby_floor_02_collection", "targetname" );
    var_4 = getentarray( "lobby_floor_03_collection", "targetname" );

    if ( getdvarint( "scr_VAN_55455", 0 ) )
    {
        foreach ( var_6 in _id_077B::_id_1B72( var_1, var_3 ) )
            var_6 _meth_809A();

        var_1 = [];
        var_3 = [];
    }

    foreach ( var_6 in var_4 )
        var_6 _meth_809A();

    var_4 = [];

    if ( !isdefined( var_0 ) || !isdefined( var_2 ) )
        return;

    if ( isdefined( var_1 ) && var_1.size >= 1 )
    {
        foreach ( var_11 in var_1 )
            var_11 _meth_820B( var_0 );
    }

    if ( isdefined( var_3 ) && var_3.size >= 1 )
    {
        foreach ( var_11 in var_3 )
            var_11 _meth_820B( var_2 );
    }

    var_15 = var_0._id_02EA;
    var_16 = var_2._id_02EA;
    var_17 = distance( var_15, var_16 );
    var_18 = 25.662;
    var_19 = var_17 / var_18;
    var_20 = var_15 + _func_025A( var_15 - var_16 ) * var_17;
    var_21 = 1;
    wait 0.05;

    for (;;)
    {
        if ( var_21 )
        {
            _id_077B::_id_5BFB( "floor1" );
            var_2 hide();
            var_2 _meth_80BE();
            var_2._id_02EA = var_2._id_02EA + ( 0, 0, -1000 );
            waitframe();
            var_2 _meth_80BE();
            var_2._id_02EA = var_16 + ( 0, 0, -1000 );
            waitframe();
            var_2 _meth_80BE();
            var_2._id_02EA = var_16;
            var_2 _meth_83C3();
            var_2 _meth_823B( var_15, var_19 );
            var_0 _meth_823B( var_20, var_19 );
        }
        else
        {
            _id_077B::_id_5BE4( "floor1" );
            var_0 hide();
            var_0 _meth_80BE();
            var_0._id_02EA = var_0._id_02EA + ( 0, 0, -1000 );
            waitframe();
            var_0 _meth_80BE();
            var_0._id_02EA = var_16 + ( 0, 0, -1000 );
            waitframe();
            var_0 _meth_80BE();
            var_0._id_02EA = var_16;
            var_0 _meth_83C3();
            var_0 _meth_823B( var_15, var_19 );
            var_2 _meth_823B( var_20, var_19 );
        }

        var_21 = !var_21;
        wait( var_19 );
    }
}

endlesslobbyfloor3tiles()
{
    wait 0.1;
    var_0 = getent( "lobby_floor_01", "targetname" );
    var_1 = getentarray( "lobby_floor_01_collection", "targetname" );
    var_2 = getent( "lobby_floor_02", "targetname" );
    var_3 = getentarray( "lobby_floor_02_collection", "targetname" );
    var_4 = getent( "lobby_floor_03", "targetname" );
    var_5 = getentarray( "lobby_floor_03_collection", "targetname" );

    if ( getdvarint( "scr_VAN_55455", 0 ) )
    {
        foreach ( var_7 in _id_077B::_id_1B72( var_1, var_3, var_5 ) )
            var_7 _meth_809A();

        var_1 = [];
        var_3 = [];
        var_5 = [];
    }

    if ( !isdefined( var_0 ) || !isdefined( var_2 ) || !isdefined( var_4 ) )
        return;

    if ( isdefined( var_1 ) && var_1.size >= 1 )
    {
        foreach ( var_10 in var_1 )
            var_10 _meth_820B( var_0 );
    }

    if ( isdefined( var_3 ) && var_3.size >= 1 )
    {
        foreach ( var_10 in var_3 )
            var_10 _meth_820B( var_2 );
    }

    if ( isdefined( var_5 ) && var_5.size >= 1 )
    {
        foreach ( var_10 in var_5 )
            var_10 _meth_820B( var_4 );
    }

    var_16 = var_0._id_02EA;
    var_17 = var_2._id_02EA;
    var_18 = var_4._id_02EA;
    var_19 = distance( var_17, var_18 ) / 2;
    var_20 = 25.662 * getdvarfloat( "scr_movespeed_scaler", 1.0 );
    var_21 = var_19 / var_20;
    var_22 = var_21 * 0.5;
    var_23 = var_18 + _func_025A( var_18 - var_16 ) * var_19;
    var_24 = 2;
    wait 0.05;

    for (;;)
    {
        if ( var_24 == 1 )
        {
            var_0 hide();
            var_0 _meth_80BE();
            var_0._id_02EA = var_0._id_02EA + ( 0, 0, -1000 );
            waitframe();
            var_0 _meth_80BE();
            var_0._id_02EA = var_17 + ( 0, 0, -1000 );
            waitframe();
            var_0 _meth_80BE();
            var_0._id_02EA = var_17;
            var_0 _meth_83C3();
            var_0 _meth_823B( var_16, var_21 );
            var_2 _meth_823B( var_23, var_21 );
            var_4 _meth_823B( var_18, var_21 );
        }
        else if ( var_24 == 2 )
        {
            var_2 hide();
            var_2 _meth_80BE();
            var_2._id_02EA = var_2._id_02EA + ( 0, 0, -1000 );
            waitframe();
            var_2 _meth_80BE();
            var_2._id_02EA = var_17 + ( 0, 0, -1000 );
            waitframe();
            var_2 _meth_80BE();
            var_2._id_02EA = var_17;
            var_2 _meth_83C3();
            var_2 _meth_823B( var_16, var_21 );
            var_4 _meth_823B( var_23, var_21 );
            var_0 _meth_823B( var_18, var_21 );
        }
        else
        {
            var_4 hide();
            var_4 _meth_80BE();
            var_4._id_02EA = var_4._id_02EA + ( 0, 0, -1000 );
            waitframe();
            var_4 _meth_80BE();
            var_4._id_02EA = var_17 + ( 0, 0, -1000 );
            waitframe();
            var_4 _meth_80BE();
            var_4._id_02EA = var_17;
            var_4 _meth_83C3();
            var_4 _meth_823B( var_16, var_21 );
            var_0 _meth_823B( var_23, var_21 );
            var_2 _meth_823B( var_18, var_21 );
        }

        wait( var_21 );
        var_24 = var_24 + 1;

        if ( var_24 > 3 )
            var_24 = 1;
    }
}
