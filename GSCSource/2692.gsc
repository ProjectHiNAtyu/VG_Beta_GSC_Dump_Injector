// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_3268()
{
    _id_099D::_id_C2A5( "cargo_truck", "spawnCallback", ::_id_326D );
    _id_326A();
    _id_326B();
    scripts\mp\utility\killstreak::_id_10228( "cargo_truck", _id_09A7::_id_325B );
}

_id_326B()
{
    var_0 = _id_09BB::_id_10274( "cargo_truck", 1 );
    var_0._id_0DD8 = _id_09BB::vehicle_spawn;
}

_id_326A()
{
    var_0 = _id_09B9::_id_10142( "cargo_truck", 1 );
    var_0._id_5FBD = 165;
    var_0._id_206B = 168;
    var_0._id_9183 = 57;
    var_0._id_C855 = 57;
    var_0._id_292E = 35;
    var_0._id_4B75 = 50;
    var_0._id_9889 = ( 0, 0, 70 );
}

_id_326D( var_0, var_1 )
{
    var_2 = _id_09A7::_id_3254( var_0, var_1 );

    if ( isdefined( var_2 ) && _id_09BB::_id_10270() )
        var_2._id_AA96 = ::_id_326C;

    return var_2;
}

_id_326C()
{
    thread _id_326E();
}

_id_326E()
{
    var_0 = _id_09BC::_id_6E22( self );
    var_1 = _func_020F();
    _id_09BC::_id_3D43( var_0, var_1 );
    var_2 = _func_020F();
    var_3 = _id_09BB::vehicle_spawn_spawnvehicle( "cargo_truck", var_1, var_2 );
}
