// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_8791( var_0, var_1, var_2, var_3 )
{
    return isdefined( self._id_9D22 ) && isdefined( self._id_9D22._id_2B4F );
}

_id_B877( var_0 )
{
    self endon( var_0 + "_finished" );
    var_1 = 4900;
    var_2 = _id_0694::_id_2398();

    for (;;)
    {
        if ( !isdefined( var_2 ) )
            break;

        var_3 = distancesquared( self._id_02EA, var_2._id_02EA );

        if ( var_3 <= var_1 )
        {
            if ( isdefined( self._id_9D22 ) )
                self._id_9D22._id_2B4F = 1;

            break;
        }

        wait 0.05;
    }
}

_id_4D43( var_0, var_1, var_2 )
{
    for (;;)
    {
        self waittill( var_1, var_3 );

        if ( !isalive( var_3 ) )
            var_3 = [ var_3 ];

        foreach ( var_5 in var_3 )
        {
            var_6 = _id_745B( var_0, var_1, var_5 );

            if ( istrue( var_6 ) )
                return;

            if ( isdefined( var_2 ) )
                self [[ var_2 ]]( var_5, var_1 );
        }
    }
}

_id_745B( var_0, var_1, var_2 )
{
    switch ( var_2 )
    {
        case "end":
            return 1;
        case "stop":
            var_3 = _id_0694::_id_2398();

            if ( !isdefined( var_3 ) )
                return 1;

            if ( !isai( var_3 ) )
                return 1;

            if ( !isdefined( self._id_017D ) || self._id_017D != var_3 )
                return 1;

            var_4 = distancesquared( var_3._id_02EA, self._id_02EA );
            var_5 = 4096;

            if ( isdefined( self._id_9D90 ) )
                var_5 = self._id_9D90;

            if ( var_4 > var_5 )
                return 1;

            break;
        case "fire":
            var_3 = _id_0694::_id_2398();

            if ( !isdefined( var_3 ) )
                return 1;

            if ( isai( var_3 ) )
            {
                if ( _func_0117( var_3 ) )
                {
                    if ( isdefined( self._id_9D76 ) )
                        var_6 = distance2dsquared( var_3._id_02EA, self._id_02EA );
                    else
                        var_6 = distancesquared( var_3._id_02EA, self._id_02EA );

                    var_7 = 4096;

                    if ( isdefined( self._id_9D55 ) )
                        var_7 = self._id_9D55;

                    if ( var_6 <= var_7 )
                    {
                        var_8 = self._id_9D68;
                        var_9 = undefined;
                        var_10 = undefined;
                        var_11 = 20;
                        var_12 = 0.45;
                        var_13 = 0.35;
                        var_14 = isdefined( var_3._id_A93E ) && var_3._id_A93E._id_0026;

                        if ( _func_036F( self._id_04CE ) )
                            var_8 = self._id_F92D;

                        if ( var_14 )
                        {
                            var_11 = 10;
                            var_12 = 0.7;
                            var_13 = 0.5;
                            _func_01EA( "#x3c156e8bd3b24f3c4", 0.05 );
                        }

                        var_15 = self _meth_822D( undefined, var_8, _func_0213( var_7 ), var_9, var_10 );

                        if ( isdefined( var_15 ) )
                        {
                            if ( var_14 && ( self._id_0492 == "soldier" || self._id_0492 == "juggernaut" ) )
                                self _meth_827B( "ai_melee_vs_shield" );

                            var_3 _id_B4D6( self._id_02EA, var_11 );
                            var_3 _meth_849F( 0.45, 0.35, var_3._id_02EA, 1000 );
                            var_3 _meth_8278( "damage_heavy" );

                            if ( !var_14 )
                                var_3 _meth_844B( 30, self._id_02EA );
                        }
                        else
                        {
                            self._id_A49D = gettime() + _func_01B9( 3000, 5000 );
                            self._id_8FBB = var_3;
                        }

                        if ( var_14 )
                            _func_01EA( "#x3c156e8bd3b24f3c4", level._id_B706 );
                    }
                    else
                    {
                        self._id_A49D = gettime() + _func_01B9( 3000, 5000 );
                        self._id_8FBB = var_3;
                    }
                }
                else
                    self _meth_822D();
            }

            break;
        default:
            scripts\anim\notetracks::_id_745A( var_2, var_1 );
    }
}

_id_B4D6( var_0, var_1 )
{
    if ( !self _meth_81D7() )
        var_1 = var_1 * 0.1;

    var_2 = _func_025A( self._id_02EA + ( 0, 0, 45 ) - var_0 );
    var_3 = var_2 * var_1 * 10;
    self _meth_83A7( var_3 );
}

_id_9D2B()
{
    var_0 = self._id_9D22._id_0457;

    if ( isdefined( self._id_9D51 ) )
    {
        self._id_9D22._id_10E51 = 1;
        var_0._id_9D22._id_10E51 = 0;
        return;
    }
    else if ( isdefined( var_0._id_9D51 ) )
    {
        self._id_9D22._id_10E51 = 0;
        var_0._id_9D22._id_10E51 = 1;
        return;
    }

    if ( isdefined( self._id_9916 ) )
    {
        self._id_9D22._id_10E51 = 1;
        var_0._id_9D22._id_10E51 = 0;
    }
    else if ( isdefined( var_0._id_9916 ) )
    {
        self._id_9D22._id_10E51 = 0;
        var_0._id_9D22._id_10E51 = 1;
    }
    else
    {
        self._id_9D22._id_10E51 = _id_077B::_id_3A02();
        var_0._id_9D22._id_10E51 = !self._id_9D22._id_10E51;
    }
}

_id_9D25()
{
    var_0 = self._id_9D22._id_0457;
    var_1 = self._id_02EA - var_0._id_02EA;
    var_2 = vectordot( var_1 );
    var_3 = _func_000B( var_2 - var_0._id_0054[1] );

    if ( -45 < var_3 && var_3 < 45 )
        return "8";
    else if ( var_3 > 135 || var_3 < -135 )
        return "2";
    else if ( var_3 > 45 )
        return "4";

    return "6";
}

_id_9D40( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( self._id_9D22 ) )
        return 1;

    if ( isdefined( self._id_9D22._id_2031 ) )
        return 1;

    if ( !isdefined( self._id_9D22._id_0457 ) )
        return 1;

    if ( !isai( self._id_9D22._id_0457 ) )
        return 1;

    if ( istrue( self._id_9D22._id_0457._id_4D87 ) )
        return 1;

    return 0;
}

_id_9D3F( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( self._id_9D22 ) )
        return 1;

    if ( isdefined( self._id_9D22._id_2031 ) )
    {
        if ( isdefined( self._id_9D22._id_2DC6 ) )
        {
            if ( self._id_9D22._id_2DC6 )
            {
                var_4 = _id_0009::_id_1C28( var_0, "melee_stop" );

                if ( var_4 )
                    self._id_9D22._id_2C2D = 1;

                return var_4;
            }
        }
        else if ( isdefined( self._id_9D22._id_E941 ) )
        {
            var_5 = _id_0009::_id_1C28( var_0, "melee_stop" );

            if ( !var_5 )
            {
                self._id_9D22._id_2DC6 = 1;
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

_id_9D38( var_0, var_1, var_2 )
{
    self._id_9D22._id_2406 = 1;
    self._id_9D22._id_9D52 = var_0;
    self._id_9D22._id_1BDF = var_1;
    self._id_9D22._id_2413 = var_2;
}

_id_9D27( var_0, var_1, var_2, var_3 )
{
    return isdefined( self._id_9D22._id_2406 ) && self._id_9D22._id_2406;
}

_id_9D26()
{
    self._id_9D22._id_2406 = undefined;
}

_id_9D36( var_0, var_1, var_2, var_3 )
{
    if ( self._id_9D22._id_10E51 != var_3 )
        return 0;

    return !_id_9D27();
}

_id_314D( var_0, var_1, var_2, var_3 )
{

}

_id_3598( var_0, var_1, var_2 )
{
    return _id_0009::_id_1C55( var_1, self._id_9D53 );
}

_id_565C( var_0, var_1 )
{
    var_2 = self._id_9D22._id_0457;
    var_3 = var_2._id_0054;
    var_4 = var_2._id_02EA - self._id_02EA;
    var_5 = vectordot( var_4 );
    var_6 = 30;
    var_7 = _func_000B( var_5 - self._id_0054[1] );

    if ( abs( var_7 ) > var_6 )
        return 0;

    if ( var_1 )
    {
        var_3 = var_2._id_0054 - ( 0, var_7 * 0.5, 0 );
        var_8 = getstartorigin( var_2._id_02EA, var_3, var_0 );
    }
    else
    {
        var_3 = var_2._id_0054 - ( 0, var_7, 0 );
        var_8 = getstartorigin( var_2._id_02EA, var_3, var_0 );
    }

    var_9 = self._id_02EA - var_8;
    var_10 = _func_025A( var_2._id_02EA - var_8 );
    var_11 = _func_0257( var_10, var_9 );

    if ( var_11 > 12 || var_11 < -12 )
        return 0;

    if ( var_1 )
    {
        self._id_9D22._id_E677 = self._id_0054 + ( 0, var_7 * 0.5, 0 );
        self._id_9D22._id_03DE = var_8;
        var_2._id_9D22._id_E73C = var_3[1];
    }
    else
    {
        self._id_9D22._id_03DE = var_8;
        self._id_9D22._id_E677 = _func_00D2( var_2._id_02EA, var_3, var_0 );
        var_2._id_9D22._id_E73C = var_3[1];
    }

    var_2._id_9D22._id_2DC3 = 1;
    return 1;
}

_id_565B( var_0, var_1, var_2, var_3 )
{
    var_4 = self._id_9D22._id_0457;

    if ( _func_0117( var_4 ) )
        return 0;

    if ( istrue( self._id_4D96 ) || istrue( var_4._id_4D96 ) )
        return 0;

    if ( visionsetnight( self._id_04CE ) == "pistol" || visionsetnight( var_4._id_04CE ) == "pistol" )
        return 0;

    if ( !isdefined( self._id_9D22._id_10E51 ) || !isdefined( var_4._id_9D22._id_10E51 ) )
        _id_9D2B();

    var_5 = var_3[0];

    if ( self._id_9D22._id_10E51 != var_5 )
        return 0;

    var_6 = var_3[1];
    var_7 = _id_9D25();
    var_8 = [ "a" ];

    if ( var_7 == "8" )
    {
        var_8 = [ "a", "b", "c" ];
        var_9 = 3;
        var_10 = _func_01B8( var_9 );
        var_11 = _func_01B8( var_9 );
        var_12 = var_8[var_10];
        var_8[var_10] = var_8[var_11];
        var_8[var_11] = var_12;
    }

    var_9 = var_8.size;

    for ( var_13 = 0; var_13 < var_9; var_13++ )
    {
        var_14 = var_7 + var_8[var_13];
        var_15 = _id_0009::_id_1C55( var_2, var_14 );
        var_16 = _id_0009::_id_1C46( var_2, var_15 );

        if ( _id_565C( var_16, var_6 ) )
        {
            self._id_9D53 = var_14;
            var_4._id_9D53 = var_14;
            return 1;
        }
    }

    return 0;
}

_id_3154( var_0, var_1, var_2, var_3 )
{

}

_id_3155( var_0, var_1, var_2, var_3 )
{

}

_id_3156( var_0, var_1, var_2, var_3 )
{

}

_id_3157( var_0, var_1, var_2, var_3 )
{

}

_id_3152( var_0, var_1, var_2, var_3 )
{

}

_id_3153( var_0, var_1, var_2, var_3 )
{

}

_id_3151( var_0 )
{
    var_1 = self._id_9D22._id_0457;
    var_2 = var_1._id_02EA;
    var_3 = self._id_02EA - var_2;
    var_4 = _func_025B( var_3 );
    var_5 = getstartorigin( var_2, var_4, var_0 );
    self._id_9D22._id_03DE = var_5;
    self._id_9D22._id_E677 = _func_00D2( var_2, var_4, var_0 );
    var_1._id_9D22._id_E73C = var_4[1];
    return 1;
}

_id_3150( var_0 )
{

}

_id_9D48( var_0, var_1, var_2 )
{

}

_id_10815( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        return;

    var_1 waittill( "entitydeleted" );
    self notify( "melee_exit" );
}

_id_B87F( var_0, var_1 )
{
    self endon( var_1 + "_finished" );
    childthread _id_10815( var_1, self._id_9D22._id_AE70 );
    self waittill( "melee_exit" );
    self _meth_8415();
    var_2 = _id_0009::_id_1C28( var_0, "melee_interact" );

    if ( isdefined( self._id_9D22._id_839F ) && !var_2 )
        self._id_9D22._id_EBCD = 1;
    else if ( var_2 && !_id_0009::_id_1C28( var_0, "melee_death" ) )
    {
        if ( isdefined( self._id_9D22._id_8334 ) )
            self._id_9D22._id_EBCD = !_id_0009::_id_1C28( var_0, "drop" );
        else
            self._id_9D22._id_EBCD = 0;
    }

    if ( !self._id_9D22._id_10E51 )
    {
        if ( istrue( self._id_9D22._id_EBCD ) )
        {
            self._id_9D22._id_2031 = 1;
            self._id_9D22._id_2DC6 = 0;
        }
        else if ( _id_0009::_id_1C28( var_0, "melee_no_recovery" ) )
            self._id_9D22._id_2183 = 1;
        else if ( _id_0009::_id_1C28( var_0, "melee_stop" ) )
            self _meth_81F9();
        else if ( isdefined( self._id_9D22._id_E941 ) )
            self._id_9D22._id_2031 = 1;
        else
            self._id_9D22._id_2183 = 1;
    }
    else if ( _id_0009::_id_1C28( var_0, "fire" ) )
        self._id_9D22._id_2183 = 1;
    else if ( !isdefined( self._id_9D22._id_2597 ) )
        self._id_9D22._id_2031 = 1;
}

_id_9D41( var_0, var_1, var_2, var_3 )
{
    return isdefined( self._id_9D22._id_EBCD );
}

_id_9D42( var_0, var_1, var_2, var_3 )
{
    return isdefined( self._id_9D22._id_2C2D );
}

melee_rangecheck( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( self._id_9D22 ) )
        return 0;

    if ( !isdefined( self._id_9D22._id_0457 ) )
        return 0;

    if ( distancesquared( self._id_02EA, self._id_9D22._id_0457._id_02EA ) < spawnstruct( float( var_3 ) ) )
        return 1;

    return 0;
}

_id_9D49( var_0 )
{
    self endon( var_0 + "_finished" );
    self waittill( "weapon_dropped", var_1 );

    if ( isdefined( var_1 ) )
        self._id_9D22._id_502C = var_1;
}

_id_9D32()
{
    if ( isdefined( self._id_9D22 ) && !istrue( self._id_9D22._id_2C2D ) )
        self._id_9D53 = undefined;

    self._id_9D22 = undefined;
    self._id_9D8F = undefined;
    self._id_03FF = undefined;
}

_id_9D33( var_0 )
{
    if ( _func_0121( var_0, "ps_" ) )
    {
        var_1 = _func_00D6( var_0, 3 );
        self _meth_827B( var_1 );
        return;
    }

    switch ( var_0 )
    {
        case "sync":
            if ( !isdefined( self._id_9D22._id_2031 ) )
            {
                if ( isdefined( self._id_9D22._id_0457 ) )
                {
                    if ( isai( self._id_9D22._id_0457 ) )
                        self linkto( self._id_9D22._id_0457, "tag_sync", 1, 1 );
                }
                else if ( isdefined( self._id_9D22._id_2DC3 ) && isdefined( self._id_9D22._id_AE70 ) )
                {
                    if ( isai( self._id_9D22._id_AE70 ) )
                        self linkto( self._id_9D22._id_AE70, "tag_sync", 1, 1 );
                }
            }

            break;
        case "unsync":
            if ( isdefined( self._id_9D22._id_5DAE ) )
                self [[ self._id_9D22._id_5DAE ]]();
            else
                self _meth_8415();

            break;
        case "melee_interact":
            self._id_9D22._id_EBCE = 1;
            break;
        case "melee_death":
            return var_0;
        case "attach_knife":
            self _meth_801E( "vm_fsierra_knife_00", "TAG_INHAND", 1 );
            self._id_9D22._id_755F = 1;
            break;
        case "detach_knife":
            self destroy( "vm_fsierra_knife_00", "TAG_INHAND", 1 );
            self._id_9D22._id_755F = undefined;
            break;
        case "stab":
            self _meth_827B( "melee_knife_hit_body" );
            _func_0197( level._id_0BA3["melee_knife_ai"], self, "TAG_KNIFE_FX" );
            break;
        case "melee_stop":
            break;
    }
}

_id_B87D( var_0, var_1, var_2 )
{
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    var_4 = _id_0009::_id_1C46( var_1, var_3 );
    self _meth_85EB( var_1, var_3 );
    _id_0009::_id_1C66( var_0, var_1, var_4 );
    self._id_9D53 = undefined;
    _id_0009::_id_1C1D( var_0, var_1, ::_id_9D33 );
}

_id_B87C( var_0, var_1, var_2 )
{
    if ( isdefined( self._id_9D22 ) && isdefined( self._id_9D22._id_AE70 ) )
        self._id_9D22._id_AE70 notify( "melee_exit" );

    if ( isai( self ) && isdefined( self._id_9D22 ) )
        _id_9D2E();

    self _meth_8415();

    if ( self._id_0492 == "c6" )
    {
        self._id_733E = 1;
        self._id_0213 = 0;
    }

    _id_9D32();
}

_id_9D2E()
{
    if ( !_func_036F( self._id_04CE ) && !_func_036F( self._id_90AF ) )
        return;

    if ( _func_0371( self._id_9D22._id_04CE ) )
        return;

    scripts\anim\shared::_id_5EB6( self._id_9D22._id_04CE, self._id_9D22._id_10DD3 );

    if ( isdefined( self._id_9D22._id_502C ) )
    {
        self._id_9D22._id_502C _meth_809A();
        self._id_9D22._id_502C = undefined;
    }
}

_id_B87E( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    self._id_9D22._id_2C34 = 1;
    self _meth_8018( "zonly_physics" );

    if ( isdefined( self._id_9D22._id_E73C ) )
        self _meth_8250( "face angle", self._id_9D22._id_E73C );
    else if ( isdefined( self._id_9D22._id_E677 ) )
        self _meth_8250( "face angle", self._id_9D22._id_E677[1] );
    else
        self _meth_8250( "face current" );

    _id_9D45( var_1, 0 );
    thread _id_9D49( var_1 );
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    var_4 = _id_0009::_id_1C46( var_1, var_3 );
    self _meth_85EB( var_1, var_3 );
    _id_0009::_id_1C66( var_0, var_1, var_4 );
    var_5 = _func_00BB( var_4, "melee_stop" );

    if ( var_5.size > 0 )
        self._id_9D22._id_E941 = var_5;

    var_6 = _func_00BB( var_4, "melee_interact" );

    if ( var_6.size > 0 )
        self._id_9D22._id_839F = var_6;

    var_7 = _func_00BB( var_4, "drop" );

    if ( var_7.size > 0 )
        self._id_9D22._id_8334 = var_7;

    thread _id_B87F( var_0, var_1 );
    var_8 = _id_0009::_id_1C1D( var_0, var_1, ::_id_9D33 );

    if ( ( var_8 == "melee_death" || !self._id_9D22._id_10E51 ) && !isdefined( self._id_9D22._id_EBCD ) )
    {
        self._id_0DB6._id_A554 = 0;

        if ( isdefined( self._id_9D22._id_AE70 ) && isdefined( self._id_9D22._id_AE70._id_9D22 ) )
            self._id_9D22._id_AE70._id_9D22._id_2597 = 1;

        self _meth_81F9();
    }
}

_id_9D45( var_0, var_1 )
{
    self._id_9D8F = var_0;
    self._id_9D22._id_82BE = 1;
    self._id_9D22._id_04CE = self._id_04CE;
    self._id_9D22._id_10DD3 = scripts\anim\utility::_id_6993();
    self._id_9D22._id_5DAE = ::_id_9D47;

    if ( var_1 )
    {
        _id_068A::_id_9D3D( self._id_0492 );
        self._id_03FF = self._id_9D22._id_0457;
    }
    else
        self._id_03FF = self._id_9D22._id_AE70;

    if ( self._id_0492 == "c6" )
    {
        self._id_733E = 0;
        self._id_0213 = 1;
    }
}

_id_9D47()
{
    self _meth_8415();

    if ( isdefined( self._id_9D22._id_AE70 ) )
    {
        self._id_9D22._id_AE70 _meth_8018( "zonly_physics" );
        self._id_9D22._id_AE70 _meth_8250( "face angle", self._id_9D22._id_AE70._id_0054[1] );
    }

    self _meth_8018( "zonly_physics" );
    self _meth_8250( "face angle", self._id_0054[1] );
}

_id_B876( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    thread meleechargetargetimmunewatch( var_1 );
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    var_4 = _id_0009::_id_1C46( var_1, var_3 );
    self _meth_85EB( var_1, var_3 );
    _id_0009::_id_1C66( var_0, var_1, var_4 );
    thread _id_B877( var_1 );
    _id_0009::_id_1C1D( var_0, var_1 );
}

_id_B880( var_0, var_1, var_2 )
{
    _id_B881();
    thread meleechargetargetimmunewatch( var_1 );
    var_3 = _id_0694::_id_2398();

    if ( !isdefined( var_3 ) )
        self _meth_8250( "face current" );
    else if ( var_3 == self._id_017D )
        self _meth_8250( "face enemy" );
    else
        self _meth_8250( "face point", var_3._id_02EA );

    var_4 = _id_0009::_id_1C34( var_0, var_1 );
    _id_0009::_id_1C2A( var_1, "begin" );

    if ( isdefined( var_2 ) )
        self _meth_827B( var_2 );

    var_5 = 1.0;

    if ( isdefined( self._id_0492 ) && self._id_0492 == "juggernaut" )
        var_5 = 1.5;

    self _meth_85EB( var_1, var_4, var_5 );
    self endon( var_1 + "_finished" );
    _id_4D43( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ) );
    _id_0009::_id_1C2B( var_0, "end" );
}

_id_B881()
{
    if ( !isdefined( self._id_0DB6._id_A49B ) )
        self._id_0DB6._id_A49B = 0;

    if ( isdefined( self._id_017D ) && _func_0117( self._id_017D ) || _func_01B8( 3 ) == 0 )
    {
        if ( gettime() > self._id_0DB6._id_A49B )
        {
            scripts\anim\face::_id_CB60( "meleeattack" );
            self._id_0DB6._id_A49B = gettime() + 8000;
        }
    }
}

_id_B883()
{
    if ( !isdefined( self._id_0DB6._id_A49C ) )
        self._id_0DB6._id_A49C = 0;

    if ( isdefined( self._id_017D ) && _func_0117( self._id_017D ) || _func_01B8( 3 ) == 0 )
    {
        if ( gettime() > self._id_0DB6._id_A49C )
        {
            scripts\anim\face::_id_CB60( "meleecharge" );
            self._id_0DB6._id_A49C = gettime() + 8000;
        }
    }
}

_id_B882( var_0, var_1, var_2 )
{
    _id_B883();
    thread _id_08C8::_id_107FE( var_0, var_1, 1 );
    thread meleechargetargetimmunewatch( var_1 );
    _id_0009::_id_1C59( var_0, var_1, self._id_A233 );
}

meleechargetargetimmunewatch( var_0 )
{
    self endon( var_0 + "_finished" );
    thread meleechargetargetimmunereset( var_0 );
    var_1 = 0;

    while ( isdefined( self._id_9D22 ) && isdefined( self._id_9D22._id_0457 ) && isdefined( self.meleechargeimmunedistsq ) )
    {
        self._id_0288 = undefined;

        if ( _func_0117( self._id_9D22._id_0457 ) && self._id_9D22._id_0457 issprinting() )
            var_1 = gettime();

        if ( gettime() - var_1 > 250 )
        {
            if ( distancesquared( self._id_9D22._id_0457._id_02EA, self._id_02EA ) < self.meleechargeimmunedistsq )
            {
                var_2 = anglestoforward( self._id_0054 );
                var_3 = self._id_9D22._id_0457._id_02EA - self._id_02EA;
                var_3 = ( var_3[0], var_3[1], self._id_02EA[2] );

                if ( _func_0257( var_2, var_3 ) > 0 )
                    self._id_0288 = self._id_9D22._id_0457;
            }
        }

        waitframe();
    }

    self._id_0288 = undefined;
}

meleechargetargetimmunereset( var_0 )
{
    self notify( "MeleeChargeTargetImmuneReset" );
    self endon( "MeleeChargeTargetImmuneReset" );
    self waittill( var_0 + "_finished" );

    if ( isdefined( self ) )
        self._id_0288 = undefined;
}

_id_B87B( var_0, var_1, var_2 )
{
    self._id_9D22._id_2C34 = 1;
    var_3 = self._id_9D22._id_0457;
    var_4 = _id_0009::_id_1C34( var_0, var_1 );
    var_5 = _id_0009::_id_1C46( var_1, var_4 );
    _id_0009::_id_1C2A( "melee_attack", "begin" );
    _id_9D45( var_1, 1 );
    var_6 = _func_00BB( var_5, "melee_stop" );

    if ( var_6.size > 0 )
        self._id_9D22._id_E941 = var_6;

    var_7 = _func_00BB( var_5, "melee_interact" );

    if ( var_7.size > 0 )
        self._id_9D22._id_839F = var_7;

    thread _id_9D49( var_1 );
    var_3 _id_0009::_id_1C79( var_1 + "_victim" );
    self _meth_8018( "zonly_physics" );
    self _meth_8250( "face angle", self._id_9D22._id_E677[1] );
    self _meth_85EB( var_1, var_4 );
    _id_0009::_id_1C66( var_0, var_1, var_5 );
    thread _id_B87F( var_0, var_1 );
    self endon( var_1 + "_finished" );
    var_8 = _id_0009::_id_1C1D( var_0, var_1, ::_id_9D33 );

    if ( ( var_8 == "melee_death" || !self._id_9D22._id_10E51 ) && !istrue( self._id_9D22._id_EBCD ) )
    {
        self._id_0DB6._id_A554 = 0;

        if ( isdefined( self._id_9D22._id_0457 ) && isdefined( self._id_9D22._id_0457._id_9D22 ) )
            self._id_9D22._id_0457._id_9D22._id_2597 = 1;

        self _meth_81F9();
    }
}
