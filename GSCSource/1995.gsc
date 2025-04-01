// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_820A()
{
    _id_C615();
}

_id_C615()
{
    self._id_9F5E = undefined;
    self._id_9F5F = undefined;
    self._id_9F5C = undefined;
    self._id_9F5D = undefined;
}

_id_C613()
{
    if ( !isdefined( self._id_9F62 ) )
        return;

    self._id_9F62 = undefined;
    self notify( "stop_javelin_locking_feedback" );
    self notify( "stop_javelin_locked_feedback" );
    self notify( "missileLauncher_lock_lost" );
    self _meth_8458();
    self _meth_83EE( "maaws_reticle_tracking" );
    self _meth_83EE( "maaws_reticle_locked" );

    if ( isdefined( self._id_9F5F ) )
        _id_09A2::_id_C4D3( self._id_9F5F, self );

    _id_C615();
}

_id_C614()
{
    self endon( "disconnect" );
    self notify( "ResetMissileLauncherLockingOnDeath" );
    self endon( "ResetMissileLauncherLockingOnDeath" );
    self endon( "end_launcher" );

    for (;;)
    {
        self waittill( "death" );
        _id_C613();
    }
}

_id_982B()
{
    self endon( "death_or_disconnect" );
    self endon( "stop_javelin_locking_feedback" );

    for (;;)
    {
        if ( isdefined( level._id_361F ) && isdefined( level._id_361F._id_7297 ) && isdefined( self._id_9F5F ) && self._id_9F5F == level._id_361F._id_7297 )
            level._id_7300 _meth_8275( "maaws_incoming_lp" );

        if ( isdefined( level._id_7300 ) && isdefined( self._id_9F5F ) && self._id_9F5F == level._id_72AB._id_B17B )
            level._id_7300 _meth_8275( "maaws_incoming_lp" );

        self _meth_8275( "maaws_reticle_tracking" );
        self _meth_8278( "ac130_25mm_fire" );
        wait 0.6;
    }
}

_id_982A()
{
    self endon( "death_or_disconnect" );
    self endon( "stop_javelin_locked_feedback" );
    self _meth_8275( "maaws_reticle_locked" );

    for (;;)
    {
        if ( isdefined( level._id_361F ) && isdefined( level._id_361F._id_7297 ) && isdefined( self._id_9F5F ) && self._id_9F5F == level._id_361F._id_7297 )
            level._id_7300 _meth_8275( "maaws_incoming_lp" );

        if ( isdefined( level._id_7300 ) && isdefined( self._id_9F5F ) && self._id_9F5F == level._id_72AB._id_B17B )
            level._id_7300 _meth_8275( "maaws_incoming_lp" );

        self _meth_8278( "ac130_25mm_fire" );
        wait 0.25;
    }
}

_id_DFEB( var_0 )
{
    var_1 = 500;

    if ( var_0 _id_E863() )
    {
        self._id_9F5D = 0;
        return 1;
    }

    if ( self._id_9F5D == 0 )
        self._id_9F5D = gettime();

    var_2 = gettime() - self._id_9F5D;

    if ( var_2 >= var_1 )
    {
        _id_C613();
        return 0;
    }

    return 1;
}

_id_9F60()
{
    var_0 = getdvarint( "scr_maxMissileLockOnRange", 625000000 );
    var_1 = 0;

    if ( self player_recoilscaleon() < 0.95 )
    {
        _id_C613();
        return;
    }

    self._id_9F62 = 1;

    if ( !isdefined( self._id_9F5E ) )
        self._id_9F5E = 0;

    if ( self._id_9F5E == 0 )
    {
        var_2 = scripts\mp\weapons::_id_96E7( 0 );

        if ( var_2.size == 0 )
            return;

        var_2 = _func_01FF( var_2, self._id_02EA );
        var_3 = undefined;
        var_4 = 0;

        foreach ( var_6 in var_2 )
        {
            if ( !isdefined( var_6 ) )
                continue;

            var_3 = _id_E85E( self, var_6 );
            var_3 _id_E861();
            var_3 _id_E862();
            var_3 _id_E860();

            if ( var_3 _id_E864() )
            {
                if ( distancesquared( var_6._id_02EA, self._id_02EA ) > var_0 )
                    break;

                var_4 = 1;
                break;
            }
        }

        if ( !var_4 )
            return;

        var_3 _id_E85F();

        if ( !var_3 _id_E863() )
            return;

        self._id_9F5F = var_3._id_0457;
        self._id_9F5C = gettime();
        self._id_9F5E = 1;
        self._id_9F5D = 0;

        if ( isdefined( self._id_9F5F ) )
            _id_09A2::_id_10BC( self._id_9F5F, self );

        thread _id_982B();
    }

    if ( self._id_9F5E == 1 )
    {
        if ( !isdefined( self._id_9F5F ) )
        {
            _id_C613();
            return;
        }

        if ( !var_1 && ( self._id_9F5F _id_09B4::_id_8ADC() && _id_09B4::_id_10122( self._id_9F5F, self ) ) )
        {
            _id_C613();
            return;
        }

        var_3 = _id_E85E( self, self._id_9F5F );
        var_3 _id_E861();
        var_3 _id_E862();
        var_3 _id_E860();

        if ( !var_3 _id_E864() )
        {
            _id_C613();
            return;
        }

        var_3 _id_E85F();

        if ( !_id_DFEB( var_3 ) )
            return;

        var_8 = gettime() - self._id_9F5C;

        if ( scripts\mp\tac_ops\hostage_utility::_id_0BF6( "specialty_fasterlockon" ) )
        {
            if ( var_8 < 250.0 )
                return;
        }
        else if ( var_8 < 500 )
            return;

        self notify( "stop_javelin_locking_feedback" );
        thread _id_982A();
        var_9 = undefined;
        _id_9F5B( var_3 );

        if ( isdefined( level._id_0F23 ) )
        {
            if ( _id_077B::_id_1B78( level._id_0F23, self._id_9F5F ) )
                thread _id_0789::_id_8DC3( self._id_9F5F._id_EA0F );
        }

        self._id_9F5E = 2;
    }

    if ( self._id_9F5E == 2 )
    {
        if ( !isdefined( self._id_9F5F ) )
        {
            _id_C613();
            return;
        }

        if ( !var_1 && ( self._id_9F5F _id_09B4::_id_8ADC() && _id_09B4::_id_10122( self._id_9F5F, self ) ) )
        {
            _id_C613();
            return;
        }

        var_3 = _id_E85E( self, self._id_9F5F );
        var_3 _id_E861();
        var_3 _id_E862();
        var_3 _id_E860();
        var_3 _id_E85F();

        if ( !_id_DFEB( var_3 ) )
            return;
        else
            _id_9F5B( var_3 );

        if ( !var_3 _id_E864() )
        {
            _id_C613();
            return;
        }
    }
}

_id_9F61()
{
    if ( !_func_0117( self ) )
        return;

    self endon( "death_or_disconnect" );
    self endon( "faux_spawn" );
    self endon( "end_launcher" );
    thread _id_C614();

    for (;;)
    {
        wait 0.05;
        _id_9F60();
    }
}

_id_9F5B( var_0 )
{
    var_1 = undefined;

    if ( isdefined( var_0._id_0457 ) && isdefined( var_0._id_0457._id_1031C ) && var_0._id_0457._id_1031C == "light_tank" )
        var_1 = ( 0, 0, 75 );
    else if ( isdefined( var_0._id_82AE ) )
    {
        var_1 = var_0._id_A96F[var_0._id_82AE];
        var_1 = ( var_1[1], -1 * var_1[0], var_1[2] );
    }
    else
        var_1 = ( 0, 0, 0 );

    self visionsetthermalforplayer( self._id_9F5F, var_1 );
}

_id_1093( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0;

    if ( isdefined( var_0._id_02F2 ) && !_id_0A6F::_id_8978( var_0 ) )
        var_1 = var_0._id_02F2;

    if ( !isdefined( var_1 ) || !_func_0117( var_1 ) )
        return;
}

_id_C4C3( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0;

    if ( !_id_0A6F::_id_8978( var_0 ) )
    {
        if ( !isdefined( var_0._id_02F2 ) )
            return;

        var_1 = var_0._id_02F2;
    }

    if ( !isdefined( var_1 ) || !_func_0117( var_1 ) )
        return;
}

_id_E85E( var_0, var_1 )
{
    var_2 = _func_020F();
    var_2._id_030F = var_0;
    var_2._id_0457 = var_1;
    var_2._id_A96F = [];
    var_2._id_AC82 = [];
    var_2._id_82C8 = [];
    var_2._id_82C9 = [];
    var_2._id_82AE = undefined;
    var_2._id_FE97 = 1;
    return var_2;
}

_id_E861()
{
    self._id_A96F = [];

    if ( _id_0A67::_id_8794( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, -50 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_8A66( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, -100 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_886F( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 50 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_879A( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 40 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_8A9D( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 42 );
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 5 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_89B8( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 10 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_8A00( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 15 );
        self._id_FE97 = 0;
    }
    else if ( _id_0A67::_id_89B9( self._id_0457 ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, -30 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "light_tank" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 72 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "apc_russian" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 60 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "cargo_truck" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 60 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "large_transport" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 65 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "medium_transport" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 60 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && ( self._id_0457._id_1031C == "pickup_truck" || self._id_0457._id_1031C == "technical" ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 55 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "atv" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 30 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && ( self._id_0457._id_1031C == "jeep" || self._id_0457._id_1031C == "tac_rover" ) )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 50 );
        self._id_FE97 = 0;
    }
    else if ( isdefined( self._id_0457._id_1031C ) && self._id_0457._id_1031C == "loot_chopper" )
    {
        self._id_A96F[self._id_A96F.size] = ( 0, 0, -100 );
        self._id_FE97 = 0;
    }
    else
        self._id_A96F[self._id_A96F.size] = ( 0, 0, 0 );
}

_id_E862()
{
    var_0 = self._id_0457._id_02EA;
    var_1 = self._id_0457._id_0054;
    var_2 = anglestoforward( var_1 );
    var_3 = anglestoright( var_1 );
    var_4 = anglestoup( var_1 );

    for ( var_5 = 0; var_5 < self._id_A96F.size; var_5++ )
    {
        var_6 = self._id_A96F[var_5];
        self._id_AC82[var_5] = var_0 + var_3 * var_6[0] + var_2 * var_6[1] + var_4 * var_6[2];
    }
}

_id_E860()
{
    foreach ( var_5, var_1 in self._id_AC82 )
    {
        for ( var_2 = 0; var_2 < self._id_AC82.size; var_2++ )
        {
            var_3 = self._id_030F _meth_845F( self._id_AC82[var_2], 65 );

            if ( isdefined( var_3 ) )
            {
                var_4 = length( var_3 );

                if ( var_4 <= 2916 )
                {
                    self._id_82C9[self._id_82C9.size] = var_2;
                    self._id_82C8[var_2] = var_4;
                }
            }
        }
    }

    if ( self._id_82C9.size > 1 )
    {
        for ( var_2 = 0; var_2 < self._id_82C9.size; var_2++ )
        {
            for ( var_6 = var_2 + 1; var_6 < self._id_82C9.size; var_6++ )
            {
                var_7 = self._id_82C9[var_2];
                var_8 = self._id_82C9[var_6];
                var_9 = self._id_82C8[var_7];
                var_10 = self._id_82C8[var_8];

                if ( var_10 < var_9 )
                {
                    var_11 = var_7;
                    self._id_82C9[var_2] = var_8;
                    self._id_82C9[var_6] = var_11;
                }
            }
        }
    }
}

_id_E85F()
{
    var_0 = self._id_030F geteye();
    var_1 = _func_02C4( [ "physicscontents_glass", "physicscontents_water", "physicscontents_vehicle", "physicscontents_item", "physicscontents_playernosight" ] );
    var_2 = [ self._id_030F, self._id_0457 ];
    var_3 = self._id_0457 _meth_8150();

    if ( isdefined( var_3 ) && var_3.size > 0 )
        var_2 = _id_077B::_id_1B72( var_2, var_3 );

    if ( !self._id_FE97 )
    {
        for ( var_4 = 0; var_4 < self._id_82C9.size; var_4++ )
        {
            var_5 = self._id_82C9[var_4];
            var_6 = self._id_AC82[var_5];
            var_7 = _func_02BC( var_0, var_6, var_1, var_2, 0, "physicsquery_closest", 1 );

            if ( !isdefined( var_7 ) || var_7.size == 0 )
            {
                self._id_82AE = var_5;
                return;
            }
        }
    }
    else
    {
        var_8 = self._id_0457 _meth_8174( 0, 0, 1 );
        var_9 = _id_077A::_id_C042( var_0, var_8, var_2, var_1, 0 );

        if ( var_9["fraction"] == 1 )
        {
            self._id_82AE = 0;
            return;
        }

        var_18 = self._id_0457 _meth_8174( 1, 0, 0 );
        var_9 = _id_077A::_id_C042( var_0, var_18, var_2, var_1, 0 );

        if ( var_9["fraction"] == 1 )
        {
            self._id_82AE = 0;
            return;
        }

        var_19 = self._id_0457 _meth_8174( -1, 0, 0 );
        var_9 = _id_077A::_id_C042( var_0, var_19, var_2, var_1, 0 );

        if ( var_9["fraction"] == 1 )
        {
            self._id_82AE = 0;
            return;
        }
    }
}

_id_E864()
{
    return self._id_82C9.size > 0;
}

_id_E863()
{
    return isdefined( self._id_82AE );
}
