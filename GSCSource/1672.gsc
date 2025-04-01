// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_826B( var_0 )
{
    if ( !isdefined( self._id_0B3E._id_CF17 ) )
        self._id_0B3E._id_CF17 = [];

    if ( !isdefined( self._id_0B3E._id_CF17[var_0] ) )
    {
        self._id_0B3E._id_CF17[var_0] = _func_020F();
        self._id_0B3E._id_CF17[var_0]._id_E744 = "normal";
    }
}

_id_D38B( var_0, var_1 )
{
    if ( self._id_0B3E._id_CF17[var_0]._id_E744 == "dismember" )
        return;

    if ( self._id_0B3E._id_CF17[var_0]._id_E744 != "normal" && var_1 != "dismember" )
        self._id_0B3E._id_CF17[var_0]._id_E744 = self._id_0B3E._id_CF17[var_0]._id_E744 + "_both";
    else
        self._id_0B3E._id_CF17[var_0]._id_E744 = var_1;

    self._id_0B3E._id_CF17[var_0]._id_F1E5 = gettime();
}

_id_D38C( var_0, var_1, var_2 )
{
    self endon( "entitydeleted" );
    _id_D38B( var_0, var_1 );

    if ( isdefined( var_2 ) )
        wait( var_2 );

    if ( isdefined( self._id_CF13 ) )
        return 1;

    var_3 = self._id_0B3E._id_CF17[var_0]._id_E744;

    if ( isdefined( anim._id_4B23[self._id_0492] ) )
    {
        if ( var_0 != "head" && var_3 != "dismember" )
        {
            if ( _id_FE49( self._id_0492 ) )
                var_3 = var_3 + "_lite";
        }
    }

    self _meth_8373( var_0, var_3 );
}

_id_D507( var_0 )
{
    var_1 = var_0 + "_dism_fx";
    var_2 = _id_671B( var_0 );

    if ( var_2 == "normal" )
        var_2 = "undamaged";
    else if ( _func_0121( var_2, "_both" ) )
        var_2 = "dmg_both";

    if ( !isdefined( level._id_7D64 ) && isdefined( anim._id_4B23[self._id_0492] ) )
    {
        if ( var_0 != "head" )
        {
            if ( _id_FE49( self._id_0492 ) )
                var_2 = var_2 + "_lite";
        }
    }

    self _meth_8373( var_1, var_2 );
}

_id_FE49( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < anim._id_4B23[var_0].size; var_2++ )
    {
        if ( gettime() - anim._id_4B23[var_0][var_2] > 1000 )
            continue;

        var_1[var_1.size] = anim._id_4B23[var_0][var_2];
    }

    if ( var_1.size < 0 )
    {
        var_1[var_1.size] = gettime();
        anim._id_4B23[var_0] = var_1;
        return 0;
    }

    anim._id_4B23[var_0] = var_1;
    return 1;
}

_id_671B( var_0 )
{
    if ( !isdefined( self._id_0B3E._id_CF17 ) )
        return "normal";

    if ( !isdefined( self._id_0B3E._id_CF17[var_0] ) )
        return "normal";

    return self._id_0B3E._id_CF17[var_0]._id_E744;
}

_id_18EA()
{
    if ( _id_671B( "left_leg" ) == "dismember" || _id_671B( "right_leg" ) == "dismember" )
        return 1;

    return 0;
}

_id_2909()
{
    if ( _id_671B( "left_leg" ) == "dismember" && _id_671B( "right_leg" ) == "dismember" )
        return 1;

    return 0;
}

_id_18E9()
{
    if ( _id_671B( "left_arm" ) == "dismember" || _id_671B( "right_arm" ) == "dismember" )
        return 1;

    return 0;
}

_id_C84D()
{
    if ( _id_671B( "right_arm" ) == "dismember" )
        return 1;

    return 0;
}

_id_917C()
{
    if ( _id_671B( "left_arm" ) == "dismember" )
        return 1;

    return 0;
}

_id_2908()
{
    if ( _id_671B( "left_arm" ) == "dismember" && _id_671B( "right_arm" ) == "dismember" )
        return 1;

    return 0;
}
