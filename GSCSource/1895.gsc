// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0BE9( var_0 )
{
    if ( _func_0107( self ) )
        return;

    _bullet_trace();
    var_1 = _id_56DB( var_0 );

    if ( isdefined( var_1 ) )
    {
        self giveweapon( var_1 );
        self _meth_8664( _id_56D8( var_0 ), var_1 );
    }
    else
        self _meth_8664( _id_56D8( var_0 ) );

    self._id_56E5 = var_0;

    if ( _id_099D::_id_8A10( "game", "lpcFeatureGated" ) && ![[ _id_099D::_id_6D05( "game", "lpcFeatureGated" ) ]]() )
        thread _id_10B85();
}

_bullet_trace()
{
    if ( isdefined( self._id_56E5 ) )
    {
        self clearaccessory();
        var_0 = _id_56DB( self._id_56E5 );

        if ( isdefined( var_0 ) && self hasweapon( var_0 ) )
            self takeallweapons( var_0 );

        self._id_56E5 = undefined;
    }
}

_id_7541()
{
    return isdefined( self._id_56E5 );
}

_id_56DD( var_0 )
{
    level._id_56D2 = _func_020F();
    level._id_522E = ::_id_522F;
    level._id_4A90 = ::_id_4A91;
    level._id_5230 = ::_id_5231;
    level._id_4A92 = ::_id_4A93;
    _id_56DE( istrue( var_0 ) );

    if ( _id_099D::_id_8A10( "execution", "init" ) )
        [[ _id_099D::_id_6D05( "execution", "init" ) ]]();
}

_id_522F()
{
    self _meth_86C2();
}

_id_4A91()
{
    self _meth_86C1();
}

_id_5231()
{
    self _meth_86C4();
}

_id_4A93()
{
    self _meth_86C3();
}

_id_56DE( var_0 )
{
    level._id_56D2._id_EC59 = [];
    level._id_56D2._id_7CBC = [];
    var_1 = 0;

    for (;;)
    {
        var_2 = _func_021E( "mp_cp/executiontable.csv", var_1, 1 );

        if ( !isdefined( var_2 ) || var_2 == "" )
            break;

        var_3 = _func_0243( var_2 );
        var_4 = _func_020F();
        var_4._id_C17B = var_3;
        var_5 = _func_021E( "mp_cp/executiontable.csv", var_1, 0 );
        var_4._id_7C71 = int( var_5 );
        var_6 = _func_021E( "mp_cp/executiontable.csv", var_1, 12 );

        if ( var_6 != "none" )
            var_4._id_56D2 = var_6;

        if ( !var_0 )
        {
            var_7 = _func_021E( "mp_cp/executiontable.csv", var_1, 13 );

            if ( var_7 != "none" )
            {
                var_4._id_BDAF = _func_034C( var_7 );

                if ( _func_036F( var_4._id_BDAF ) )
                {
                    var_1++;
                    continue;
                }
            }
        }

        var_4._id_1DB9 = _func_021E( "mp_cp/executiontable.csv", var_1, 19 );
        var_4._id_103C9 = _func_021E( "mp_cp/executiontable.csv", var_1, 20 );
        var_4._id_10DB1 = _func_021E( "mp_cp/executiontable.csv", var_1, 21 );
        level._id_56D2._id_EC59[var_3] = var_4;
        level._id_56D2._id_7CBC[var_4._id_7C71] = var_4._id_C17B;
        var_1++;
    }
}

_id_56D8( var_0 )
{
    var_1 = level._id_56D2._id_EC59[var_0];

    if ( isdefined( var_1 ) )
        return var_1._id_56D2;

    return undefined;
}

_id_56DB( var_0 )
{
    var_1 = level._id_56D2._id_EC59[var_0];

    if ( isdefined( var_1 ) )
        return var_1._id_BDAF;

    return undefined;
}

_id_56DC( var_0 )
{
    return var_0._id_56E5;
}

_id_56DA( var_0 )
{
    var_1 = level._id_56D2._id_EC59[var_0];

    if ( isdefined( var_1 ) )
        return var_1._id_7C71;
}

_id_56D9( var_0 )
{
    return level._id_56D2._id_7CBC[var_0];
}

_id_56D4()
{
    if ( self isonground() )
    {
        if ( !istrue( self._id_8E78 ) )
        {
            _id_06BB::_id_1514( 0 );
            _id_06BB::_id_1515( 0 );
            self._id_8E78 = 1;
        }
    }
    else if ( istrue( self._id_8E78 ) )
    {
        _id_06BB::_id_1514( 1 );
        _id_06BB::_id_1515( 1 );
        self._id_8E78 = undefined;
    }
}

_id_10B85()
{
    self endon( "disconnect" );
    self notify( "watchInExecution" );
    self endon( "watchInExecution" );
    var_0 = 0;

    for (;;)
    {
        var_1 = self _meth_86C5() || self _meth_86C6();

        if ( var_1 != var_0 )
        {
            if ( var_1 )
            {
                self _meth_865B();
                self _meth_865E( 2.5, 60, 20, 20 );
            }
            else
                self _meth_865C();
        }

        var_0 = var_1;
        waitframe();
    }
}
