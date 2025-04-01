// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_CA57()
{
    _id_06B0::_id_388C( "NVG" );

    if ( !_id_07A8::_id_609F( "prematch_done" ) && isdefined( self._id_7E09 ) )
    {
        _id_06BB::_id_1535( 0 );
        thread _id_159D();
    }
    else
        _id_06BB::_id_1535( 1, undefined, 1 );

    if ( !isdefined( self._id_0309["useNVG"] ) )
        self._id_0309["useNVG"] = 0;

    if ( !isdefined( self._id_0309["killstreak_forcedNVGOff"] ) )
        self._id_0309["killstreak_forcedNVGOff"] = 0;

    thread _id_A79E();
}

_id_159D()
{
    self notify( "allowNVGsAtMatchStart" );
    self endon( "allowNVGsAtMatchStart" );
    self endon( "disconnect" );
    _id_07A8::_id_60A3( "prematch_done" );
    _id_06BB::_id_1535( 1 );
}

_id_393A( var_0 )
{
    if ( isdefined( self._id_A78E ) )
    {
        if ( var_0 )
            self destroy( self._id_A78E, "j_head" );

        self._id_A78E = undefined;
    }
}

_id_CB44()
{
    if ( self _meth_8630() )
        self._id_0309["useNVG"] = 1;
    else if ( !self _meth_8630() && !istrue( self._id_0309["killstreak_forcedNVGOff"] ) )
        self._id_0309["useNVG"] = 0;
}

_id_A79E()
{
    self notify( "nvg_monitor" );
    self endon( "nvg_monitor" );
    self endon( "disconnect" );
    self endon( "death" );
    var_0 = gettime();

    for (;;)
    {
        var_1 = _id_077B::waittill_any_return( "night_vision_on", "night_vision_off" );

        if ( !isdefined( var_1 ) )
            continue;

        _id_CB44();
        var_2 = var_1 == "night_vision_on";
        _id_A7A5( var_2 );

        if ( istrue( var_2 ) )
            level notify( "player_enabled_nvgs" );

        var_3 = gettime();
        var_4 = var_3 - var_0;
        _id_0780::_id_9760( gettime(), self._id_9355, self._id_02EA, var_2, var_4, "none" );
        var_0 = var_3;
    }
}

_id_A798()
{
    var_0 = undefined;

    if ( isdefined( level._id_A7A8[self._id_AC2A._id_75BF] ) )
        var_0 = level._id_A7A8[self._id_AC2A._id_75BF]["up"];

    if ( !isdefined( var_0 ) )
        var_0 = "offhand_wm_nvgquad_mp_1_up";
    else if ( var_0 == "nvg_2" )
        var_0 = "offhand_wm_nvgquad_mp_2_up";
    else if ( var_0 == "nvg_3" )
        var_0 = "offhand_wm_nvgquad_mp_3_up";
    else if ( var_0 == "none" )
        var_0 = undefined;
    else
        var_0 = "offhand_wm_nvgquad_mp_1_up";

    return var_0;
}

_id_A797()
{
    var_0 = undefined;

    if ( isdefined( level._id_A7A8[self._id_AC2A._id_75BF] ) )
        var_0 = level._id_A7A8[self._id_AC2A._id_75BF]["down"];

    if ( !isdefined( var_0 ) )
        var_0 = "offhand_wm_nvgquad_mp_1";
    else if ( var_0 == "nvg_2" )
        var_0 = "offhand_wm_nvgquad_mp_2";
    else if ( var_0 == "nvg_3" )
        var_0 = "offhand_wm_nvgquad_mp_3";
    else if ( var_0 == "none" )
        var_0 = undefined;
    else
        var_0 = "offhand_wm_nvgquad_mp_1";

    return var_0;
}

_id_A7A5( var_0 )
{
    if ( isdefined( self._id_A78E ) )
    {
        self destroy( self._id_A78E, "j_head" );
        self._id_A78E = undefined;
    }

    if ( var_0 )
    {
        var_1 = _id_A797();

        if ( isdefined( var_1 ) )
        {
            self._id_A78E = var_1;
            self _meth_801E( self._id_A78E, "j_head" );
            return;
        }
    }
    else
    {
        var_2 = _id_A798();

        if ( isdefined( var_2 ) )
        {
            self._id_A78E = var_2;
            self _meth_801E( self._id_A78E, "j_head" );
        }
    }
}
