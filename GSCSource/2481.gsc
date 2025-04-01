// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_ECCF()
{
    var_0 = _id_09B4::_id_100BF( "tac_rover", 1 );
    var_0._id_4820 = ::_id_ECCD;
    _id_ECD4();
    _id_ECD2();
    _id_ECD5();
    _id_ECD0();
    _id_ECD1();

    if ( _id_099D::_id_8A10( "tac_rover", "init" ) )
        [[ _id_099D::_id_6D05( "tac_rover", "init" ) ]]();

    _id_ECD6();
    _id_ECD3();
}

_id_ECD3()
{
    if ( _id_099D::_id_8A10( "tac_rover", "initLate" ) )
        [[ _id_099D::_id_6D05( "tac_rover", "initLate" ) ]]();
}

_id_ECD4()
{
    var_0 = _id_09BA::_id_101A1( "tac_rover", 1 );
    var_0._id_54B6 = ::_id_ECC9;
    var_0._id_5770 = _id_09BA::_id_10183;
    var_0._id_575B = ::_id_ECCB;
    var_0._id_C718 = _id_09BA::_id_1018F();
    var_0._id_575C["front"] = 85;
    var_0._id_575C["back"] = 82;
    var_0._id_575C["left"] = 34;
    var_0._id_575C["right"] = 34;
    var_0._id_575C["top"] = 82;
    var_0._id_575C["bottom"] = 0;
    var_0._id_5768["front"] = ( 58, 0, 55 );
    var_0._id_5758["front"] = "front";
    var_0._id_5768["back"] = ( -65, 0, 65 );
    var_0._id_5758["back"] = "back";
    var_1 = [];
    var_1[var_1.size] = "driver";
    var_1[var_1.size] = "fr_passenger";
    var_1[var_1.size] = "br_passenger";
    var_1[var_1.size] = "bl_passenger";
    var_2 = "driver";
    var_3 = _id_09BA::_id_101A0( "tac_rover", var_2, 1 );
    var_3._id_CFB8 = _id_09BA::_id_10188( var_2, var_1 );
    var_3._id_C718 = _id_09BA::_id_10192();
    var_3._id_18CA = "tag_seat_0";
    var_3._id_5775 = _id_09BA::_id_1015D( var_3._id_18CA );
    var_3._id_5760 = [ var_2, "bl_passenger", "back", "fr_passenger", "front" ];
    var_0._id_5768[var_2] = ( 10, 13, 48 );
    var_0._id_5758[var_2] = "left";
    var_3._id_E351 = 10;
    var_3._id_AAB3 = "ping_vehicle_driver";
    var_2 = "fr_passenger";
    var_3 = _id_09BA::_id_101A0( "tac_rover", var_2, 1 );
    var_3._id_CFB8 = _id_09BA::_id_10188( var_2, var_1 );
    var_3._id_5760 = [ var_2, "br_passenger", "back", "driver", "front" ];
    var_0._id_5768[var_2] = ( 10, -13, 48 );
    var_0._id_5758[var_2] = "right";
    var_3._id_103D0["top"] = 27;
    var_3._id_103D0["bottom"] = 42;
    var_3._id_103D0["left"] = 105;
    var_3._id_103D0["right"] = 111;
    var_3._id_18CA = "tag_seat_1";
    var_3._id_5775 = _id_09BA::_id_1015D( var_3._id_18CA );
    var_3._id_78FC = 1;
    var_3._id_AAB3 = "ping_vehicle_rider";
    var_2 = "bl_passenger";
    var_3 = _id_09BA::_id_101A0( "tac_rover", var_2, 1 );
    var_3._id_CFB8 = _id_09BA::_id_10188( var_2, var_1 );
    var_3._id_5760 = [ var_2, "driver", "back", "br_passenger", "front" ];
    var_0._id_5768[var_2] = ( -25, 13, 55 );
    var_0._id_5758[var_2] = "left";
    var_3._id_103D0["top"] = 27;
    var_3._id_103D0["bottom"] = 42;
    var_3._id_103D0["left"] = 122;
    var_3._id_103D0["right"] = 101;
    var_3._id_18CA = "tag_seat_2";
    var_3._id_5775 = _id_09BA::_id_1015D( var_3._id_18CA );
    var_3._id_78FC = 1;
    var_3._id_AAB3 = "ping_vehicle_rider";
    var_2 = "br_passenger";
    var_3 = _id_09BA::_id_101A0( "tac_rover", var_2, 1 );
    var_3._id_CFB8 = _id_09BA::_id_10188( var_2, var_1 );
    var_3._id_5760 = [ var_2, "fr_passenger", "back", "bl_passenger", "front" ];
    var_0._id_5768[var_2] = ( -25, -13, 55 );
    var_0._id_5758[var_2] = "right";
    var_3._id_103D0["top"] = 27;
    var_3._id_103D0["bottom"] = 42;
    var_3._id_103D0["left"] = 101;
    var_3._id_103D0["right"] = 122;
    var_3._id_18CA = "tag_seat_3";
    var_3._id_5775 = _id_09BA::_id_1015D( var_3._id_18CA );
    var_3._id_78FC = 1;
    var_3._id_AAB3 = "ping_vehicle_rider";
}

_id_ECD2()
{
    var_0 = _id_09B8::_id_100ED( "tac_rover", 1 );
    var_0._id_CFB3["single"] = [ "driver", "fr_passenger", "bl_passenger", "br_passenger" ];
}

_id_ECD5()
{
    var_0 = _id_09A1::_id_10371( "tac_rover", 1 );
    var_0._id_7C71 = 3;
    var_0._id_CFB6["driver"] = 0;
    var_0._id_CFB6["fr_passenger"] = 1;
    var_0._id_CFB6["bl_passenger"] = 2;
    var_0._id_CFB6["br_passenger"] = 3;
}

_id_ECD0()
{
    _id_09B6::_id_10067( "tac_rover", 750 );
    var_0 = _id_09B6::_id_1003F( "tac_rover" );
    var_0._id_37D9 = "light";
    _id_09B6::_id_1002A( "tac_rover" );
    _id_09B6::_id_10071( "tac_rover", 5 );
    _id_09B6::_id_1006C( "tac_rover", ::_id_ECC7 );
}

_id_ECD1()
{
    level._id_0BA3["tac_rover_explode"] = _func_0139( "vfx/iw8_mp/vehicle/vfx_tromeo_mp_death_exp.vfx" );
}

_id_ECC6( var_0, var_1 )
{
    if ( !isdefined( var_0._id_0054 ) )
        var_0._id_0054 = ( 0, 0, 0 );

    var_0._id_02AF = "veh8_mil_lnd_tromeo_physics_mp";
    var_0._id_045A = "tac_rover";
    var_0.type = "tromeo_physics_mp";
    var_2 = _id_09BC::_id_0D58( var_0, var_1 );

    if ( !isdefined( var_2 ) )
        return undefined;

    _id_09B4::_id_10024( var_2, "tac_rover", var_0 );
    var_2._id_A90B = _func_034C( "tac_rover_mp" );
    _id_09B5::_id_10016( var_2 );
    _id_09B4::vehicle_create( var_2, var_0 );
    thread _id_09B4::_id_102E0( var_2, undefined, _id_09B4::_id_100A8 );

    if ( _id_099D::_id_8A10( "tac_rover", "create" ) )
        [[ _id_099D::_id_6D05( "tac_rover", "create" ) ]]( var_2 );

    return var_2;
}

_id_ECCD( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
    {
        var_0 = _func_020F();
        var_0._id_7E78 = self;
        var_0._id_A90B = "tac_rover_mp";
        var_0._id_9CBF = "MOD_EXPLOSIVE";
    }

    _id_09B6::_id_1005E( var_0 );
    _id_09BA::_id_101C3( self, var_0 );
    _id_09B6::_id_1002E( undefined, undefined, 1 );
    thread _id_ECC8();

    if ( !istrue( level._id_EBC0 ) )
    {
        var_2 = self gettagorigin( "tag_origin" );
        var_3 = _id_077B::_id_F07F( isdefined( var_0._id_006E ), var_0._id_006E, self );
        self _meth_8287( var_2, 256, 140, 70, var_3, "MOD_EXPLOSIVE", "tac_rover_mp" );
        _func_0196( _id_077B::_id_6A40( "tac_rover_explode" ), var_2, anglestoforward( self._id_0054 ), anglestoup( self._id_0054 ) );
        _func_019D( var_2, "car_explode" );
        earthquake( 0.4, 800, var_2, 0.7 );
        playfxontag( "grenade_rumble", var_2 );
        _func_0190( var_2, 500, 200, 1 );
    }
}

_id_ECC8()
{
    _id_09B4::_id_1008D( self );

    if ( _id_099D::_id_8A10( "tac_rover", "delete" ) )
        [[ _id_099D::_id_6D05( "tac_rover", "delete" ) ]]( self );

    waitframe();
    _id_09B4::_id_1008E( self );
}

_id_ECC7( var_0 )
{
    thread _id_ECCD( var_0 );
    return 1;
}

_id_ECC9( var_0, var_1, var_2, var_3, var_4 )
{
    if ( istrue( var_4._id_EAC8 ) )
        _id_ECCA( var_0, var_1, var_2, var_3, var_4 );
}

_id_ECCA( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_1 == "driver" )
    {
        var_0 setorigin( var_3 );
        var_0 _meth_8312( var_3 );
        var_3 _meth_8093( var_0 );
    }

    var_3 thread _id_09BA::_id_1015C( var_0, var_1, var_2 );
    _id_09A1::_id_10391( var_0, var_2, var_1, var_3 );
}

_id_ECCB( var_0, var_1, var_2, var_3, var_4 )
{
    if ( istrue( var_4._id_EAC8 ) )
        _id_ECCC( var_0, var_1, var_2, var_3, var_4 );
}

_id_ECCC( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_1 == "driver" )
    {
        var_0 setorigin( undefined );
        var_0 _meth_8312( undefined );
    }

    if ( !istrue( var_4._id_B682 ) )
    {
        if ( var_1 == "driver" )
            var_3 _meth_8094();

        var_3 _id_09BA::_id_10200();
        var_5 = _id_09BA::_id_101D0( var_3, var_2, var_4 );

        if ( !var_5 )
        {
            if ( _id_099D::_id_8A10( "vehicle_occupancy", "handleSuicideFromVehicles" ) )
                [[ _id_099D::_id_6D05( "vehicle_occupancy", "handleSuicideFromVehicles" ) ]]( var_3 );
            else
                var_3 _meth_83FD();
        }
    }

    _id_09A1::_id_10392( var_0, var_1, var_2, var_3 );
}

_id_ECD6()
{
    var_0 = _id_09BB::_id_10274( "tac_rover", 1 );
    var_0._id_9C64 = 2;
    var_0._id_BD19 = 75;
    var_0._id_6D3F = ::_id_ECCE;
    var_0._id_E271 = _id_099D::_id_6D05( "tac_rover", "spawnCallback" );
    var_0._id_38FF = 120;
    var_0._id_38FB = 82;
    var_0._id_38FD = 120;
}

_id_ECCE()
{
    var_0 = _id_077B::_id_6D7C( "tacrover_spawn", "targetname" );

    if ( var_0.size > 0 )
    {
        var_0 = _id_09BB::_id_10288( var_0, 1 );

        if ( var_0.size > 1 )
            var_0 = _id_077B::_id_1B94( var_0 );
    }

    return var_0;
}
