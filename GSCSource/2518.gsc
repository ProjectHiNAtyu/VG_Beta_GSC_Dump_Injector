// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_170E()
{
    level._id_1458 = [];
    scripts\common\interactive::_id_837D( ::_id_1720, "equip_ammoResupplyBox" );
    _id_0A6E::_id_C27C( ::_id_171C );
    level._id_0BA3["vfx/iw8_mp/equipment/vfx_offhand_wm_supportbox_timeout.vfx"] = _func_0139( "vfx/iw8_mp/equipment/vfx_offhand_wm_supportbox_timeout.vfx" );
}

_id_171C( var_0 )
{
    foreach ( var_2 in level._id_1458 )
    {
        if ( isdefined( var_2 ) )
            var_2 _id_171A( var_0 );
    }
}

_id_171F( var_0 )
{
    var_0 endon( "death" );
    var_0 thread _id_1722();
    var_0 thread _id_170D();
    var_0 waittill( "missile_stuck", var_1 );
    var_0 _id_170C( var_1 );

    if ( 1 )
        thread scripts\mp\weapons::_id_ACC5( var_0 );

    var_0._id_8A5A = 1;
    var_0._id_EB2E = level._id_EB28._id_E76A["super_ammo_drop"]._id_7C71;
    scripts\mp\weapons::_id_AABC( var_0, "equip_ammoResupplyBox", ::_id_1701 );
    level._id_1458[var_0 getentitynumber()] = var_0;
    var_0 _id_0764::_id_D151( ::_id_1702 );

    if ( !istrue( var_0._id_990F ) )
        var_0 _id_170F();

    var_0._id_99CF = undefined;
    var_0 _meth_8373( "visibility", "show", 0 );
    wait 0.0;

    if ( !_id_0999::_id_89D2() )
        var_0 _id_16FE();

    wait 0.75;
    var_0 _meth_8373( "effects", "plant", 0 );
    var_0 _meth_8373( "anims", "open", 0 );
    var_0 thread _id_1711();
    wait( _id_1706() );
    var_0 _meth_8373( "beacon", "active", 0 );
    var_0 _meth_8373( "anims", "openIdle", 0 );
}

_id_170D( var_0 )
{
    self endon( "death" );
    self endon( "missile_stuck" );
    var_1 = getdvarfloat( "scr_support_box_proj_hide_duration", 0 );
    self _meth_8373( "visibility", "hide", 0 );
    wait( var_1 );
    self._id_990F = 1;
    _id_170F();
    self _meth_8373( "visibility", "show", 0 );
}

_id_1719()
{
    if ( 0 )
    {
        foreach ( var_1 in self._id_B1BC )
        {
            if ( var_1._id_5542 == "equip_ammoResupplyBox" )
            {
                var_1 thread _id_1701();
                scripts\mp\weapons::_id_C48A( var_1 );
            }
        }
    }
}

_id_1703( var_0, var_1 )
{
    if ( isdefined( var_0 ) || isdefined( self._id_02F2 ) )
    {
        self _meth_85AC();

        if ( isdefined( var_0 ) )
            self _meth_8312( var_0 );
        else
            self _meth_8312( self._id_02F2 );
    }

    self _meth_8373( "effects", "explode", 0 );
    self _meth_8373( "beacon", "neutral", 0 );
    self _meth_8373( "hacked", "neutral", 0 );
    thread _id_1700( 0.1, var_1 );
}

_id_1701( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = !istrue( self._id_B1B6 );

    var_1 = undefined;
    var_2 = 0;

    if ( !var_0 )
    {
        var_1 = _id_1705();
        var_2 = var_1 + 1;
    }

    thread _id_1700( var_2 );

    if ( isdefined( self ) )
    {
        var_3 = self._id_02EA;
        var_4 = anglestoforward( self._id_0054 );
        var_5 = anglestoup( self._id_0054 );
        self _meth_8373( "beacon", "neutral", 0 );
        self _meth_8373( "hacked", "neutral", 0 );

        if ( !var_0 )
        {
            self _meth_8373( "anims", "close", 0 );
            wait( var_1 );
            self _meth_8373( "anims", "closedIdle", 0 );
            wait 1;
        }

        _func_0196( _id_077B::_id_6A40( "vfx/iw8_mp/equipment/vfx_offhand_wm_supportbox_timeout.vfx" ), var_3, var_4, var_5 );
    }
}

_id_1700( var_0, var_1 )
{
    self notify( "death" );
    self._id_87E1 = 1;
    self _meth_82F0( 0 );

    if ( isdefined( self._id_02F2 ) )
        self._id_02F2 scripts\mp\weapons::_id_C48A( self );

    _id_1717();
    _id_1710();
    self._id_B7A9 = undefined;
    self._id_02F2 _id_0793::_id_AAD4( "super_ammo_drop", self._id_FE44 );
    _id_0780::_id_9751( self._id_02F2, self._id_EB2E, self._id_FE44, istrue( var_1 ) );
    wait( var_0 );
    self _meth_809A();
}

_id_1711()
{
    scripts\common\interactive::_id_837E( "equip_ammoResupplyBox" );
    self._id_B7D6 = [];
    self._id_FE44 = 0;
    self makeunusable();
    self _meth_83A0( -1 );
    self setasgametypeobjective( 1 );
    self _meth_8305( "HINT_NOICON" );
    self _meth_832B( &"EQUIPMENT_HINTS/AMMO_RESUPPLY_BOX_USE" );
    self _meth_84CE( 128 );
    self setuserange( "duration_short" );
    self _meth_857F( 0 );
    self sethintdisplayfov( "tag_use" );
    thread _id_1721();
}

_id_1710()
{
    self notify( "ammoResupplyBox_makeUnusable" );
    scripts\common\interactive::_id_8385();
    self _meth_8225();
    self._id_B7D6 = undefined;
}

_id_1721()
{
    self endon( "death" );
    self endon( "ammoResupplyBox_makeUnusable" );
    var_0 = gettime();

    for (;;)
    {
        _id_171D();

        if ( gettime() >= var_0 )
        {
            _id_171E();
            var_0 = gettime() + 150;
        }

        waitframe();
    }
}

_id_171E()
{
    var_0 = _id_06BB::_id_B7B4( self._id_02EA, 300 );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2 ) )
        {
            if ( !ammocount( var_2 ) )
            {
                self disableoffhandweapons( var_2 );
                continue;
            }

            self _meth_80E0( var_2 );
        }
    }
}

_id_171D()
{
    foreach ( var_1 in self._id_B7D6 )
    {
        if ( isdefined( var_1 ) )
        {
            var_2 = var_1 getentitynumber();

            if ( !_id_0A74::_id_89D3( var_1 ) && isdefined( self._id_B7D6[var_2] ) )
            {
                self._id_B7D6[var_2] = undefined;
                _id_171A( var_1 );
            }
        }
    }
}

ammocount( var_0 )
{
    if ( !_id_0A74::_id_89D3( var_0 ) )
        return 0;

    if ( !var_0 _id_06BB::_id_8570() )
        return 0;

    if ( isdefined( self._id_B7D6[var_0 getentitynumber()] ) )
        return 0;

    if ( _id_099C::_id_B779( var_0, self._id_02F2 ) )
        return 0;

    return 1;
}

_id_1713( var_0 )
{
    var_1 = var_0 getweaponslistprimaries();

    foreach ( var_3 in var_1 )
    {
        if ( _id_0A7F::_id_88DF( var_3 ) || _id_0A7F::_id_8A63( var_3 ) || _id_0A7F::_id_88DC( var_3 ) || _id_0A7F::_id_885C( var_3 ) )
            continue;

        var_4 = _id_0A7F::_id_6E59( var_3 );
        var_5 = undefined;

        if ( _id_0A7F::_id_8A1E( var_3 ) )
            var_5 = 1;
        else if ( var_4 == "weapon_sniper" )
            var_5 = 1.5;
        else
            var_5 = 3;

        var_6 = scripts\mp\weapons::_id_689C( var_3 ) * var_5;

        if ( var_3._id_022A && _id_0A7F::_id_1D7D( var_3._id_0490 ) == "ubshtgn" )
        {
            var_7 = var_0 getweaponammoclip( var_3 );
            var_8 = int( var_7 + var_6 );
            var_0 _meth_83B5( var_3, var_8 );
            continue;
        }

        var_9 = var_0 getweaponammostock( var_3 );
        var_8 = int( var_9 + var_6 );
        var_0 setweaponammoclip( var_3, var_8 );
    }

    if ( var_0 == self._id_02F2 )
        var_0 _id_07F2::_id_E931();

    var_0 _id_079B::_id_7B50( "ammobox" );
    _id_1716( var_0 );
    thread _id_1714();
    return 1;
}

_id_1716( var_0 )
{
    if ( isdefined( var_0 ) )
        var_0 _meth_8275( "iw8_support_box_use" );
}

_id_1714()
{
    self endon( "death" );

    if ( istrue( self._id_ABB9 ) )
        return;

    self _meth_8373( "anims", "openUse", 0 );
    self._id_ABB9 = 1;
    wait( _id_1707() );
    self _meth_8373( "anims", "openIdle", 0 );
    self._id_ABB9 = undefined;
}

_id_170F()
{
    thread _id_079A::_id_A0EC( 100, "hitequip", ::_id_170B, ::_id_170A );
}

_id_170A( var_0 )
{
    if ( var_0._id_9CBF == "MOD_IMPACT" )
        return 0;

    var_1 = !isdefined( self._id_02F2 ) || _id_099C::_id_B779( self._id_02F2, var_0._id_006E );
    var_2 = undefined;

    if ( _func_010E( var_0._id_9CBF ) )
        var_2 = _id_1704( var_0, var_1 );
    else if ( _id_077B::_id_877A( var_0._id_9CBF ) )
        var_2 = _id_16FF( var_0, var_1 );

    if ( isdefined( var_2 ) )
    {
        var_3 = 5;

        if ( var_1 )
            var_3 = 5;

        return int( _func_0037( _func_0148( 1, var_2 / 5 ) * self._id_027F ) );
    }

    return var_0._id_0134;
}

_id_170B( var_0 )
{
    _id_1708( var_0._id_006E );
    thread _id_1703( var_0._id_006E, 1 );
}

_id_16FF( var_0, var_1 )
{
    var_2 = _id_077B::_id_F07F( _id_0A62::_id_884C( var_0._id_A90B, var_0._id_9CBF ) && var_1, 2, 0 );

    if ( var_0._id_0134 > 150 )
        return var_2 + 10;

    if ( var_0._id_0134 >= 80 )
        return var_2 + 5;
    else if ( var_0._id_0134 >= 30 )
        return var_2 + 2;
    else
        return var_2 + 1;
}

_id_1704( var_0, var_1 )
{
    if ( var_0._id_0134 > 200 )
        return 20;

    if ( var_0._id_0134 > 70 )
        return 10;
    else if ( var_0._id_0134 > 30 )
        return 7;
    else
        return 2;
}

_id_1718()
{
    if ( isdefined( self._id_ACD2 ) )
        _id_0A72::_id_ACB7( self._id_ACD2, self );
}

_id_16FE()
{
    self._id_75D1 = _id_0766::_id_D58E( [], "v_ui_icon_fieldupgrade_fieldupgrade01", 20, 1, 1000, 100, undefined, 1 );
    self._id_75D5 = _id_0766::_id_D587( 0, 20, undefined, undefined, undefined, undefined, 1 );
    _id_171B();
}

_id_1717()
{
    if ( isdefined( self._id_75D1 ) )
    {
        _id_0766::_id_D586( self._id_75D1 );
        self._id_75D1 = undefined;
    }

    if ( isdefined( self._id_75D5 ) )
    {
        _id_0766::_id_D586( self._id_75D5 );
        self._id_75D5 = undefined;
    }
}

_id_1708( var_0 )
{
    if ( !isdefined( self._id_02F2 ) || _id_099C::_id_B779( self._id_02F2, var_0 ) )
    {
        var_0 notify( "destroyed_equipment" );
        var_0 thread _id_0A76::_id_6FE6( "destroyed_equipment" );
        var_0 _id_0789::_id_553B( self );
    }
}

_id_1709( var_0 )
{
    if ( isdefined( self._id_02F2 ) && !_id_099C::_id_B779( self._id_02F2, var_0 ) )
    {
        if ( self._id_02F2 != var_0 )
            self._id_02F2 thread _id_0A76::_id_6FE6( "munitions_box_teammate_used" );

        self._id_02F2 _id_0A7B::_id_7D93( "munitionsBoxUsed", 1 );
        self._id_02F2 _id_07F2::_id_3A9D( "super_ammo_drop" );
        self._id_FE44++;
    }
}

_id_1712( var_0 )
{
    _id_1701( 1 );
}

_id_170C( var_0 )
{
    var_1 = _func_020F();
    var_1._id_94F7 = var_0;
    var_1._id_43D6 = ::_id_1712;
    var_1._id_5318 = "death";
    thread _id_07CD::_id_73E7( var_1 );
}

_id_1722()
{
    self endon( "death" );
    _id_1723();

    if ( isdefined( self ) && !istrue( self._id_87E1 ) )
        thread _id_1701();
}

_id_1723()
{
    self._id_02F2 endon( "disconnect" );
    self._id_02F2 endon( "joined_team" );
    self._id_02F2 endon( "joined_spectators" );
    level endon( "game_ended" );
    _id_07B7::_id_1084D( 60 );
}

_id_1702( var_0 )
{
    var_1 = var_0._id_006E;
    _id_1708( var_1 );
    thread _id_1701();
}

_id_171B()
{
    foreach ( var_1 in level._id_B758 )
    {
        if ( !isdefined( var_1 ) )
            return;

        _id_171A( var_1 );
    }
}

_id_171A( var_0 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isdefined( self._id_02F2 ) )
        return;

    if ( !isdefined( var_0 ) )
        return;

    var_1 = self._id_75D1;

    if ( !isdefined( var_1 ) )
        return;

    var_2 = self._id_75D5;

    if ( !isdefined( var_2 ) )
        return;

    var_3 = _id_0A74::_id_8852( self._id_02F2._id_045B, var_0 );
    var_4 = isdefined( self._id_B7D6 ) && isdefined( self._id_B7D6[var_0 getentitynumber()] );

    if ( var_3 && !var_4 )
    {
        _id_0766::_id_D583( var_1, var_0 );
        _id_0766::_id_D58C( var_2, var_0 );
    }
    else if ( var_3 )
    {
        _id_0766::_id_D58C( var_1, var_0 );
        _id_0766::_id_D583( var_2, var_0 );
    }
    else
    {
        _id_0766::_id_D58C( var_1, var_0 );
        _id_0766::_id_D58C( var_2, var_0 );
    }
}

#using_animtree("scriptables");

_id_1706()
{
    return _func_0079( %wm_supportbox_ground_open );
}

_id_1707()
{
    return _func_0079( %wm_supportbox_ground_idle_open_use );
}

_id_1705()
{
    return _func_0079( %wm_supportbox_ground_close );
}

_id_1720( var_0, var_1 )
{
    if ( istrue( var_1._id_88C5 ) )
    {
        if ( _id_099D::_id_8A10( "hud", "showErrorMessage" ) )
            var_1 [[ _id_099D::_id_6D05( "hud", "showErrorMessage" ) ]]( "KILLSTREAKS/JUGG_CANNOT_BE_USED" );

        return;
    }

    if ( var_0 ammocount( var_1 ) )
    {
        if ( isdefined( level._id_ABA1 ) )
            var_2 = var_0 [[ level._id_ABA1 ]]( var_1 );
        else
            var_2 = var_0 _id_1713( var_1 );

        if ( var_2 )
        {
            var_0._id_B7D6[var_1 getentitynumber()] = var_1;
            var_0 _id_171A( var_1 );
            var_0 _id_1709( var_1 );
        }
    }
}
