// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_D84F()
{
    level._id_AB2C = ::_id_AA76;
    level._id_ABA0 = ::_id_AA77;
    level._id_ABA6 = ::_id_AA78;
    level._id_E353 = undefined;
    _id_0A6E::_id_C27C( ::_id_AB59 );
    _id_0A69::_id_C242( _id_0A69::_id_6A43(), 0 );
    level._id_0BA3["cranked_explode"] = _func_0139( "vfx/iw8_mp/gamemode/vfx_search_bombsite_destroy.vfx" );
}

_id_FC36()
{
    level._id_4CC8 = _id_0A66::_id_507C( "dogtags", 0, 0, 1 );
    level._id_DC9E = _id_0A66::_id_507C( "enemyDeathLoc", 0, 0, 3 );

    if ( level._id_4CC8 )
        scripts\mp\gametypes\obj_dogtag::_id_021D();

    level._id_A29F = _id_0A69::_id_6A43() == "hvt" || _id_0A66::_id_6BDE( "scr_" + _id_0A69::_id_6A43() + "_inGameLoot", "scr_game_inGameLoot" );

    if ( level._id_A29F )
        scripts\mp\gametypes\plunder::_id_021D();
}

_id_AA76( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 0;

    if ( _id_0A69::_id_8A7C() && _id_07A8::_id_609F( "prematch_done" ) )
        level thread scripts\mp\movers::_id_E35B( var_0, var_1, "new_trigger_spawned", var_3 );

    if ( _func_0107( self ) && isdefined( self._id_8772 ) )
        self._id_8772 = undefined;

    if ( istrue( level._id_5CB3 ) )
        _id_07A9::_id_5CA9( var_1, var_0, gettime(), "kill_by_" + var_1._id_045B );

    var_7 = _id_0A69::_id_88E8() && istrue( var_0._id_B6AC );

    if ( !var_7 && var_1._id_045B != self._id_045B )
    {
        var_8 = level._id_CC01["death"] * -1;

        if ( var_8 != 0 )
        {
            if ( level._id_EF62 )
                level _id_07AE::_id_6FE4( var_0._id_0309["team"], var_8, 0 );
            else
                var_1 _id_07AE::_id_6FB2( "kill", var_8 );
        }

        var_6 = level._id_CC01["kill"];

        if ( istrue( var_5 ) )
            var_6 = var_6 + level._id_CC01["kskill"];

        if ( var_3 == "MOD_HEAD_SHOT" )
            var_6 = var_6 + level._id_CC01["headshot"];

        if ( level._id_4CC8 && _id_07A8::_id_609F( "prematch_done" ) )
            level thread scripts\mp\gametypes\obj_dogtag::_id_E295( var_0, var_1, "new_tag_spawned", var_3 );

        if ( level._id_A29F )
            level thread scripts\mp\gametypes\plunder::_id_5030( var_0, var_1 );
    }

    if ( istrue( level._id_EB96 ) )
    {
        if ( _id_0A69::_id_9BB3() && isdefined( var_1._id_3E37 ) )
        {
            if ( !var_7 )
            {
                var_6 = var_6 + 1;
                var_1 thread _id_07E1::_id_CBF3( "teamscore_notify_" + var_6 );
            }
        }

        var_1 _id_0798::_id_AA7E( var_0, var_1, var_2 );
    }

    if ( var_6 != 0 )
    {
        if ( level._id_EF62 )
            level _id_07AE::_id_6FE4( var_1._id_0309["team"], var_6, 0 );
        else
            var_1 _id_07AE::_id_6FB2( "kill", var_6, var_0 );
    }
}

_id_AA77( var_0 )
{
    if ( istrue( level._id_EB96 ) )
        var_0 _id_0798::_id_3856();

    if ( isdefined( level._id_CC01 ) )
    {
        var_1 = level._id_CC01["death"] * -1;

        if ( var_1 != 0 )
        {
            if ( level._id_EF62 )
                level _id_07AE::_id_6FE4( var_0._id_0309["team"], var_1, 0 );
        }
    }

    if ( _id_0A69::_id_8A7C() && _id_07A8::_id_609F( "prematch_done" ) )
    {
        if ( level._id_EF62 )
            level thread scripts\mp\movers::_id_E35B( var_0, var_0, "new_trigger_spawned", "MOD_SUICIDE" );
    }

    if ( level._id_A29F )
        level thread scripts\mp\gametypes\plunder::_id_5030( var_0, undefined );

    if ( isdefined( level._id_9FD6 ) )
        [[ level._id_9FD6 ]]( var_0 );
}

_id_AA78( var_0 )
{
    if ( istrue( level._id_EB96 ) )
        var_0 _id_0798::_id_3856();

    if ( isdefined( level._id_9FD7 ) )
        [[ level._id_9FD7 ]]( var_0 );
}

_id_4CC3( var_0 )
{

}

_id_4CC4( var_0 )
{

}

_id_AB92()
{
    if ( istrue( game["inLiveLobby"] ) )
    {
        var_0 = istrue( level._id_15A2 ) && istrue( level._id_E354 );
        thread _id_9A18( var_0 );
    }
    else if ( istrue( level._id_E354 ) && _id_07A8::_id_609F( "prematch_done" ) )
    {
        if ( isdefined( level._id_E353 ) )
        {
            if ( [[ level._id_E353 ]]() )
                thread _id_9A18( 1 );
        }
        else
            thread _id_9A18( 1 );
    }

    if ( _id_0A69::_id_8A7C() )
        thread scripts\mp\movers::_id_FD11();

    self _meth_86C9();

    if ( istrue( level._id_4AAC ) )
    {
        self allowmounttop( 0 );
        self allowreload( 0 );
    }

    if ( isdefined( level._id_9FD5 ) )
        [[ level._id_9FD5 ]]();
    else
        thread _id_FCC1();

    if ( _id_0A69::_id_6A46() != 0 )
        _id_FBF5();

    if ( istrue( game["practiceRound"] ) )
    {
        if ( istrue( level._id_DFBC ) )
            thread _id_DFBD();
        else
            self _meth_84C6( "MP_INGAME_ONLY/PRACTICE_ROUND" );
    }
    else
        self sethudtutorialmessage();

    if ( !istrue( level._id_4ACB ) )
        thread _id_0796::_id_A59F();
}

_id_A7A9( var_0 )
{
    self endon( "disconnect" );
    self notify( "nvg_spawn_tutorial" );
    self endon( "nvg_spawn_tutorial" );
    var_1 = 1;

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    for (;;)
    {
        if ( var_1 )
            self waittill( "giveLoadout" );
        else
            self waittill( "spawned" );

        if ( var_0 < 2 )
        {
            if ( self _meth_8427() )
                var_2 = 32;
            else
                var_2 = 33;

            if ( _id_07A8::_id_609F( "infil_will_run" ) && !_id_07A8::_id_609F( "prematch_done" ) )
            {
                level waittill( "prematch_done" );
                wait 5;
                _id_0A70::_id_D5DD( var_2 );
                wait 5;
                _id_0A70::_id_D5DD( 0 );
            }
            else
            {
                if ( !var_0 )
                    wait 5;

                _id_0A70::_id_D5DD( var_2 );
                wait 5;
                _id_0A70::_id_D5DD( 0 );
            }

            var_0++;
            continue;
        }

        break;
    }
}

_id_AB5E( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( _id_0A69::_id_6A46() != 0 )
        _id_FBF5();

    if ( _id_0A69::_id_88E8() && istrue( self._id_82AC ) && _id_0A69::_id_6A43() != "br" )
        _id_AA76( self, var_1, var_9, var_3, var_4, var_10 );

    if ( isdefined( level._id_AB5D ) )
        [[ level._id_AB5D ]]( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 );
}

_id_AB49()
{
    for (;;)
    {
        level waittill( "connected", var_0 );

        if ( isdefined( level._id_AB46 ) )
            level thread [[ level._id_AB46 ]]( var_0 );

        if ( getdvarint( "#x3eb287ace1e45c3d4", 0 ) )
            var_0 _id_0761::_id_2F73();

        if ( _id_0999::_id_8926() )
            var_0 thread _id_A7A9();
    }
}

_id_AB51( var_0 )
{
    if ( _id_0A69::_id_6A46() != 0 )
        var_0 _id_FBF5();

    if ( isdefined( level._id_AB50 ) )
        var_0 thread [[ level._id_AB50 ]]( var_0 );
}

_id_AB59( var_0 )
{
    if ( isdefined( level._id_AB58 ) )
        [[ level._id_AB58 ]]( self );

    if ( istrue( level._id_4CC8 ) )
        scripts\mp\gametypes\obj_dogtag::_id_AB56( var_0 );

    if ( istrue( level._id_FEF6 ) )
        scripts\mp\gametypes\obj_zonecapture::_id_AB56( var_0 );

    if ( _id_0999::_id_8926() )
        var_0 thread _id_A7A9( 1 );
}

_id_9A18( var_0 )
{
    level endon( "game_ended" );
    self endon( "disconnect" );
    self endon( "remove_spawn_protection" );
    thread _id_19C2();

    if ( var_0 )
        wait( level._id_E354 );

    thread _id_C515();
}

_id_19C2()
{
    level endon( "game_ended" );
    self endon( "death_or_disconnect" );
    self endon( "remove_spawn_protection" );
    self waittill( "spawned_player" );
    self._id_E352 = 1;
    _id_07C1::_id_D5D5( self, 1000, undefined, 0 );
}

_id_C515()
{
    self endon( "disconnect" );

    if ( isdefined( self ) )
        self._id_E352 = 0;

    _id_07C1::_id_943E( self );
    self notify( "remove_spawn_protection" );
}

_id_FBF5()
{
    if ( isdefined( level._id_FBF5 ) )
        self [[ level._id_FBF5 ]]();
    else
    {
        if ( _id_0A69::_id_6A43() == "br" )
        {
            var_0 = 0;

            foreach ( var_2 in level._id_EF86 )
                var_0 = var_0 + _id_0A7C::_id_6DAC( var_2, "aliveCount" );

            _func_01E4( "ui_allies_alive", 0 );
            _func_01E4( "ui_axis_alive", var_0 );
            return;
        }

        _func_01E4( "ui_allies_alive", _id_0A7C::_id_6DAC( "allies", "aliveCount" ) );
        _func_01E4( "ui_axis_alive", _id_0A7C::_id_6DAC( "axis", "aliveCount" ) );
    }
}

_id_FCC1()
{
    level endon( "game_ended" );
    self _meth_82F6( "ui_match_status_hint_text", 0 );
}

_id_59E7()
{
    wait 1;

    if ( isdefined( self ) )
        _id_07B9::_id_DC9F( "MP/FRIENDLY_FIRE_WILL_NOT" );
}

_id_DFBD()
{
    self endon( "death" );

    if ( !_id_07A8::_id_609F( "prematch_done" ) )
    {
        thread _id_0A77::_id_F8CD( "MP_INGAME_ONLY/PRACTICE_ROUND", 5 );
        wait 6;
        _id_07A8::_id_60A3( "prematch_done" );
        thread _id_0A77::_id_F8CD( "MP_INGAME_ONLY/SNOWBALL_FIGHT", 5 );
    }
    else
        thread _id_0A77::_id_F8CD( "MP_INGAME_ONLY/SNOWBALL_FIGHT", 5 );
}
