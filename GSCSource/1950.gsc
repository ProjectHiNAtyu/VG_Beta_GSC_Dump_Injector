// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{

}

_id_CDB1()
{

}

#using_animtree("script_model");

_id_3F3B( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) || isdefined( var_0._id_B591 ) )
        return;

    var_0._id_1887 = var_1;

    if ( !isdefined( var_2 ) )
        var_2 = "viewhands_base_iw8";

    var_0._id_B591 = _func_0205( "script_model", var_0._id_02EA );
    var_0._id_B591 setmode( var_2 );
    var_0._id_B591 hide();
    var_0._id_B591._id_1887 = var_1;
    var_0._id_B591 _meth_841D( #animtree );
    var_0 playerlinktoblend( var_0._id_B591, "tag_player", 1, 0, 0, 0, 0, 0, 0 );
    var_0 _id_10A7C();
    _id_C428( var_0 );
}

_id_C428( var_0 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_0._id_B591 ) )
        return;

    var_0 _meth_8415();
    var_1 = var_0 _meth_812D( var_0._id_02EA );

    if ( isdefined( var_1 ) )
        var_0 _meth_835E( var_1 );
    else
        var_0 _meth_835E( var_0._id_02EA + ( 0, 0, 100 ) );

    var_0._id_B591 _meth_809A();
    var_0._id_B591 = undefined;
}

_id_10A7C( var_0 )
{
    _id_077B::_id_1087E( "remove_rig", "death_or_disconnect" );
}

_id_0F8E( var_0, var_1 )
{
    var_2 = getentarray( var_0, var_1 );

    foreach ( var_4 in var_2 )
    {
        var_5 = _func_020F();
        _id_0F8D( var_5, var_4 );
        var_5 _id_1CF6( level._id_EF86 );

        if ( !isdefined( level._id_485D[var_0] ) )
            level._id_485D[var_0] = [];

        level._id_485D[var_0][level._id_485D[var_0].size] = var_5;
        var_5 _id_BD2D( "init" );
    }
}

_id_0F8D( var_0, var_1 )
{
    if ( !isdefined( var_0._id_5506 ) )
        var_0._id_5506 = [];

    var_0 _id_C093( var_1 );
    var_0 _id_C08F( var_1 );
    var_0._id_5506[var_0._id_5506.size] = var_1;
    var_1._id_AE40 = var_0;

    if ( isdefined( var_1._id_0457 ) )
    {
        var_2 = getentarray( var_1._id_0457, "targetname" );

        if ( isdefined( var_2 ) && var_2.size > 0 )
        {
            foreach ( var_4 in var_2 )
                _id_0F8D( var_0, var_4 );
        }
    }
}

_id_C093( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0._id_00DE )
    {
        case "trigger_use_touch":
            self._id_FE14 = var_0;
            break;
        case "script_origin":
            var_1 = var_0._id_CD8C;

            if ( isdefined( var_1 ) )
            {
                switch ( var_1 )
                {
                    case "usePrompt_front":
                        if ( !isdefined( self._id_FE94 ) )
                            self._id_FE94 = [];

                        self._id_FE94["front"] = _id_D756( var_0._id_02EA );
                        self._id_FE94["front"]._id_CBC4 = "front";
                        break;
                    case "sceneNode_front":
                        if ( !isdefined( self._id_CBC6 ) )
                            self._id_CBC6 = [];

                        self._id_CBC6["front"] = var_0;
                        break;
                    case "usePrompt_back":
                        if ( !isdefined( self._id_FE94 ) )
                            self._id_FE94 = [];

                        self._id_FE94["back"] = _id_D756( var_0._id_02EA );
                        self._id_FE94["back"]._id_CBC4 = "back";
                        break;
                    case "sceneNode_back":
                        if ( !isdefined( self._id_CBC6 ) )
                            self._id_CBC6 = [];

                        self._id_CBC6["back"] = var_0;
                        break;
                }
            }

            break;
        case "scriptable":
            self._id_0383 = var_0;
            break;
    }
}

_id_C08F( var_0 )
{
    if ( !isdefined( var_0._id_0375 ) )
        return;

    var_1 = _func_021A( var_0._id_0375, "," );

    foreach ( var_3 in var_1 )
    {
        var_4 = _func_021A( var_3, "|" );

        if ( !isdefined( var_4 ) )
            return;

        if ( var_4.size < 2 )
            return;

        var_3 = var_4[0];

        if ( !isdefined( var_0._id_0E65 ) )
            var_0._id_0E65 = [];

        if ( !isdefined( var_0._id_0E65[var_3] ) )
            var_0._id_0E65[var_3] = [];

        for ( var_5 = 1; var_5 < var_4.size; var_5++ )
            var_0._id_0E65[var_3][var_0._id_0E65[var_3].size] = var_4[var_5];
    }
}

_id_10970( var_0, var_1 )
{
    level endon( "game_ended" );
    wait( var_1 );
    _id_BD2D( var_0 );
}

_id_10850( var_0 )
{
    level endon( "game_ended" );
    self waittill( var_0 );
    _id_BD2D( var_0 );
}

_id_BD2D( var_0 )
{
    if ( !isdefined( self._id_5506 ) )
        return;

    foreach ( var_2 in self._id_5506 )
    {
        if ( isdefined( var_2._id_0E65 ) && isdefined( var_2._id_0E65[var_0] ) )
        {
            foreach ( var_4 in var_2._id_0E65[var_0] )
                var_2 _id_0E63( var_4 );
        }
    }

    self._id_E744 = var_0;
}

_id_0E63( var_0 )
{
    switch ( var_0 )
    {
        case "show":
            self _meth_83C3();
            break;
        case "hide":
            self hide();
            break;
        case "solid":
            self _meth_83CE();
            break;
        case "notsolid":
            self _meth_824C();
            break;
        case "disconnectpaths":
            self _meth_80B4();
            break;
        case "connectpaths":
            self _meth_8092();
            break;
        case "bomb_explosion":
            var_1 = self._id_02EA;
            var_2 = self._id_0054;
            var_3 = _func_0207( level._id_0BA3["breach_explode"], var_1, anglestoforward( var_2 ) * -1.0, ( 0, 0, 1 ) );
            _func_024B( var_3 );
            _func_0190( var_1, 200, 100, 3 );
            playfxontag( "grenade_rumble", var_1 );
            earthquake( 0.5, 1.0, var_1, 1500 );
            self._id_AE40._id_B1B8 _meth_8373( "bomb", "destroy" );
            break;
    }
}

_id_D756( var_0 )
{
    var_1 = _id_07AD::_id_3FCE( var_0, "HINT_BUTTON", "hud_icon_c4_plant", &"MP/BREACH", undefined, undefined, undefined, 800, 120, 72, 120 );

    if ( !isdefined( level._id_2B4A ) )
        level._id_2B4A = [];

    level._id_2B4A[level._id_2B4A.size] = var_1;
    self._id_461D = 0;
    thread _id_FEE9( var_1 );
    return var_1;
}

_id_25F5( var_0, var_1 )
{
    var_2 = var_1._id_045B;
    self._id_461D = 0;

    if ( !isdefined( self._id_2B46 ) )
    {
        if ( !isdefined( level._id_2B46 ) )
            level._id_2B46 = 0;
        else
            level._id_2B46++;

        self._id_2B46 = level._id_2B46;
    }

    _id_25E4( var_2 );

    if ( !self._id_461D )
    {
        _id_BD2D( "destroyed" );
        var_3 = self._id_FE94[var_0]._id_02EA;

        if ( isdefined( self._id_0383 ) )
        {
            if ( var_0 == "front" )
                self._id_0383 _meth_8373( "base", "destroyFront" );
            else
                self._id_0383 _meth_8373( "base", "destroyBack" );
        }
        else
        {
            var_4 = self._id_FE94[var_0]._id_0054;
            var_5 = _func_0207( level._id_0BA3["breach_explode"], var_3, anglestoforward( var_4 ) * -1.0, ( 0, 0, 1 ) );
            _func_024B( var_5 );
            self._id_B1B8 _meth_8373( "bomb", "destroy" );
        }

        _func_0190( var_3, 200, 100, 3 );
        playfxontag( "grenade_rumble", var_3 );
        earthquake( 0.5, 1.0, var_3, 1500 );

        foreach ( var_7 in self._id_FE94 )
        {
            var_7 _meth_809A();
            level._id_2B4A = _id_077B::_id_1B96( level._id_2B4A, var_7 );
        }

        wait 0.1;

        if ( isdefined( var_1 ) )
            self._id_B1B8 _meth_8287( self._id_B1B8._id_02EA, 300, 120, 10, var_1, "MOD_EXPLOSIVE", "bomb_site_mp" );
        else
            self._id_B1B8 _meth_8287( self._id_B1B8._id_02EA, 300, 120, 10, undefined, "MOD_EXPLOSIVE", "bomb_site_mp" );

        if ( isdefined( level._id_7A7B ) )
            thread _id_B83D( self._id_B1B8._id_02EA );
    }

    self._id_B1B8 _meth_809A();
    self._id_B1B8 = undefined;
    self._id_B1BA = undefined;
    _func_01E4( "ui_ingame_timer_" + self._id_2B46, 0 );
    _func_01E4( "ui_ingame_timer_ent_" + self._id_2B46, undefined );

    if ( self._id_461D )
    {
        foreach ( var_7 in self._id_FE94 )
            var_7 _meth_832B( &"MP/BREACH" );

        _id_1CF6( level._id_EF86 );
        _id_BD2D( "init" );
    }
}

_id_B83D( var_0 )
{
    wait 1;

    if ( distance2d( level._id_7A7B[0]._id_02EA, var_0 ) < 500 )
        level._id_7A7B[0] _meth_827B( "dx_mpb_us3_hvt_up" );
}

_id_25E4( var_0 )
{
    self endon( "defused" );

    foreach ( var_2 in self._id_FE94 )
        var_2 _meth_832B( &"MP/BREACH_DEFUSE" );

    self._id_F25A = _func_0205( "script_model", self._id_B1B8._id_02EA );
    self._id_F25A makeunusable();
    _id_1CF6( _id_0A7C::_id_69E2( var_0 ) );
    var_4 = gettime();
    var_5 = int( var_4 + 5000 );
    _func_01E4( "ui_ingame_timer_" + self._id_2B46, var_5 );
    _func_01E4( "ui_ingame_timer_ent_" + self._id_2B46, self._id_F25A );
    var_6 = var_5 - var_4;

    while ( !self._id_461D && var_6 > 0 )
    {
        var_4 = gettime();
        var_6 = var_5 - var_4;

        if ( var_6 < 1500 )
        {
            if ( var_6 <= 250 )
                self._id_B1B8 _meth_827B( "breach_warning_beep_05" );
            else if ( var_6 < 500 )
                self._id_B1B8 _meth_827B( "breach_warning_beep_04" );
            else if ( var_6 < 1500 )
                self._id_B1B8 _meth_827B( "breach_warning_beep_03" );
            else
                self._id_B1B8 _meth_827B( "breach_warning_beep_02" );

            wait 0.25;
        }
        else if ( var_6 < 3500 )
        {
            self._id_B1B8 _meth_827B( "breach_warning_beep_02" );
            wait 0.5;
        }
        else
        {
            self._id_B1B8 _meth_827B( "breach_warning_beep_01" );
            wait 1.0;
        }

        if ( var_6 < 0 )
            break;
    }
}

_id_FEE9( var_0 )
{
    for (;;)
    {
        var_0 waittill( "trigger", var_1 );

        if ( !_id_077B::_id_1B78( self._id_839D, var_1._id_045B ) )
            continue;

        if ( var_1 _id_0A7F::_id_714C() )
            return 0;

        if ( var_1 _meth_822E() )
            return 0;

        if ( var_1 _id_0A74::_id_8AB5() )
            continue;

        if ( !isdefined( self._id_B1B8 ) )
        {
            _id_B1B4( var_0, var_1 );
            continue;
        }

        _id_461C( var_1 );
    }
}

_id_B1B4( var_0, var_1 )
{
    thread _id_10BD4( var_1 );
    var_1._id_94FE = var_1 _id_077B::_id_E20C();
    var_1 playerlinktoblend( var_1._id_94FE, "tag_origin", 1, 0, 0, 0, 0, 0 );
    var_1._id_94FE _meth_823B( self._id_CBC6[var_0._id_CBC4]._id_02EA, 0.25, 0.1, 0.1 );
    var_1._id_94FE rotateroll( self._id_CBC6[var_0._id_CBC4]._id_0054, 0.25, 0.1, 0.1 );
    var_1 _meth_8382( "stand" );

    if ( !var_1 _id_6F83() )
    {
        var_1 _meth_8415();
        var_1._id_94FE _meth_809A();
        var_1._id_94FE = undefined;
        return 0;
    }

    if ( istrue( self._id_313D ) )
        return 0;

    var_1 _meth_8415();
    var_1._id_94FE _meth_809A();
    var_1._id_94FE = undefined;
    var_1 _meth_835E( self._id_CBC6[var_0._id_CBC4]._id_02EA );
    var_1 _meth_8362( self._id_CBC6[var_0._id_CBC4]._id_0054 );

    foreach ( var_3 in self._id_FE94 )
        var_3 hide();

    level thread _id_0789::_id_F756( var_1, "c4_plant" );
    var_5 = _id_077B::_id_F07F( var_1._id_045B == "allies", "usp1", "afp1" );

    if ( level._id_9AA7 == "mp_hackney_yard" )
        var_5 = _id_077B::_id_F07F( var_1._id_045B == "allies", "ukp1", "abp1" );

    var_1 _meth_8286( "dx_mpp_" + var_5 + "_breach_plant", "cop_breach_plant", 2 );
    thread _id_3F3B( var_1, "planter" );
    var_1 thread _id_0781::_id_17D5( var_1, var_1._id_B591, "plant" );
    var_6 = _func_0205( "script_model", self._id_CBC6[var_0._id_CBC4]._id_02EA );
    var_6 setmode( "offhand_wm_c4" );
    var_6._id_1887 = "c4";
    var_6 _meth_841D( #animtree );
    self._id_B1B8 = var_6;
    self._id_B1BA = var_0._id_CBC4;
    self._id_CBC6[var_0._id_CBC4] thread _id_069D::_id_181D( var_6, "plant" );
    var_7 = _func_0079( level._id_CC24["planter"]["plant"] );
    var_8 = 0.5;
    wait( var_7 - var_8 );

    if ( istrue( self._id_313D ) )
        return 0;

    thread _id_25F5( var_0._id_CBC4, var_1 );
    _id_6F6A( var_1 );
    wait( var_8 - 0.1 );
    var_1 thread _id_EDC0();
    _id_C428( var_1 );
    _id_BD2D( "onuse" );
    self notify( "breach_complete" );
    return 1;
}

_id_10BD4( var_0 )
{
    self endon( "breach_complete" );
    self._id_313D = 0;

    for (;;)
    {
        if ( !isdefined( var_0 ) || !_id_0A74::_id_89D3( var_0 ) )
        {
            foreach ( var_2 in self._id_FE94 )
                var_2 _meth_83C3();

            if ( isdefined( self._id_B1B8 ) )
            {
                self._id_B1B8 _meth_809A();
                self._id_B1B8 = undefined;
                self._id_B1BA = undefined;
            }

            self._id_313D = 1;
            break;
        }

        waitframe();
    }
}

_id_15A1( var_0 )
{
    if ( isdefined( level._id_2B4A ) )
    {
        foreach ( var_2 in level._id_2B4A )
            var_2 _meth_80E0( var_0 );
    }
}

_id_4AE6( var_0 )
{
    if ( isdefined( level._id_2B4A ) )
    {
        foreach ( var_2 in level._id_2B4A )
            var_2 disableoffhandweapons( var_0 );
    }
}

_id_461C( var_0 )
{
    self._id_461D = 1;
    self notify( "defused" );
    _id_6F74( var_0 );
}

_id_AB56( var_0 )
{
    foreach ( var_2 in level._id_485D )
    {
        foreach ( var_4 in var_2 )
            var_4 _id_19B1( var_0 );
    }
}

_id_1CF6( var_0 )
{
    self._id_839D = var_0;

    foreach ( var_2 in level._id_B758 )
        _id_19B1( var_2 );
}

_id_19B1( var_0 )
{
    if ( self._id_E744 == "destroyed" )
        return;

    if ( !isdefined( self._id_FE94 ) )
        return;

    if ( _id_077B::_id_1B78( self._id_839D, var_0._id_045B ) )
    {
        if ( isdefined( self._id_B1B8 ) )
        {
            self._id_F25A _meth_847B( var_0 );

            foreach ( var_3, var_2 in self._id_FE94 )
            {
                if ( var_3 == self._id_B1BA )
                {
                    var_2 setuserange( "duration_medium" );
                    var_2 _meth_80E0( var_0 );
                    var_2 _meth_83CA( var_0 );
                    continue;
                }

                var_2 disableoffhandweapons( var_0 );
                var_2 _meth_847B( var_0 );
            }

            return;
        }

        foreach ( var_3, var_2 in self._id_FE94 )
        {
            var_2 setuserange( "duration_short" );
            var_2 _meth_80E0( var_0 );
            var_2 _meth_83CA( var_0 );
        }

        return;
    }
    else
    {
        if ( isdefined( self._id_B1B8 ) )
            self._id_F25A _meth_83CA( var_0 );

        foreach ( var_2 in self._id_FE94 )
        {
            var_2 disableoffhandweapons( var_0 );
            var_2 _meth_847B( var_0 );
        }
    }
}

_id_6F6A( var_0 )
{
    var_1 = "breach";
    var_2 = _id_07E1::_id_6CEE( var_1 );
    var_0 thread _id_07E1::_id_6FC0( var_1, var_2 );
    var_0 thread _id_07E1::_id_CBF3( var_1 );
}

_id_6F74( var_0 )
{
    var_1 = "breach_defuse";
    var_2 = _id_07E1::_id_6CEE( var_1 );
    var_0 thread _id_07E1::_id_6FC0( var_1, var_2 );
    var_0 thread _id_07E1::_id_CBF3( var_1 );
}

_id_6F83()
{
    self endon( "death_or_disconnect" );
    var_0 = _func_034C( "iw8_gunless" );
    _id_099A::_id_0BEB( var_0, undefined, undefined, 1 );
    var_1 = _id_099A::_id_4D21( var_0, 0 );

    if ( var_1 )
    {
        self._id_72A7 = var_0;
        _id_06BB::_id_156B( 0 );
        _id_06BB::allow_equipment( 0 );
        _id_06BB::_id_152C( 0 );
    }
    else
    {
        _id_099A::_id_0D6A( var_0 );
        _id_099A::_id_5EB7();
    }

    return var_1;
}

_id_EDC0()
{
    self endon( "death_or_disconnect" );

    if ( !isdefined( self._id_72A7 ) || !self hasweapon( self._id_72A7 ) )
        return;

    self._id_EDDF = 1;
    _id_06BB::_id_156B( 1 );

    while ( self hasweapon( self._id_72A7 ) )
    {
        if ( !_id_099A::_id_87C6( self._id_72A7 ) )
            _id_099A::_id_0DE3( self._id_72A7 );
        else
        {
            _id_099A::_id_0D6A( self._id_72A7 );
            _id_099A::_id_5EB7();
        }

        waitframe();
    }

    self._id_EDDF = 0;
    self._id_72A7 = undefined;
    _id_06BB::allow_equipment( 1 );
    _id_06BB::_id_152C( 1 );
}

_id_C893()
{
    waitframe();
    _id_06B5::_id_C893();
    _id_077B::_id_1BBA( level._id_C897._id_32D2, ::_id_C894 );
}

_id_C894()
{
    level endon( "game_ended" );

    for (;;)
    {
        foreach ( var_1 in level._id_C897._id_32D2 )
        {
            if ( !isdefined( var_1 ) )
                continue;

            var_2 = [];

            foreach ( var_4 in level._id_B758 )
            {
                if ( !_id_0A74::_id_89D3( var_4 ) )
                    continue;

                var_5 = var_4 getentitynumber();

                if ( isdefined( var_1._id_B758[var_5] ) )
                    continue;

                if ( var_4 _meth_81CD() )
                    continue;

                var_6 = var_4 _meth_815A();

                if ( !isdefined( var_6 ) || var_6 != var_1 )
                    continue;

                var_7 = var_4._id_02EA - var_1._id_F346;

                if ( _func_0257( var_7, var_1._id_0496 ) < 0 )
                    continue;

                var_8 = _func_0257( var_7, var_1._id_01C1 );
                var_9 = abs( var_8 );
                var_10 = var_9 / var_1._id_739E;

                if ( var_10 > 1 )
                    continue;

                var_11 = _func_0257( var_7, var_1._id_034F );
                var_12 = abs( var_11 );
                var_13 = var_12 / var_1._id_73A2;

                if ( var_13 > 1 )
                    continue;

                var_5 = var_4 getentitynumber();
                var_2[var_5] = var_4;
                var_1 _id_C88F( var_4, var_10, var_13, var_8, var_11 );
            }

            foreach ( var_5, var_4 in var_1._id_B758 )
            {
                var_16 = gettime() - var_1._id_F394[var_5];

                if ( !isdefined( var_4 ) || !_id_0A74::_id_89D3( var_4 ) )
                {
                    var_1 _id_C88E( var_5, undefined, 0 );
                    continue;
                }

                if ( var_4 _meth_81CD() )
                {
                    var_1 _id_C88E( var_5, var_16, 1 );
                    continue;
                }

                var_6 = var_4 _meth_815A();

                if ( !isdefined( var_6 ) || var_6 != var_1 )
                {
                    var_1 _id_C88E( var_5, var_16, 1 );
                    continue;
                }

                var_7 = var_4._id_02EA - var_1._id_F346;

                if ( _func_0257( var_7, var_1._id_0496 ) < 0 )
                {
                    var_1 _id_C88E( var_5, var_16, 1 );
                    continue;
                }

                var_8 = _func_0257( var_7, var_1._id_01C1 );
                var_9 = abs( var_8 );
                var_10 = var_9 / var_1._id_739E;

                if ( var_10 > 1 )
                {
                    var_1 _id_C88E( var_5, var_16, 1 );
                    continue;
                }

                var_11 = _func_0257( var_7, var_1._id_034F );
                var_12 = abs( var_11 );
                var_13 = var_12 / var_1._id_73A2;

                if ( var_13 > 1 )
                {
                    var_1 _id_C88E( var_5, var_16, 1 );
                    continue;
                }

                var_1._id_F394[var_5] = gettime();
            }

            foreach ( var_5, var_4 in var_2 )
                var_1 _id_C88C( var_4 );
        }

        waitframe();
    }
}

_id_C88C( var_0 )
{
    var_1 = var_0 getentitynumber();
    self._id_B758[var_1] = var_0;
    self._id_F394[var_1] = gettime();
}

_id_C88E( var_0, var_1, var_2 )
{
    if ( var_2 )
    {
        if ( isdefined( var_1 ) && var_1 >= 200 )
        {
            self._id_B758[var_0] = undefined;
            self._id_F394[var_0] = undefined;
            self._id_C8B2[var_0] = undefined;
            self._id_C8B1[var_0] = undefined;
        }
    }
    else
    {
        self._id_B758[var_0] = undefined;
        self._id_F394[var_0] = undefined;
        self._id_C8B2[var_0] = undefined;
        self._id_C8B1[var_0] = undefined;
    }
}

_id_C88F( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_1 > 0.3 && var_2 > 0 )
    {
        var_5 = _id_077B::_id_F07F( var_3 >= 0, "front", "back" );
        var_6 = _id_077B::_id_F07F( var_4 >= 0, "right", "left" );
        self _meth_8373( "Anim_PlayerStandRock", var_5 + "_" + var_6, 0 );
        var_7 = var_0 getentitynumber();
        self._id_C8B2[var_7] = gettime();
        self._id_C8B1[var_7] = var_5 + var_6;
    }
}

predestroy_walls()
{
    var_0 = _func_03BB( "destructiblewall", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2 _meth_8677( "main_part" ) )
            var_2 _meth_8373( "main_part", "no_more_collmap" );
    }
}
