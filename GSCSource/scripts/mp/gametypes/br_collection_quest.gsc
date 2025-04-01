// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    var_0 = scripts\mp\gametypes\br_quest_util::_id_C293( "collection", 0 );

    if ( !var_0 )
        return;

    level._id_CC2A = getdvarint( "scr_br_collection_findPath", 0 ) != 0;
    scripts\mp\gametypes\br_quest_util::_id_C299( "collection", ::_id_3A0D );
    scripts\mp\gametypes\br_quest_util::_id_C296( "collect_locale" );
    scripts\mp\gametypes\br_quest_util::_id_C297( "collect_locale", ::_id_3A0A, 3 );
    scripts\mp\gametypes\br_quest_util::_id_C297( "collect_locale", ::_id_3A0B, 0.2 );
    scripts\mp\gametypes\br_quest_util::_id_C299( "collect_locale", ::_id_3A0C );
    scripts\mp\gametypes\br_quest_util::_id_C241( "collect_locale", ::_id_3A09 );
    scripts\mp\gametypes\br_quest_util::_id_C238( "collect_locale", ::_id_3A06 );
    scripts\mp\gametypes\br_quest_util::_id_C295( "collect_locale", ::_id_3A07 );
    scripts\mp\gametypes\br_quest_util::_id_6C75( "collect_locale" )._id_A494 = 0;
}

_id_3A0D()
{
    var_0 = scripts\mp\gametypes\br_quest_util::_id_6C77( "collect_locale", self._id_045B );
    var_0 _id_78FF( self );
    scripts\mp\gametypes\br_quest_util::_id_F91C( self._id_045B );

    foreach ( var_2 in _id_0A7C::_id_6DAC( self._id_045B, "players" ) )
        _id_07D0::_id_A88B( var_0._id_A8C7, var_2 );

    scripts\mp\gametypes\br_quest_util::_id_C2F7( self._id_045B );
}

_id_EDD0( var_0 )
{
    scripts\mp\gametypes\br_quest_util::_id_F91F( "collection", self._id_045B );
    var_1 = scripts\mp\gametypes\br_quest_util::_id_4017( "collection", self._id_045B, var_0.health, var_0 );
    var_1._id_045B = self._id_045B;
    var_1._id_E6DE = _id_3515( self._id_02EA );
    var_1 scripts\mp\gametypes\br_quest_util::_id_C2B2( self._id_045B, self );
    var_2 = _func_020F();
    var_2._id_CFA8 = "questPointsArray";
    var_2._id_CFA2 = var_1._id_E6DE;
    var_2._id_CFAD = 10000;
    var_2._id_CFAE = 0;
    var_2._id_CFAB = 6000;
    var_2._id_CFAC = 4000;
    var_2._id_9F2A = 30;
    var_2._id_81D9 = self;
    var_2._id_BEB0 = 7;
    var_3 = var_1 scripts\mp\gametypes\br_quest_util::_id_C572( "collect_locale", var_2 );
    var_1._id_F370 = 0;

    foreach ( var_5 in _id_0A7C::_id_6DAC( self._id_045B, "players" ) )
        var_5._id_3A39 = 0;

    var_3 _id_FCAC();
    var_3 _id_FD79();
    var_3 _id_DCF7( var_1 );
    scripts\mp\gametypes\br_quest_util::_id_10EF( "collection", var_1 );
    scripts\mp\gametypes\br_quest_util::_id_E729( "collection", self, self._id_045B );
    var_7 = _func_020F();
    var_7._id_56BD = [];
    var_7._id_56BD[0] = self;
    scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_045B, "br_scavenger_quest_start_team", var_7 );
    scripts\mp\gametypes\br_quest_util::_id_4B59( self, "br_scavenger_quest_start_tablet_finder" );
}

_id_FCAC()
{
    var_0 = [];

    foreach ( var_2 in self._id_EABB )
    {
        var_3 = var_2._id_045B;

        foreach ( var_5 in _id_0A7C::_id_6DAC( var_3, "players" ) )
        {
            if ( !isdefined( var_5 ) )
                continue;

            var_0[var_0.size] = var_5;
        }
    }

    self._id_B6FE = var_0;
}

_id_FD79()
{
    foreach ( var_1 in self._id_8B1A )
        _id_FD78( var_1 );
}

_id_FD78( var_0 )
{
    foreach ( var_2 in level._id_B758 )
    {
        if ( _id_077B::_id_1B78( self._id_B6FE, var_2 ) )
        {
            var_0 _meth_80E0( var_2 );
            var_0 _meth_83CA( var_2 );
            continue;
        }

        var_0 disableoffhandweapons( var_2 );
    }
}

_id_DCF7( var_0 )
{
    foreach ( var_2 in _id_0A7C::_id_6DAC( var_0._id_045B, "players" ) )
    {
        self._id_9A96 _meth_83CA( var_2 );
        _id_FC32( var_0, var_2 );
    }
}

_id_FC31( var_0 )
{
    foreach ( var_2 in _id_0A7C::_id_6DAC( var_0._id_045B, "players" ) )
        _id_FC32( var_0, var_2 );
}

_id_FC32( var_0, var_1 )
{
    var_1 scripts\mp\gametypes\br_quest_util::_id_F91D( var_0._id_F370 );
}

_id_4888()
{
    foreach ( var_1 in self._id_B6FE )
    {
        if ( distance2d( var_1._id_02EA, self._id_411F ) > 0 )
        {
            _id_07D0::_id_A88A( self._id_A8C7, var_1 );
            continue;
        }

        _id_07D0::_id_A88B( self._id_A8C7, var_1 );
    }
}

_id_78FF( var_0 )
{
    foreach ( var_2 in _id_0A7C::_id_6DAC( var_0._id_045B, "players" ) )
    {
        self._id_9A96 _meth_847B( var_2 );
        var_2 scripts\mp\gametypes\br_quest_util::_id_F91B();
    }
}

_id_5AE2()
{
    var_0 = self._id_411F + _id_0777::_id_BFE2() * _func_01B9( 0, 2900 );
    var_0 = _id_3515( var_0 );
    var_0 = var_0 + ( 0, 0, 10 );

    foreach ( var_2 in self._id_8B1A )
    {
        if ( distance( var_2._id_02EA, var_0 ) < 100 )
            return undefined;
    }

    if ( level._id_CC2A )
    {
        var_4 = self._id_B6FE[0] allowslide( self._id_411F, var_0, 0, 0 );

        if ( isdefined( var_4 ) )
        {
            return var_0;
            return;
        }

        return undefined;
        return;
    }
    else
        return var_0;
}

_id_5EA5()
{
    if ( isdefined( self._id_BC33 ) && self._id_BC33.size > 0 )
    {
        var_0 = self._id_BC33[0];
        self._id_BC33 = _id_077B::_id_1B96( self._id_BC33, self._id_BC33[0] );
    }
    else
    {
        for ( var_1 = 0; var_1 < 30; var_1++ )
        {
            var_0 = _id_5AE2();

            if ( !isdefined( var_0 ) )
                return var_0;
        }
    }
}

_id_E310( var_0 )
{
    self._id_A779++;
    var_1 = _func_0205( "script_model", var_0 );
    var_1 setmode( "box_wooden_grenade_01" );
    var_1 makeunusable();
    var_1 _meth_8305( "HINT_NOICON" );
    var_1 setuserange( "duration_short" );
    var_1 setusefov( 150 );
    var_1 _meth_84D4( 150 );
    var_1 _meth_84CE( 150 );
    var_1 _meth_832B( &"MP/SCAV_PICKUP_PROMPT" );
    var_1 _meth_85A2();
    var_1._id_96B2 = self;
    var_1 thread _id_E740();
    self._id_8B1A[self._id_8B1A.size] = var_1;
}

_id_E740()
{
    self endon( "death" );
    self endon( "remove_locale" );

    for (;;)
    {
        self waittill( "trigger", var_0 );
        thread _id_FED4( var_0 );
    }
}

_id_FED4( var_0 )
{
    var_1 = self._id_96B2;
    var_2 = scripts\mp\gametypes\br_quest_util::_id_6C77( "collection", var_0._id_045B );

    if ( isdefined( var_2 ) )
    {
        self hide();
        self _meth_8225();
        self._id_02EA = self._id_02EA + ( 0, 0, -500 );
        self _meth_809A();
        var_0._id_3A39++;
        var_2._id_F370++;
        var_1 _id_FC31( var_2 );
        var_1._id_A779 = var_1._id_A779 - 1;

        if ( !isdefined( var_1._id_BC33 ) )
            var_1._id_BC33 = [];

        var_1._id_BC33 = _id_077B::_id_1B63( var_1._id_BC33, self._id_02EA );
        var_1._id_8B1A = _id_077B::_id_1B96( var_1._id_8B1A, self );

        if ( var_2._id_F370 >= 10 )
            var_2 thread _id_3AF5( self );
    }
}

_id_3AF5( var_0 )
{
    var_1 = scripts\mp\gametypes\br_quest_util::_id_6C84( self._id_045B );
    var_2 = scripts\mp\gametypes\br_quest_util::_id_6C79( "collection", var_1 );
    var_3 = _func_020F();
    var_4 = scripts\mp\gametypes\br_quest_util::_id_6C76( "collection" );
    var_3._id_ADB8 = scripts\mp\gametypes\br_quest_util::_id_ADBB( var_4, var_1 );
    scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_7C71, "br_scavenger_quest_complete", var_3 );
    scripts\mp\gametypes\br_quest_util::_id_6FE2( self._id_045B, var_2 );
    self._id_C803 = var_0._id_02EA;
    self._id_C7F8 = var_0._id_0054;
    self._id_034B = "success";
    scripts\mp\gametypes\br_quest_util::_id_C501();
}

_id_58B5()
{
    scripts\mp\gametypes\br_quest_util::_id_4B61( self._id_7C71, "br_scavenger_quest_circle_failure" );
    self._id_034B = "fail";
    scripts\mp\gametypes\br_quest_util::_id_C501();
}

_id_3A06()
{
    if ( self._id_EABB.size < 4 )
        return 1;
    else
        return 0;
}

_id_3A09( var_0 )
{
    scripts\mp\gametypes\br_quest_util::_id_6C75( "collect_locale" )._id_A494++;
    var_1 = scripts\mp\gametypes\br_quest_util::_id_3FEB( "collect_locale", "collection", "ColLoc:" + scripts\mp\gametypes\br_quest_util::_id_6C75( "collect_locale" )._id_A494 );
    var_1._id_411F = var_0._id_02EA;
    var_1 _id_3A08();
    var_1._id_8B1A = [];
    var_1._id_9A96 = _func_03EA( var_1._id_411F[0], var_1._id_411F[1], 2000 );
    var_1._id_9A96 _meth_8729( 1 );
    var_1._id_9A96 hide();
    scripts\mp\gametypes\br_quest_util::_id_10EF( "collect_locale", var_1 );
    return var_1;
}

_id_3A08()
{
    self._id_A8C7 = _id_07D0::_id_C56F( 1 );

    if ( self._id_A8C7 != -1 )
    {
        _id_07D0::_id_A854( self._id_A8C7, "current", ( 0, 0, 0 ), "ui_mp_br_mapmenu_icon_scavengerhunt_tablet" );
        _id_07D0::_id_FB94( self._id_A8C7, self._id_411F );
        _id_07D0::_id_FB95( self._id_A8C7, 2 );
        _id_07D0::_id_A88C( self._id_A8C7 );
        _id_07D0::_id_A89E( self._id_A8C7, 1 );
    }
    else
    {

    }
}

_id_3A0A()
{
    if ( !isdefined( self._id_A779 ) )
    {
        self._id_A779 = 0;
        self._id_A495 = 0;
    }

    if ( self._id_A495 % 3 == 0 || self._id_A779 < 5 )
    {
        if ( self._id_A779 < 15 )
        {
            if ( isdefined( self._id_A4B2 ) )
            {
                _id_E310( self._id_A4B2 );
                self._id_A4B2 = undefined;
            }
            else
                _id_5EA5();
        }
    }

    self._id_A495++;
}

_id_3A0B()
{
    _id_4888();

    if ( !isdefined( self._id_A4B2 ) )
        self._id_A4B2 = _id_5AE2();
}

_id_3A0C()
{
    self._id_9A96 _meth_809A();
    self._id_B6FE = undefined;
    self._id_EABB = undefined;

    foreach ( var_1 in self._id_8B1A )
    {
        var_1 notify( "remove_locale" );
        var_1 hide();
        var_1 _meth_8225();
        var_1._id_02EA = var_1._id_02EA + ( 0, 0, -500 );
        var_1 _meth_809A();
    }

    _id_07D0::_id_C78C( self._id_A8C7 );
}

_id_3A07( var_0, var_1 )
{
    if ( !isdefined( self._id_8F95 ) )
        self._id_8F95 = -1;

    var_2 = gettime();

    if ( self._id_8F95 == var_2 )
        return;

    self._id_8F95 = var_2;
    var_3 = distance2d( self._id_411F, var_0 );

    if ( var_3 > var_1 )
    {
        foreach ( var_5 in self._id_EABB )
            scripts\mp\gametypes\br_quest_util::_id_6C77( "collection", var_5 ) _id_58B5();
    }
}

_id_3515( var_0 )
{
    if ( _func_03D7() )
        var_0 = _func_02A6( var_0 );

    return var_0;
}
