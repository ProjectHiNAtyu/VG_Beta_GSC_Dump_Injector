// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_B08D()
{
    _id_099D::_id_C2A5( "pickup_truck", "spawnCallback", ::_id_B091 );
    _id_B08E();
    _id_B08F();
    scripts\mp\utility\killstreak::_id_10228( "pickup_truck", _id_09B0::_id_B080 );
}

_id_B08F()
{
    var_0 = _id_09BB::_id_10274( "pickup_truck", 1 );
    var_0._id_0DD8 = _id_09BB::vehicle_spawn;
}

_id_B08E()
{
    var_0 = _id_09B9::_id_10142( "pickup_truck", 1 );
    var_0._id_5FBD = 110;
    var_0._id_206B = 112;
    var_0._id_9183 = 38;
    var_0._id_C855 = 38;
    var_0._id_292E = 25;
    var_0._id_4B75 = 40;
    var_0._id_9889 = ( 0, 0, 55 );
}

_id_B091( var_0, var_1 )
{
    var_2 = _id_09B0::_id_B079( var_0, var_1 );

    if ( isdefined( var_2 ) && _id_09BB::_id_10270() )
        var_2._id_AA96 = ::_id_B090;

    return var_2;
}

_id_B090()
{
    thread _id_B092();
}

_id_B092()
{
    var_0 = _id_09BC::_id_6E22( self );
    var_1 = _func_020F();
    _id_09BC::_id_3D43( var_0, var_1 );
    var_2 = _func_020F();
    var_3 = _id_09BB::vehicle_spawn_spawnvehicle( "pickup_truck", var_1, var_2 );
}
