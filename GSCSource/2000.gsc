// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    var_0 = _func_020F();
    var_0._id_0026 = [];
    var_0._id_C104 = [];
    var_0._id_C58A = [];
    var_0.health = 0;
    var_0._id_94BD = _func_03EB();
    level._id_A8C9 = var_0;
}

_id_C573( var_0 )
{
    var_1 = _func_020F();
    var_1._id_A8F3 = var_0;
    level._id_A8C9._id_0026[var_0] = var_1;
    level._id_A8C9.health++;
    level._id_A8C9._id_C58A[level._id_A8C9._id_C58A.size] = var_0;
    return var_0;
}

_id_C56F( var_0 )
{
    var_1 = _id_6B6A( var_0 );

    if ( var_1 == -1 )
        return -1;

    var_2 = _func_020F();
    var_2._id_BD19 = var_0;
    var_2._id_C574 = gettime();
    var_2._id_A8F3 = var_1;
    level._id_A8C9._id_0026[var_1] = var_2;
    return var_1;
}

_id_C46A( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._id_A8C9._id_0026 )
    {
        if ( var_3._id_BD19 <= var_0 )
            var_1[var_1.size] = var_3;
    }

    _id_077B::_id_1BAE( var_1, ::_id_3AD8 );
    return _id_C78C( var_1[0]._id_A8F3 );
}

_id_3AD8( var_0, var_1 )
{
    if ( var_0._id_BD19 == var_1._id_BD19 )
        return var_0._id_C574 < var_1._id_C574;
    else
        return var_0._id_BD19 < var_1._id_BD19;
}

_id_6B6A( var_0 )
{
    if ( !level._id_A8C9._id_C104.size )
    {
        if ( level._id_A8C9.health == level._id_A8C9._id_94BD )
            return -1;
        else
        {
            var_1 = level._id_A8C9.health;
            level._id_A8C9.health++;
        }
    }
    else
    {
        var_1 = level._id_A8C9._id_C104[level._id_A8C9._id_C104.size - 1];
        level._id_A8C9._id_C104[level._id_A8C9._id_C104.size - 1] = undefined;
    }

    return var_1;
}

_id_C78C( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 == -1 )
        return 0;

    for ( var_1 = 0; var_1 < level._id_A8C9._id_C104.size; var_1++ )
    {
        if ( var_0 == level._id_A8C9._id_C104[var_1] )
            return 0;
    }

    level._id_A8C9._id_0026[var_0] = undefined;
    obituary( var_0 );
    level._id_A8C9._id_C104[level._id_A8C9._id_C104.size] = var_0;
    return 1;
}

_id_C790( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || var_0 == -1 )
        return 0;

    if ( istrue( var_1 ) )
        level._id_A8C9._id_0026[var_0] = undefined;

    obituary( var_0 );
    return 1;
}

_id_A851( var_0, var_1, var_2, var_3, var_4 )
{
    obituary( var_0 );

    if ( isdefined( var_1 ) )
        _func_0166( var_0, var_1 );

    if ( isdefined( var_2 ) )
        _func_015F( var_0, var_2 );

    if ( isdefined( var_3 ) )
        _func_015B( var_0, var_3 );

    if ( isdefined( var_4 ) )
        _func_0174( var_0, var_4 );
}

_id_A854( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_0 == -1 )
        return;

    _id_A851( var_0, var_1, var_2, var_3, var_4 );
}

_id_FB93( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_017D( var_0, var_1 );
}

_id_FB92( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_017C( var_0, var_1 );
}

_id_FB98( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_016F( var_0, var_1 );
}

_id_FB97( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0163( var_0, var_1 );
}

_id_FB96( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0164( var_0, var_1 );
}

_id_FB99( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0165( var_0, var_1 );
}

_id_FB9B( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0166( var_0, var_1 );
}

_id_FB94( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_015F( var_0, var_1 );
}

_id_FB8C( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_015B( var_0, var_1 );
}

_id_FB95( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0175( var_0, var_1 );
}

update_objective_showbounds( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0469( var_0, var_1 );
}

update_objective_setboundsrotation( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_046A( var_0, var_1 );
}

_id_FB90( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_015C( var_0, var_1 );
}

_id_FB91( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_015C( var_0, var_1 );
    _func_0172( var_0, 1 );
}

_id_FB9A( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_015D( var_0, var_1 );
}

_id_A892( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0186( var_0 );
    _func_0180( var_0, var_1 );
    _func_0187( var_0 );
}

_id_A8B7( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0186( var_0 );
    _func_0182( var_0, var_1 );
    _func_0187( var_0 );
}

_id_A88C( var_0 )
{
    if ( var_0 == -1 )
        return;

    _func_0183( var_0 );
    _func_0188( var_0 );
}

_id_A88D( var_0 )
{
    if ( var_0 == -1 )
        return;

    _func_0181( var_0 );
    _func_0188( var_0 );
}

_id_A88E( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0181( var_0 );
    _func_0184( var_0, var_1 );
    _func_0188( var_0 );
}

_id_A88B( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0184( var_0, var_1 );
    _func_0187( var_0 );
}

_id_A88A( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0187( var_0 );
    _func_0180( var_0, var_1 );
}

_id_A88F( var_0 )
{
    if ( var_0 == -1 )
        return;

    _func_0183( var_0 );
    _func_0187( var_0 );
}

_id_A890( var_0 )
{
    if ( var_0 == -1 )
        return;

    _func_0181( var_0 );
    _func_0187( var_0 );
}

_id_A891( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0181( var_0 );
    _func_0184( var_0, var_1 );
    _func_0187( var_0 );
}

objective_playermask_showtoclientlist( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0186( var_0 );

    if ( isdefined( var_1 ) )
    {
        foreach ( var_3 in var_1 )
            _func_0180( var_0, var_3 );
    }

    _func_0187( var_0 );
}

_id_A87A( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0186( var_0 );

    if ( level._id_EF62 )
        _func_0182( var_0, var_1._id_045B );
    else
        _func_0180( var_0, var_1 );

    _func_0187( var_0 );
}

_id_A879( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0186( var_0 );

    if ( level._id_EF62 )
        _func_0182( var_0, var_1._id_045B );
    else
        _func_0180( var_0, var_1 );

    _func_0188( var_0 );
}

_id_A8B5( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0182( var_0, var_1 );
    _func_0187( var_0 );
}

_id_A8B6( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0185( var_0, var_1 );
    _func_0187( var_0 );
}

_id_A887( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0167( var_0, var_1 );
}

_id_A889( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_016A( var_0, var_1 );
}

_id_A8BD( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_016B( var_0, var_1 );
}

_id_A888( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0168( var_0, var_1 );
}

_id_A8BC( var_0, var_1, var_2 )
{
    if ( var_0 == -1 )
        return;

    _func_0169( var_0, var_1 );
}

_id_A8AB( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0171( var_0, var_1 );
}

_id_A8AC( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0462( var_0, var_1 );
}

_id_A863( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0463( var_0, var_1 );
}

_id_A8AD( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0464( var_0, var_1 );
}

_id_A864( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0465( var_0, var_1 );
}

_id_A8B1( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0176( var_0, var_1 );
}

_id_A8B2( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0179( var_0, var_1 );
}

_id_A868( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_017A( var_0, var_1 );
}

_id_A8B0( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0177( var_0, var_1 );
}

_id_A867( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0178( var_0, var_1 );
}

_id_A8A1( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_017B( var_0, var_1 );
}

_id_A8A3( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_017F( var_0, var_1 );
}

_id_A8A2( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_017E( var_0, var_1 );
}

_id_A89E( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_016D( var_0, var_1 );
}

_id_A89F( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_016E( var_0, var_1 );
}

_id_A8A4( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_0170( var_0, var_1 );
}

_id_A8A7( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_046C( var_0, var_1 );
}

_id_A865( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_040B( var_0, var_1 );
}

_id_A8AE( var_0, var_1 )
{
    if ( var_0 == -1 )
        return;

    _func_040C( var_0, var_1 );
}

_id_4000( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _id_C56F( 10 );

    if ( var_5 == -1 )
        return -1;

    _id_A854( var_5, "invisible", ( 0, 0, 0 ) );

    if ( !isdefined( self _meth_8151() ) && !istrue( var_3 ) )
        _id_FB94( var_5, self._id_02EA );
    else if ( istrue( var_3 ) && istrue( var_4 ) )
        _id_FB91( var_5, self );
    else
        _id_FB90( var_5, self );

    _id_FB9B( var_5, "active" );
    _id_FB8C( var_5, var_0 );
    _id_FB95( var_5, 1 );

    if ( level._id_EF62 )
    {
        if ( isdefined( var_1 ) )
            _id_FB93( var_5, var_1 );
        else
            _id_A88F( var_5 );
    }
    else if ( isdefined( self._id_02F2 ) )
        _id_FB92( var_5, self._id_02F2 );

    if ( isdefined( level._id_A90A ) )
        [[ level._id_A90A ]]( var_5 );

    return var_5;
}

_id_4001( var_0, var_1, var_2 )
{
    var_3 = _id_C56F( 10 );

    if ( var_3 == -1 )
        return -1;

    _id_A854( var_3, "invisible", ( 0, 0, 0 ) );

    if ( !isdefined( self _meth_8151() ) && !istrue( var_1 ) )
        _id_FB94( var_3, self._id_02EA );
    else if ( istrue( var_1 ) && istrue( var_2 ) )
        _id_FB91( var_3, self );
    else
        _id_FB90( var_3, self );

    _id_FB9B( var_3, "active" );
    _id_FB8C( var_3, var_0 );
    _id_FB95( var_3, 1 );
    _id_FB93( var_3, self._id_045B );
    _id_A88C( var_3 );
    return var_3;
}
