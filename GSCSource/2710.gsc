// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_10150()
{
    _id_099D::_id_C2A5( "vehicle", "create", ::_id_1014B );
    _id_099D::_id_C2A5( "vehicle", "createLate", ::_id_1014C );
    _id_099D::_id_C2A5( "vehicle", "deleteNextFrame", ::_id_1014D );
    _id_099D::_id_C2A5( "vehicle", "deleteNextFrameLate", ::_id_1014E );
    _id_099D::_id_C2A5( "vehicle_interact", "init", _id_0A94::_id_100FA );
    _id_099D::_id_C2A5( "vehicle_occupancy", "init", _id_0A97::_id_101D8 );
    _id_099D::_id_C2A5( "vehicle_mines", "init", _id_0A95::_id_10148 );
    _id_099D::_id_C2A5( "vehicle_spawn", "init", _id_0A99::_id_10283 );
    _id_099D::_id_C2A5( "vehicle_compass", "init", scripts\mp\utility\game::_id_10012 );
    _id_099D::_id_C2A5( "vehicle_damage", "init", _id_0A93::_id_1005D );
    _id_099D::_id_C2A5( "technical", "init", scripts\mp\utility\entity::_id_EFF7 );
    _id_099D::_id_C2A5( "light_tank", "init", _id_0A8B::_id_93E6 );
    _id_099D::_id_C2A5( "little_bird", "init", scripts\mp\utility\debug::_id_9566 );
    _id_099D::_id_C2A5( "bronco_sfps_mp", "init", _id_0A83::_id_2BF2 );
    _id_099D::_id_C2A5( "tac_rover", "init", _id_0A8F::_id_ECDA );
    _id_099D::_id_C2A5( "atv", "init", _id_0A81::_id_1E34 );
    _id_099D::_id_C2A5( "large_transport", "init", _id_0A8A::_id_8EC2 );
    _id_099D::_id_C2A5( "cop_car", "init", _id_0A85::_id_3D1F );
    _id_099D::_id_C2A5( "pickup_truck", "init", _id_0A8E::_id_B08D );
    _id_099D::_id_C2A5( "cargo_truck", "init", _id_0A84::_id_3268 );
    _id_099D::_id_C2A5( "hoopty", "init", _id_0A87::_id_79ED );
    _id_099D::_id_C2A5( "jeep", "init", _id_0A89::_id_8BAB );
    _id_099D::_id_C2A5( "medium_transport", "init", _id_0A8D::_id_9CE2 );
    _id_099D::_id_C2A5( "hoopty_truck", "init", _id_0A88::_id_7A11 );
    _id_099D::_id_C2A5( "van", "init", _id_0A91::_id_FFA5 );
    _id_099D::_id_C2A5( "apc_russian", "init", _id_0A80::_id_196E );
    _id_0A86::_id_021D();
    scripts\mp\utility\killstreak::_id_10225();
}

_id_10151()
{
    _id_09A3::_id_1960();
    _id_09A4::_id_1E27();
    _id_09A7::_id_325D();
    _id_09A8::_id_3D14();
    scripts\cp_mp\killstreaks\airdrop::_id_79E2();
    _id_09AA::_id_7A06();
    _id_09B2::_id_EFEA();
    _id_09AD::_id_93BE();
    _id_09AE::_id_955A();
    _id_09B1::_id_ECCF();
    _id_09AC::_id_8EB7();
    _id_09B0::_id_B082();
    _id_09AB::_id_8BA0();
    _id_09AF::_id_9CD7();
    _id_09B3::_id_FF98();
    _id_09A6::_id_2BE9();
}

_id_1014B( var_0, var_1 )
{
    var_0._id_027F = _id_09B6::_id_10040( var_0 );
    var_0._id_01FF = var_0._id_027F;
    scripts\mp\utility\killstreak::_id_10227( var_0 );
    var_0 _meth_86FB( "killstreak" );
    _id_0A97::_id_101E3( var_0 );
}

_id_1014C( var_0, var_1 )
{

}

_id_1014D( var_0 )
{
    scripts\mp\utility\killstreak::_id_1021E( var_0, 1 );
}

_id_1014E( var_0 )
{

}

_id_10152( var_0 )
{

}

_id_1014F( var_0 )
{

}
