// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_37F6()
{
    level._id_0BA3["claymore_explode"] = _func_0139( "vfx/iw8/weap/_explo/claymore/vfx_explo_claymore.vfx" );

    if ( istrue( game["isLaunchChunk"] ) )
        return;

    var_0 = _id_09B9::_id_10141( "equip_claymore", 1 );
    var_0._id_F60F = ::class;
}

_id_37FF( var_0 )
{
    self endon( "death_or_disconnect" );
    var_0 endon( "death" );

    if ( scripts\mp\tac_ops\hostage_utility::_id_0BF6( "specialty_rugged_eqp" ) )
        var_0._id_758C = 1;

    var_0._id_57AE = 1;
    thread scripts\mp\weapons::_id_A0F3( self, var_0 );
    var_1 = _func_020F();
    var_1._id_F1CD = 100;
    var_1._id_F1CE = -50;
    var_1._id_32E8 = 3;
    var_1._id_32EE = 0.5;
    var_1._id_32E6 = 1;
    var_1._id_B1C0 = 0.5;
    var_1._id_B1BF = 15;
    var_1._id_B1C1 = 12;
    var_1._id_B1BE = 20;
    var_1._id_B1C2 = 45;
    var_1._id_B1C3 = 0.342;
    var_1._id_B1C5 = 3;
    var_2 = _id_0A68::_id_B185( var_0, var_1 );

    if ( !istrue( var_2 ) )
    {
        _id_07B9::_id_DC9F( "EQUIPMENT/PLANT_FAILED" );
        thread scripts\engine\trace::_id_7DD2( "equip_claymore", 1 );
        var_0 _meth_809A();
    }
    else
    {
        var_3 = var_0 _meth_8151();

        if ( isdefined( var_3 ) )
            var_0 scripts\mp\weapons::_id_57C8( var_3 );

        var_0._id_57AE = 0;
        var_0 thread _id_37F9();
    }
}

_id_37F9()
{
    self endon( "mine_triggered" );
    self endon( "mine_destroyed" );
    self endon( "death" );
    var_0 = self._id_02F2;
    var_1 = self._id_02F2._id_045B;
    _id_0765::_id_C2A7( 1, ::_id_EC10 );
    _id_07E9::_id_C2A4( "Lethal_Static", var_0, 1 );
    thread scripts\mp\weapons::_id_99D8( "tag_use", 1 );
    var_0 scripts\mp\weapons::_id_AABC( self, "equip_claymore", ::_id_37EE );
    thread scripts\mp\weapons::_id_A0F2( var_0, self );
    self _meth_85B7();
    self _meth_85B8();
    self _meth_8312( var_0 );
    self setorigin( var_0 );
    self setneargoalnotifydist( 1 );
    self._id_75D8 = _id_0766::_id_D587( 0, 5, undefined, undefined, undefined, 0.1, 1 );
    thread scripts\mp\weapons::_id_ACC5( self );
    thread scripts\mp\weapons::_id_9EBB();
    thread _id_37F4();
    _id_0764::_id_D151( ::_id_37F1 );
    _id_37FE();
    self _meth_8373( "plant", "active", 0 );
    var_0 _meth_8373( "equipClaymoreFXView", "plant", 0 );
    thread _id_37F5();
    wait 1;
    self _meth_8373( "arm", "active", 0 );
    thread _id_3800();
    thread scripts\engine\utility::_id_C330( ::_id_37FC, 1, 1 );
}

_id_37FE()
{
    if ( istrue( level._id_432C ) )
        return;

    if ( isdefined( self._id_4325 ) )
        _id_07EE::_id_C511( self._id_4325 );

    self._id_4325 = _id_07EE::_id_110C( self._id_02EA, _id_07EE::_id_69B5(), 72, self._id_02F2._id_045B, undefined, self._id_02F2, 0, self, 1 );
}

_id_37F5()
{
    self endon( "mine_selfdestruct" );
    self endon( "death" );
    var_0 = gettime() + 2000;

    while ( var_0 > gettime() )
    {
        var_1 = ( 0, self._id_0054[1], 0 );
        var_2 = 15;
        self._id_0054 = _func_0312( var_1, self._id_0054, var_2 );
        waitframe();
    }
}

_id_3800()
{
    self endon( "mine_triggered" );
    self endon( "mine_destroyed" );
    self endon( "death" );
    var_0 = _func_02C4( [ "physicscontents_missileclip", "physicscontents_item", "physicscontents_vehicle", "physicscontents_glass", "physicscontents_water" ] );

    for (;;)
    {
        self waittill( "trigger_grenade", var_1 );

        if ( istrue( self._id_EAA8 ) )
            continue;

        foreach ( var_3 in var_1 )
        {
            if ( isdefined( var_3._id_00DE ) )
            {
                if ( var_3._id_00DE == "script_vehicle" )
                {
                    if ( !_id_09B9::_id_1014A( var_3, self ) )
                        continue;

                    _id_09B9::_id_10147( var_3, self );
                    break;
                }

                if ( var_3._id_00DE == "agent" || var_3._id_00DE == "player" )
                {
                    if ( !_func_0117( var_3 ) && !_func_0102( var_3 ) )
                        continue;

                    var_4 = anglestoforward( self._id_0054 );
                    var_5 = anglestoup( self._id_0054 );
                    var_6 = self._id_02EA + var_5 * 0;
                    var_7 = _id_0A68::_id_6589();
                    var_8 = var_3 gettagorigin( "j_mainroot" );
                    var_9 = [ var_8 ];
                    var_10 = var_6 - var_8;

                    if ( _func_0257( var_10, ( 0, 0, 1 ) ) >= 0 )
                        var_9[var_9.size] = var_3 gettagorigin( "j_spineupper" );
                    else
                        var_9[var_9.size] = var_3._id_02EA;

                    var_11 = 0;

                    foreach ( var_13 in var_9 )
                    {
                        var_10 = var_13 - self._id_02EA;
                        var_14 = _func_0257( var_10, var_4 );

                        if ( var_14 > 192 )
                            continue;

                        var_15 = _func_0257( var_10, var_5 );

                        if ( abs( var_15 ) > 32 )
                            continue;

                        var_16 = _func_025A( var_10 );
                        var_17 = _func_0257( var_16, var_4 );

                        if ( var_17 < 0.86602 )
                            continue;

                        var_18 = _func_02BC( var_6, var_13, var_0, var_7, 0, "physicsquery_closest", 1 );

                        if ( isdefined( var_18 ) && var_18.size > 0 )
                            continue;

                        var_11 = 1;
                        thread _id_37FC( var_3 );
                    }

                    if ( var_11 )
                        break;
                }
            }
        }
    }
}

_id_37FC( var_0, var_1 )
{
    self endon( "mine_destroyed" );
    self endon( "death" );
    self._id_02F2 endon( "disconnect" );

    if ( isdefined( var_1 ) )
        var_1 endon( "disconnect" );
    else
        var_1 = self._id_02F2;

    self notify( "mine_triggered" );
    _id_0A77::_id_BD07( "claymore triggered", self._id_02F2 );
    scripts\mp\weapons::_id_99D5();
    self _meth_8373( "arm", "neutral", 0 );
    self _meth_8373( "trigger", "active", 0 );
    scripts\mp\weapons::_id_57CC( var_0, 0.3 );
    thread _id_37F2( var_1 );
}

class( var_0, var_1 )
{
    var_1 endon( "mine_destroyed" );
    var_1 endon( "death" );
    var_1._id_02F2 endon( "disconnect" );
    var_1 notify( "mine_triggered" );
    var_1 scripts\mp\weapons::_id_99D5();
    var_1 _meth_8373( "arm", "neutral", 0 );
    var_1 _meth_8373( "trigger", "active", 0 );
    wait 0.1;
    var_1 thread _id_37F3( var_0 );
}

_id_37F3( var_0 )
{
    var_0 _meth_80B7( 140, self._id_02EA, self._id_02F2, self, "MOD_EXPLOSIVE", _func_034C( "claymore_mp" ) );
    var_1 = var_0 _id_0A62::_id_A58E( self._id_02F2, _func_034C( "claymore_mp" ), self, "MOD_EXPLOSIVE" );
    thread _id_37F2();
    waitframe();

    if ( isdefined( var_0 ) )
        var_0 _id_0A62::_id_A593( var_1 );
}

_id_37F2( var_0 )
{
    level._id_9ECB[self getentitynumber()] = undefined;
    self _meth_82F0( 0 );
    _id_0765::_id_47E6();
    scripts\mp\weapons::_id_99D5();

    if ( isdefined( self._id_FE8E ) )
        self._id_FE8E _meth_809A();

    self._id_57AE = 1;
    var_1 = self._id_02F2;

    if ( isdefined( self._id_02F2 ) )
        var_1 scripts\mp\weapons::_id_C48A( self );

    _id_0766::_id_D586( self._id_75D8 );
    var_2 = anglestoup( self._id_0054 );
    var_3 = -1 * anglestoright( self._id_0054 );
    var_4 = anglestoforward( self._id_0054 );
    _func_0196( _id_077B::_id_6A40( "claymore_explode" ), self._id_02EA, var_2, var_4 );
    self _meth_8287( self._id_02EA, 75, 100, 100, self._id_02F2, "MOD_EXPLOSIVE", "claymore_radial_mp" );
    self _meth_809F( var_0 );
}

_id_37F4()
{
    self endon( "death" );
    level endon( "game_ended" );
    var_0 = self._id_02F2;
    self waittill( "detonateExplosive", var_1 );
    self._id_48AF = var_1;
    thread _id_37F2( var_1 );
}

_id_EC10()
{
    _id_37EF();
}

_id_37EF( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    thread _id_37EE( var_0 + 0.2 );
    wait( var_0 );
    self _meth_8373( "destroy", "active", 0 );
}

_id_37F1( var_0 )
{
    var_1 = var_0._id_006E;

    if ( istrue( _id_099C::_id_B779( self._id_02F2, var_1 ) ) )
    {
        var_1 notify( "destroyed_equipment" );
        var_1 _id_0A28::_id_6FCD( self );
    }

    var_2 = "";

    if ( istrue( self._id_758C ) )
        var_2 = "hitequip";

    if ( _func_0117( var_1 ) )
        var_1 _id_079B::_id_FC44( var_2 );

    thread _id_37EF();
}

_id_37EE( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    self _meth_8373( "hack_usable", "off" );
    self notify( "death" );
    _id_0765::_id_47E6();
    level._id_9ECB[self getentitynumber()] = undefined;
    self _meth_82F0( 0 );
    scripts\mp\weapons::_id_99D5();
    _id_0766::_id_D586( self._id_75D8 );
    self._id_75D8 = undefined;
    self._id_57AE = 1;

    if ( isdefined( self._id_4325 ) )
    {
        _id_07EE::_id_C511( self._id_4325 );
        self._id_4325 = undefined;
    }

    var_1 = self._id_02F2;

    if ( isdefined( self._id_02F2 ) )
        var_1 scripts\mp\weapons::_id_C48A( self );

    if ( isdefined( var_0 ) )
        wait( var_0 );

    self _meth_809A();
}

_id_37F7( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_2 ) )
        return var_4;

    if ( _func_036F( var_1 ) )
        return var_4;

    if ( var_1 == _func_034C( "claymore_mp" ) )
    {
        if ( isdefined( self._id_3806 ) )
        {
            foreach ( var_6 in self._id_3806 )
            {
                if ( isdefined( var_6 ) && var_6 == var_2 )
                    return 0;
            }
        }
    }
    else if ( var_1 == _func_034C( "claymore_radial_mp" ) )
    {
        if ( !istrue( _id_099C::_id_B779( var_0, var_2._id_02F2 ) ) )
            return 0;

        thread _id_37ED( var_2 );
    }
    else
        return var_4;

    if ( !_func_010E( var_3 ) )
        return var_4;

    var_8 = var_0._id_02EA - var_2._id_02EA;
    var_9 = _func_0257( var_8, anglestoup( var_2._id_0054 ) );

    if ( var_9 > 65 )
        return 0;

    var_8 = var_2._id_02EA - var_0 geteye();
    var_9 = _func_0257( var_8, anglestoup( var_2._id_0054 ) );

    if ( var_9 > 65 )
        return 0;

    var_10 = anglestoforward( var_2._id_0054 );
    var_10 = ( var_10[0], var_10[1], 0 );
    var_11 = var_0._id_02EA - var_2._id_02EA;
    var_11 = ( var_11[0], var_11[1], 0 );
    var_12 = _func_0257( var_10, var_11 );

    if ( var_12 < 0 )
        return 0;

    var_9 = distance2d( var_2._id_02EA, var_0._id_02EA );
    var_13 = 1 - clamp( ( var_9 - 75 ) / 130, 0, 1 );
    var_4 = 70 + 70 * var_13;

    if ( isdefined( var_2._id_48AF ) )
    {
        var_14 = isdefined( var_2._id_02F2 ) && var_2._id_48AF == var_2._id_02F2;
        var_15 = var_2._id_48AF == var_0;

        if ( !var_14 && var_15 )
            var_4 = _func_0148( var_4, 80 );
    }

    return var_4;
}

_id_37ED( var_0 )
{
    self endon( "disconnect" );
    self notify( "claymore_blockDamageUntilFrameEnd" );
    self endon( "claymore_blockDamageUntilFrameEnd" );

    if ( !isdefined( self._id_3806 ) )
        self._id_3806 = [];

    self._id_3806[self._id_3806.size] = var_0;
    waittillframeend;
    self._id_3806 = undefined;
}

_id_37F8( var_0 )
{
    self _meth_8373( "hacked", "active", 0 );
    _id_37FE();
    thread scripts\mp\weapons::_id_A0F2( self._id_02F2, self );
    thread scripts\mp\weapons::_id_ACC5( self );
}

_id_37FA( var_0 )
{
    self endon( "death" );

    if ( _func_0117( var_0 ) )
        var_0 _id_079B::_id_FC44( "hitequip" );

    self notify( "claymore_stunned" );
    self endon( "claymore_stunned" );
    self _meth_8373( "arm", "neutral", 0 );
    self._id_EAA8 = 1;
    wait 3.0;
    self._id_EAA8 = 0;
    self _meth_8373( "arm", "active", 0 );
}
