// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_516B( var_0 )
{
    self endon( "disconnect" );
    var_0 endon( "explode_end" );
    var_0 thread _id_0A78::_id_A682( "death", "explode_end" );
    var_0 waittill( "explode", var_1 );
    var_2 = _id_0764::_id_644F();
    var_3 = _func_034C( "emp_grenade_mp" );

    foreach ( var_5 in var_2 )
    {
        var_6 = var_5._id_02F2;

        if ( isdefined( var_6 ) )
        {
            if ( var_6 != self && !_id_099C::_id_B779( self, var_6 ) )
                continue;
        }

        var_7 = distancesquared( var_1, var_5._id_02EA );

        if ( var_7 > 262144 )
            continue;

        var_8 = _id_0996::_id_ADB7( self, var_5, 1, var_3, "MOD_EXPLOSIVE", var_0, var_1 );
        thread _id_5168( var_8 );
    }

    var_10 = _id_0A74::_id_6C40( var_1, 512 );

    foreach ( var_12 in var_10 )
    {
        if ( !var_12 _id_0764::_id_309C() )
            continue;

        if ( var_12 != self && !_id_099C::_id_B779( self, var_12 ) )
            continue;

        var_8 = _id_0996::_id_ADB7( self, var_12, 1, var_3, "MOD_EXPLOSIVE", var_0, var_1 );
        thread _id_5169( var_8 );
    }
}

_id_5168( var_0 )
{
    _id_0764::_id_1991( var_0 );
    _id_516A( var_0, 6 );

    if ( isdefined( var_0._id_103C0 ) )
        var_0._id_103C0 _id_0764::_id_C3A0();
}

_id_5169( var_0 )
{
    _id_0764::_id_1991( var_0 );
    _id_07AE::_id_F3F7( var_0._id_006E, var_0._id_103C0, var_0._id_A90B._id_0084 );
    var_1 = _id_077B::_id_F07F( var_0._id_006E == var_0._id_103C0, 2, 6 );
    _id_516A( var_0, var_1 );

    if ( isdefined( var_0._id_103C0 ) )
    {
        var_0._id_103C0 _id_0764::_id_C3A0();

        if ( isdefined( var_0._id_006E ) && _id_0A74::_id_89D3( var_0._id_006E ) )
            _id_07AE::_id_FB29( var_0._id_006E, var_0._id_103C0, var_0._id_A90B._id_0084 );
    }
}

_id_516A( var_0, var_1 )
{
    var_0._id_103C0 endon( "death_or_disconnect" );
    level endon( "game_ended" );
    var_2 = _id_077B::_id_108F5( "emp_cleared", var_1 );
}
