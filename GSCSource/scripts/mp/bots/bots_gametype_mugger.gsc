// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    level._id_28CD = 200;
    _id_D78A();
}

_id_D78A()
{
    level._id_2777["gametype_think"] = ::_id_283B;
    level._id_2777["gametype_loadout_modify"] = ::_id_283A;
}

_id_283B()
{
    self notify( "bot_mugger_think" );
    self endon( "bot_mugger_think" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );
    self._id_8F1E = ( 0, 0, 0 );
    self._id_ED36 = undefined;
    self._id_75DF = 0;
    self._id_7909 = 0;
    self._id_4557 = self _meth_802F( "meleeChargeDist" );
    childthread _id_ED45();

    if ( self _meth_802F( "strategyLevel" ) > 0 )
        childthread _id_ED3C();

    if ( self _meth_802F( "strategyLevel" ) > 0 )
        childthread _id_53E3();

    for (;;)
    {
        if ( self _meth_802F( "strategyLevel" ) > 1 )
        {
            if ( isdefined( self._id_ED6D ) && level._id_A2AE <= self._id_ED6D )
            {
                if ( !self._id_7909 )
                {
                    var_0 = _func_00B4( self._id_02EA, 1000, 0, 500, "node_hide" );
                    var_1 = self _meth_8048( var_0, 3, "node_hide" );

                    if ( isdefined( var_1 ) )
                    {
                        self _meth_8058( var_1, "critical" );
                        self._id_7909 = 1;
                    }
                }
            }
            else if ( self._id_7909 )
            {
                self _meth_802A();
                self._id_7909 = 0;
            }
        }

        if ( !self._id_7909 )
        {
            if ( !isdefined( self._id_ED36 ) && !self._id_75DF )
                self [[ self._id_B012 ]]();
        }

        wait 0.05;
    }
}

_id_53E3()
{
    for (;;)
    {
        if ( self _meth_802F( "strategyLevel" ) < 2 )
            wait 0.5;
        else
            wait 0.2;

        if ( isdefined( self._id_017D ) && _func_0117( self._id_017D ) && isdefined( self._id_017D._id_ED6D ) && self._id_017D._id_ED6D >= 3 && self _meth_8027( self._id_017D ) && distance( self._id_02EA, self._id_017D._id_02EA ) <= 500 )
        {
            self _meth_8052( "meleeChargeDist", 500 );
            self _meth_8053( "prefer_melee", 1 );
            self _meth_8053( "throw_knife_melee", level._id_A2D7 > 0 );
            continue;
        }

        self _meth_8052( "meleeChargeDist", self._id_4557 );
        self _meth_8053( "prefer_melee", 0 );
        self _meth_8053( "throw_knife_melee", 0 );
    }
}

_id_ED3C()
{
    for (;;)
    {
        level waittill( "mugger_tag_pile", var_0 );

        if ( self._id_01FF <= 0 )
            continue;

        if ( self._id_7909 )
            continue;

        if ( !isdefined( self._id_8F53 ) || gettime() - self._id_8F53 > 7500 )
        {
            self._id_8F53 = undefined;
            self._id_8F52 = undefined;
            self._id_75DF = 0;
        }

        if ( !isdefined( self._id_8F52 ) || distancesquared( self._id_02EA, self._id_8F52 ) > distancesquared( self._id_02EA, var_0 ) )
        {
            self._id_8F53 = gettime();
            self._id_8F52 = var_0;
        }
    }
}

_id_2768()
{
    var_0 = self _meth_815E();
    var_1 = undefined;

    if ( isdefined( var_0 ) )
    {
        var_2 = 1000000;
        var_3 = _id_077B::_id_1B72( level._id_4CC7, level._id_A2B3 );

        foreach ( var_5 in var_3 )
        {
            if ( var_5 _id_07AD::_id_3166( self._id_045B ) )
            {
                var_6 = distancesquared( self._id_02EA, var_5._id_411F );

                if ( !isdefined( var_1 ) || var_6 < var_2 )
                {
                    if ( self _meth_802F( "strategyLevel" ) > 0 && var_6 < 122500 || var_6 < 1000000 && scripts\mp\bots\bots_gametype_conf::_id_27EA( var_5, var_0, self _meth_8031() ) )
                    {
                        var_2 = var_6;
                        var_1 = var_5;
                    }
                }
            }
        }
    }

    return var_1;
}

_id_2771( var_0, var_1 )
{
    var_2 = [];

    if ( isdefined( var_0 ) )
    {
        var_3 = _id_077B::_id_1B72( level._id_4CC7, level._id_A2B3 );

        foreach ( var_5 in var_3 )
        {
            if ( var_5 _id_07AD::_id_3166( self._id_045B ) )
            {
                if ( _func_0117( self ) || distancesquared( self._id_02EA, var_5._id_411F ) < 1000000 )
                {
                    if ( scripts\mp\bots\bots_gametype_conf::_id_27EA( var_5, var_0, var_1 ) )
                    {
                        var_6 = _func_020F();
                        var_6._id_02EA = var_5._id_411F;
                        var_6._id_0400 = var_5;
                        var_2[var_2.size] = var_6;
                    }
                }
            }
        }
    }

    return var_2;
}

_id_ED45()
{
    wait( _func_01B7( 0, 0.5 ) );

    for (;;)
    {
        if ( self _meth_802F( "strategyLevel" ) == 0 )
            wait 3.0;
        else if ( self _meth_802F( "strategyLevel" ) == 1 )
            wait 1.5;
        else
            wait 0.5;

        if ( self._id_01FF <= 0 )
            continue;

        if ( self._id_7909 )
            continue;

        if ( isdefined( self._id_017D ) && _func_0117( self._id_017D ) && self _meth_8027( self._id_017D ) )
            continue;

        var_0 = _id_2768();

        if ( isdefined( var_0 ) )
        {
            _id_A2D0( var_0 );
            continue;
        }

        if ( !self._id_75DF )
        {
            if ( isdefined( self._id_8F52 ) && isdefined( self._id_8F53 ) && gettime() - self._id_8F53 <= 7500 )
                thread _id_A2B7( self._id_8F52 );
        }
    }
}

_id_A2B7( var_0 )
{
    self endon( "disconnect" );
    level endon( "game_ended" );
    self._id_75DF = 1;
    var_1 = _func_020F();
    var_1._id_CD66 = "objective";
    var_1._id_A895 = level._id_28CD;
    _id_09D0::_id_283C( "kill_tag_pile", var_0, 25, var_1 );
    var_2 = _id_077B::waittill_any_return( "death", "tag_spotted" );
    self _meth_802A();
    self._id_75DF = 0;
    _id_09D0::_id_26C9( "kill_tag_pile" );
}

_id_A2D0( var_0 )
{
    self endon( "disconnect" );
    level endon( "game_ended" );
    self._id_ED36 = var_0;
    self notify( "tag_spotted" );
    childthread _id_A67B( var_0, "tag_picked_up" );
    _id_09D0::_id_26C9( "kill_tag" );
    var_1 = var_0._id_411F;

    if ( _id_09D1::_id_28F0( self._id_8F1E, var_0._id_411F ) )
    {
        var_2 = var_0._id_A3E5;

        if ( isdefined( var_2 ) )
        {
            var_3 = var_2._id_02EA - var_1;
            var_1 = var_1 + _func_025A( var_3 ) * _func_0130( var_3 ) * 0.5;
        }
    }

    self._id_8F1E = var_0._id_411F;
    var_4 = _func_020F();
    var_4._id_CD66 = "objective";
    var_4._id_A895 = level._id_28CD;
    _id_09D0::_id_283C( "kill_tag", var_1, 25, var_4 );
    thread _id_A67A( "tag_aborted" );
    var_5 = _id_077B::waittill_any_return( "death", "tag_picked_up" );
    self notify( "tag_watch_stop" );
    self._id_ED36 = undefined;
    self _meth_802A();
    _id_09D0::_id_26C9( "kill_tag" );
}

_id_A67A( var_0 )
{
    self endon( "disconnect" );
    level endon( "game_ended" );
    self endon( "tag_watch_stop" );

    while ( _id_09D0::_id_27C7( "kill_tag" ) )
        wait 0.05;

    self notify( var_0 );
}

_id_A67B( var_0, var_1 )
{
    self endon( "disconnect" );
    level endon( "game_ended" );
    self endon( "tag_watch_stop" );

    while ( var_0 _id_07AD::_id_3166( self._id_045B ) )
        wait 0.05;

    self notify( var_1 );
}

_id_283A( var_0 )
{
    var_1 = 0;
    var_2 = self _meth_802E();

    if ( var_2 == "recruit" )
        var_1 = 0.1;
    else if ( var_2 == "regular" )
        var_1 = 0.25;
    else if ( var_2 == "hardened" )
        var_1 = 0.6;
    else if ( var_2 == "veteran" )
        var_1 = 0.9;

    var_3 = var_0["loadoutEquipment"] == "s4_throwing_knife_mp";

    if ( !var_3 )
    {
        if ( var_1 >= _func_01B6( 1 ) )
        {
            var_0["loadoutEquipment"] = "s4_throwing_knife_mp";
            var_3 = 1;
        }
    }

    if ( var_1 >= _func_01B6( 1 ) )
    {
        if ( var_0["loadoutOffhand"] != "s4_stun_gbr_n69_mp" )
            var_0["loadoutOffhand"] = "s4_stun_gbr_n69_mp";
    }

    if ( var_1 >= _func_01B6( 1 ) )
    {
        if ( var_0["loadoutPrimaryAttachment"] != "tactical" && var_0["loadoutPrimaryAttachment2"] != "tactical" )
        {
            var_4 = _id_09CD::_id_28EC( var_0["loadoutPrimary"], var_0["loadoutPrimaryAttachment"], "tactical" );

            if ( var_4 )
                var_0["loadoutPrimaryAttachment2"] = "tactical";
            else
            {
                var_4 = _id_09CD::_id_28EC( var_0["loadoutPrimary"], "tactical", var_0["loadoutPrimaryAttachment2"] );

                if ( var_4 )
                    var_0["loadoutPrimaryAttachment"] = "tactical";
            }
        }
    }

    if ( var_1 >= _func_01B6( 1 ) )
    {
        if ( var_0["loadoutSecondaryAttachment"] != "tactical" && var_0["loadoutSecondaryAttachment2"] != "tactical" )
        {
            var_4 = _id_09CD::_id_28EC( var_0["loadoutSecondary"], var_0["loadoutSecondaryAttachment"], "tactical" );

            if ( var_4 )
                var_0["loadoutSecondaryAttachment2"] = "tactical";
            else
            {
                var_4 = _id_09CD::_id_28EC( var_0["loadoutSecondary"], "tactical", var_0["loadoutSecondaryAttachment2"] );

                if ( var_4 )
                    var_0["loadoutSecondaryAttachment"] = "tactical";
            }
        }
    }

    var_5 = [];
    var_6 = [];
    var_7 = [];
    var_8 = [];

    if ( var_3 )
        var_8[var_8.size] = "specialty_extra_deadly";

    var_8[var_8.size] = "specialty_lightweight";
    var_8[var_8.size] = "specialty_marathon";
    var_8[var_8.size] = "specialty_fastsprintrecovery";
    var_8[var_8.size] = "specialty_stun_resistance";

    for ( var_9 = 1; var_9 < 9; var_9++ )
    {
        if ( isdefined( var_0["loadoutPerk" + var_9] ) )
        {
            if ( var_0["loadoutPerk" + var_9] != "none" )
            {
                var_5[var_5.size] = var_0["loadoutPerk" + var_9];
                var_6[var_6.size] = var_9;
                continue;
            }

            var_7[var_7.size] = var_9;
        }
    }

    foreach ( var_11 in var_8 )
    {
        if ( var_1 >= _func_01B6( 1 ) )
        {
            if ( !_id_077B::_id_1B78( var_5, var_11 ) )
            {
                var_12 = -1;

                if ( var_7.size )
                {
                    var_12 = var_7[0];
                    var_7 = _id_077B::_id_1B96( var_7, var_12 );
                }
                else if ( var_6.size )
                {
                    var_12 = _id_077B::_id_BFC7( var_6 );
                    var_6 = _id_077B::_id_1B96( var_6, var_12 );
                }

                if ( var_12 != -1 )
                    var_0["loadoutPerk" + var_12] = var_11;
            }
        }
    }

    return var_0;
}
