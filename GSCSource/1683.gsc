// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_FD84( var_0 )
{
    if ( isdefined( anim._id_10DD9 ) && isdefined( self._id_5E79 ) )
    {
        _id_0694::_id_238F();
        self [[ anim._id_10DD9 ]]();
        return anim._id_EAC8;
    }

    if ( istrue( self._id_035A ) && !_id_0683::_id_7520( 0.2 ) )
        _id_0683::_id_C300();

    return anim._id_58C3;
}

_id_82A1()
{
    self._id_10DC7 = [];

    if ( !_func_036F( self._id_0326 ) )
        self._id_10DC7[self._id_10DC7.size] = self._id_0326;

    if ( !_func_036F( self._id_038F ) )
        self._id_10DC7[self._id_10DC7.size] = self._id_038F;

    if ( !_func_036F( self._id_03AF ) )
        self._id_10DC7[self._id_10DC7.size] = self._id_03AF;
}

_id_35B0()
{
    if ( istrue( self._id_01BC ) )
        return "pistol";

    if ( istrue( self._id_0B3E._id_0172 ) )
        return "pistol";

    var_0 = 0;
    var_1 = undefined;

    foreach ( var_3 in self._id_10DC7 )
    {
        var_4 = visionsetnight( var_3 );
        var_5 = _id_565F( var_4, var_3 );

        if ( var_5 > var_0 )
        {
            var_0 = var_5;
            var_1 = var_4;
        }
    }

    return var_1;
}

_id_6D0C()
{
    var_0 = scripts\anim\utility_common::_id_8ABB();
    var_1 = 409;
    var_2 = scripts\anim\utility_common::_id_874C( 0 );

    if ( var_2 )
        var_1 = 512;

    if ( var_0 )
        var_1 = var_1 + 36;

    return var_1;
}

_id_10E80()
{
    if ( isdefined( self._id_017D ) && isdefined( self._id_03AF ) && !_func_036F( self._id_03AF ) && !istrue( self._id_0157 ) )
    {
        var_0 = _id_6D0C();
        var_1 = distancesquared( self._id_02EA, self._id_017D._id_02EA );
        return var_1 < var_0 * var_0;
    }

    return 0;
}

_id_565F( var_0, var_1 )
{
    if ( var_0 == "pistol" )
    {
        if ( visionsetnight( self._id_04CE ) == "rocketlauncher" && self._id_0355 <= 0 )
            return 1000;

        if ( _id_31C6( undefined ) != anim._id_EAC8 )
            return 0;

        var_2 = _id_0694::_id_2394();

        if ( scripts\anim\utility_common::_id_FF0D() && isdefined( var_2 ) && !self _meth_81BA( var_2 ) )
            return 1000;

        if ( _id_34C7( undefined ) != anim._id_EAC8 )
            return 0;

        var_3 = _id_10E80();
        var_4 = scripts\anim\utility_common::_id_874C( 0 );

        if ( var_3 )
        {
            var_5 = distancesquared( self._id_02EA, self._id_017D._id_02EA );

            if ( var_4 )
                return 1000;

            if ( scripts\anim\utility_common::_id_FF0D() && var_5 < 16384 )
                return 1000;

            if ( scripts\anim\utility_common::_id_8AB4() && _id_0683::_id_7520( 0.1 ) )
                return 10;

            return 1000;
        }

        return 0;
    }
    else if ( var_0 == "rocketlauncher" )
    {
        if ( self._id_0355 <= 0 )
            return 0;

        return 100;
    }
    else
        return 100;

    return 100;
}

_id_8A27( var_0 )
{
    if ( scripts\anim\utility_common::_id_874C() )
        return anim._id_EAC8;

    return anim._id_58C3;
}

_id_FF1B( var_0 )
{
    if ( self._id_04CE == self._id_03AF && !_func_036F( self._id_04CE ) )
        return anim._id_EAC8;

    return anim._id_58C3;
}

_id_DBF4( var_0 )
{
    if ( _id_FF1B( var_0 ) == anim._id_EAC8 )
        return anim._id_58C3;

    if ( istrue( self._id_01BC ) )
        return anim._id_EAC8;

    if ( _id_31C6( var_0 ) != anim._id_EAC8 )
        return anim._id_58C3;

    if ( _id_34C7( var_0 ) != anim._id_EAC8 )
        return anim._id_58C3;

    return anim._id_EAC8;
}

_id_31C6( var_0 )
{
    if ( istrue( self._id_0157 ) )
        return anim._id_58C3;

    if ( _id_0694::_id_23BD() && isdefined( self._id_0303 ) && length( self._id_04B7 ) > 1 )
        return anim._id_58C3;

    if ( isdefined( self._id_9D22 ) )
        return anim._id_58C3;

    return anim._id_EAC8;
}

_id_34C7( var_0 )
{
    var_1 = _id_0694::_id_2394();

    if ( isdefined( var_1 ) && distance( self._id_02EA, var_1._id_02EA ) < 16 )
        return anim._id_58C3;

    return anim._id_EAC8;
}

_id_10D65()
{
    if ( isdefined( self._id_03AF ) && isdefined( self._id_04CE ) && self._id_04CE == self._id_03AF && ( istrue( self._id_01BC ) || istrue( self._id_0B3E._id_0172 ) ) )
        return 0;

    return 1;
}
