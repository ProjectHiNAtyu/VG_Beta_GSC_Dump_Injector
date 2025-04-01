// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_79E2()
{
    var_0 = _id_09B4::_id_100BF( "hoopty", 1 );
    var_0._id_4820 = ::_id_79E0;
    _id_79E7();
    _id_79E5();
    _id_79E8();
    _id_79E3();
    _id_79E4();

    if ( _id_099D::_id_8A10( "hoopty", "init" ) )
        [[ _id_099D::_id_6D05( "hoopty", "init" ) ]]();

    _id_79E9();
    _id_79E6();
}

_id_79E6()
{
    if ( _id_099D::_id_8A10( "hoopty", "initLate" ) )
        [[ _id_099D::_id_6D05( "hoopty", "initLate" ) ]]();
}

_id_79E7()
{
    var_0 = _id_09BA::_id_101A1( "hoopty", 1 );
    var_0._id_54B6 = ::_id_79DC;
    var_0._id_5770 = _id_09BA::_id_10183;
    var_0._id_575B = ::_id_79DE;
    var_0._id_C718 = _id_09BA::_id_1018F();
    var_0._id_575C["front"] = 95;
    var_0._id_575C["back"] = 115;
    var_0._id_575C["left"] = 38;
    var_0._id_575C["right"] = 38;
    var_0._id_575C["top"] = 73;
    var_0._id_575C["bottom"] = 0;
    var_1 = "front";
    var_0._id_5768[var_1] = ( 90, 0, 54 );
    var_0._id_5758[var_1] = "front";
    var_1 = "front_right";
    var_0._id_5768[var_1] = ( 17, -19, 54 );
    var_0._id_5758[var_1] = "right";
    var_1 = "back_left";
    var_0._id_5768[var_1] = ( -84, 19, 54 );
    var_0._id_5758[var_1] = "back";
    var_1 = "back_right";
    var_0._id_5768[var_1] = ( -84, -19, 54 );
    var_0._id_5758[var_1] = "back";
    var_2 = [ "driver", "front_right_rear", "back_right_rear", "back_left_rear", "front_left_rear" ];
    var_3 = "driver";
    var_4 = _id_09BA::_id_101A0( "hoopty", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ var_3, "back_left_rear", "back_left", "front_right", "front" ];
    var_0._id_5768[var_3] = ( 17, 19, 54 );
    var_0._id_5758[var_3] = "left";
    var_4._id_C718 = _id_09BA::_id_10192();
    var_4._id_42EE = 0.5;
    var_4._id_18CA = "tag_seat_0";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_E351 = 10;
    var_3 = "front_left_rear";
    var_4 = _id_09BA::_id_101A0( "hoopty", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ var_3, "back_left_rear", "back_left", "front_right_rear", "front" ];
    var_0._id_5768[var_3] = ( -42, 19, 54 );
    var_0._id_5758[var_3] = "left";
    var_4._id_18CA = "tag_seat_2";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_driver";
    var_3 = "front_right_rear";
    var_4 = _id_09BA::_id_101A0( "hoopty", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ var_3, "back_right_rear", "back_right", "front_left_rear", "front" ];
    var_0._id_5768[var_3] = ( -84, -19, 54 );
    var_0._id_5758[var_3] = "right";
    var_4._id_18CA = "tag_seat_4";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
    var_3 = "back_left_rear";
    var_4 = _id_09BA::_id_101A0( "hoopty", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ var_3, "driver", "back_left", "back_right_rear", "front" ];
    var_0._id_5768[var_3] = ( -84, 19, 54 );
    var_0._id_5758[var_3] = "left";
    var_4._id_18CA = "tag_seat_3";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
    var_3 = "back_right_rear";
    var_4 = _id_09BA::_id_101A0( "hoopty", var_3, 1 );
    var_4._id_CFB8 = _id_09BA::_id_10188( var_3, var_2 );
    var_4._id_5760 = [ var_3, "front_right", "back_right", "back_left_rear", "front" ];
    var_0._id_5768[var_3] = ( -84, -19, 54 );
    var_0._id_5758[var_3] = "right";
    var_4._id_18CA = "tag_seat_5";
    var_4._id_5775 = _id_09BA::_id_1015D( var_4._id_18CA );
    var_4._id_AAB3 = "ping_vehicle_rider";
}

_id_79E5()
{
    var_0 = _id_09B8::_id_100ED( "hoopty", 1 );
    var_0._id_CFB3["driver"] = [ "driver" ];
    var_0._id_CFB3["front_left_rear"] = [ "front_left_rear" ];
    var_0._id_CFB3["front_right_rear"] = [ "front_right_rear" ];
    var_0._id_CFB3["back_left_rear"] = [ "back_left_rear" ];
    var_0._id_CFB3["back_right_rear"] = [ "back_right_rear" ];
}

_id_79E8()
{
    var_0 = _id_09A1::_id_10371( "hoopty", 1 );
    var_0._id_7C71 = 9;
    var_0._id_CFB6["driver"] = 0;
    var_0._id_CFB6["front_right"] = 1;
    var_0._id_CFB6["front_left_rear"] = 2;
    var_0._id_CFB6["front_right_rear"] = 3;
    var_0._id_CFB6["back_left_rear"] = 4;
    var_0._id_CFB6["back_right_rear"] = 5;
}

_id_79E3()
{
    _id_09B6::_id_10067( "hoopty", 1000 );
    var_0 = _id_09B6::_id_1003F( "hoopty" );
    var_0._id_37D9 = "medium_light";
    _id_09B6::_id_1002A( "hoopty" );
    _id_09B6::_id_10071( "hoopty", 6 );
    _id_09B6::_id_1006C( "hoopty", ::_id_79DA );
    _id_09B6::_id_10074( "hoopty_mp", 3 );
}

_id_79E4()
{
    level._id_0BA3["hoopty_explode"] = _func_0139( "vfx/iw8/veh/scriptables/vfx_veh_explosion_sedan.vfx" );
}

_id_79D9( var_0, var_1 )
{
    if ( !isdefined( var_0._id_0054 ) )
        var_0._id_0054 = ( 0, 0, 0 );

    var_0._id_02AF = "veh8_mil_lnd_pindia_1seat_red_physics_mp";
    var_0._id_045A = "hoopty";
    var_0.type = "pindia_physics_mp";
    var_2 = _id_09BC::_id_0D58( var_0, var_1 );

    if ( !isdefined( var_2 ) )
        return undefined;

    _id_09B4::_id_10024( var_2, "hoopty", var_0 );
    var_2._id_A90B = _func_034C( "hoopty_mp" );
    _id_09B5::_id_10016( var_2 );
    _id_09B4::vehicle_create( var_2, var_0 );
    thread _id_09B4::_id_102E0( var_2, undefined, _id_09B4::_id_100A8 );

    if ( _id_099D::_id_8A10( "hoopty", "create" ) )
        [[ _id_099D::_id_6D05( "hoopty", "create" ) ]]( var_2 );

    return var_2;
}

_id_79E0( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
    {
        var_0 = _func_020F();
        var_0._id_7E78 = self;
        var_0._id_A90B = "hoopty_mp";
        var_0._id_9CBF = "MOD_EXPLOSIVE";
    }

    _id_09B6::_id_1005E( var_0 );
    _id_09BA::_id_101C3( self, var_0 );
    _id_09B6::_id_1002E( undefined, undefined, 1 );
    thread _id_79DB();

    if ( !istrue( level._id_EBC0 ) )
    {
        var_2 = self gettagorigin( "tag_origin" );
        var_3 = _id_077B::_id_F07F( isdefined( var_0._id_006E ), var_0._id_006E, self );
        self _meth_8287( var_2, 256, 140, 70, var_3, "MOD_EXPLOSIVE", "hoopty_mp" );
        _func_0196( _id_077B::_id_6A40( "hoopty_explode" ), var_2, anglestoforward( self._id_0054 ), anglestoup( self._id_0054 ) );
        _func_019D( var_2, "car_explode" );
        earthquake( 0.4, 800, var_2, 0.7 );
        playfxontag( "grenade_rumble", var_2 );
        _func_0190( var_2, 500, 200, 1 );
    }
}

_id_79DB()
{
    _id_09B4::_id_1008D( self );

    if ( _id_099D::_id_8A10( "hoopty", "delete" ) )
        [[ _id_099D::_id_6D05( "hoopty", "delete" ) ]]( self );

    waitframe();
    _id_09B4::_id_1008E( self );
}

_id_79DA( var_0 )
{
    thread _id_79E0( var_0 );
    return 1;
}

_id_79DC( var_0, var_1, var_2, var_3, var_4 )
{
    if ( istrue( var_4._id_EAC8 ) )
        _id_79DD( var_0, var_1, var_2, var_3, var_4 );
}

_id_79DD( var_0, var_1, var_2, var_3, var_4 )
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

_id_79DE( var_0, var_1, var_2, var_3, var_4 )
{
    if ( istrue( var_4._id_EAC8 ) )
        _id_79DF( var_0, var_1, var_2, var_3, var_4 );
}

_id_79DF( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_1 == "driver" )
    {
        var_0 setorigin( undefined );
        var_0 _meth_8312( undefined );

        if ( !istrue( var_4._id_B682 ) )
            var_3 _meth_8094();
    }

    if ( !istrue( var_4._id_B682 ) )
    {
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

_id_79E9()
{
    var_0 = _id_09BB::_id_10274( "hoopty", 1 );
    var_0._id_9C64 = 30;
    var_0._id_BD19 = 50;
    var_0._id_6D3F = ::_id_79E1;
    var_0._id_E271 = _id_099D::_id_6D05( "hoopty", "spawnCallback" );
    var_0._id_38FF = 118;
    var_0._id_38FB = 70;
    var_0._id_38FD = 118;
}

_id_79E1()
{
    var_0 = _id_077B::_id_6D7C( "hoopty_spawn", "targetname" );

    if ( var_0.size > 0 )
    {
        var_0 = _id_09BB::_id_10288( var_0, 1 );

        if ( var_0.size > 1 )
            var_0 = _id_077B::_id_1B94( var_0 );
    }

    return var_0;
}
