// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _id_D78A();
    _id_D774();
}

_id_D78A()
{
    level._id_2777["dropped_weapon_think"] = ::_id_E03D;
    level._id_2777["dropped_weapon_cancel"] = ::_id_E044;
    level._id_2777["crate_low_ammo_check"] = ::_id_E040;
    level._id_2777["crate_should_claim"] = ::_id_E041;
    level._id_2777["crate_wait_use"] = ::_id_E042;
    level._id_2777["crate_in_range"] = ::_id_E03F;
    level._id_2777["crate_can_use"] = ::_id_E03E;
}

_id_D774()
{
    level._id_291D = 1;
}

_id_E044( var_0 )
{
    if ( _id_09D1::_id_27B1() > 0 )
    {
        var_1 = _id_0A7F::_id_6E59( self getcurrentweapon() );

        if ( isdefined( var_0._id_A84D ) )
        {
            var_2 = var_0._id_A84D._id_00DE;

            if ( _id_077B::_id_EA55( var_2, "weapon_" ) )
                var_2 = _func_00D6( var_2, 7 );

            var_3 = _id_0A7F::_id_6E59( var_2 );

            if ( !_id_2902( var_1, var_3 ) )
                return 1;
        }
    }

    if ( !isdefined( var_0._id_A84D ) )
        return 1;

    return 0;
}

_id_E03D()
{
    self notify( "bot_think_seek_dropped_weapons" );
    self endon( "bot_think_seek_dropped_weapons" );
    self endon( "death_or_disconnect" );
    level endon( "game_ended" );

    for (;;)
    {
        var_0 = 0;

        if ( self [[ level._id_2777["should_pickup_weapons"] ]]() && !_id_09D1::_id_27E9() )
        {
            if ( _id_09D1::_id_2851() )
            {
                var_1 = getentarray( "dropped_weapon", "targetname" );
                var_2 = _id_077B::_id_634A( self._id_02EA, var_1 );

                if ( var_2.size > 0 )
                {
                    var_3 = var_2[0];
                    scripts\mp\bots\bots::_id_288C( var_3 );
                }
            }
            else
            {
                var_1 = getentarray( "dropped_weapon", "targetname" );
                var_2 = _id_077B::_id_634A( self._id_02EA, var_1 );

                if ( var_2.size > 0 )
                {
                    var_4 = self _meth_815E();

                    if ( isdefined( var_4 ) )
                    {
                        var_5 = _id_0A7F::_id_6E59( self getcurrentweapon() );

                        foreach ( var_3 in var_2 )
                        {
                            var_7 = var_3._id_00DE;

                            if ( _id_077B::_id_EA55( var_7, "weapon_" ) )
                                var_7 = _func_00D6( var_7, 7 );

                            var_8 = _id_0A7F::_id_6E59( var_7 );

                            if ( _id_2902( var_5, var_8 ) )
                            {
                                if ( !isdefined( var_3._id_2EBE ) || !var_3._id_2EBE )
                                {
                                    var_3._id_A3E5 = _func_0080( var_3._id_02EA );
                                    var_3._id_2EBE = 1;
                                }

                                if ( isdefined( var_3._id_A3E5 ) && newteamhudelem( var_4, var_3._id_A3E5, 1 ) )
                                {
                                    scripts\mp\bots\bots::_id_288C( var_3 );
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }

        wait( _func_01B7( 0.25, 0.75 ) );
    }
}

_id_287D( var_0 )
{
    var_1 = 0;

    switch ( var_0 )
    {
        case "weapon_other":
        case "weapon_projectile":
        case "weapon_explosive":
        case "weapon_grenade":
            break;
        case "weapon_pistol":
            var_1 = 1;
            break;
        case "weapon_dmr":
        case "weapon_sniper":
            var_1 = 2;
            break;
        case "weapon_shotgun":
        case "weapon_lmg":
        case "weapon_smg":
        case "weapon_assault":
            var_1 = 3;
            break;
    }

    return var_1;
}

_id_2902( var_0, var_1 )
{
    var_2 = _id_287D( var_0 );
    var_3 = _id_287D( var_1 );
    return var_3 > var_2;
}

_id_E040()
{
    var_0 = self getcurrentweapon();
    var_1 = self getweaponammoclip( var_0 );
    var_2 = self getweaponammostock( var_0 );
    var_3 = visionsetthermal( var_0 );
    return var_1 + var_2 < var_3 * 0.25;
}

_id_E041()
{
    return 0;
}

_id_E042()
{
    _id_09D1::_id_28F7( 5000 );
}

_id_E03F( var_0 )
{
    return 1;
}

_id_E03E( var_0 )
{
    if ( scripts\mp\bots\bots::_id_3E4E( var_0 ) )
    {
        if ( isdefined( var_0 ) && isdefined( var_0._id_2927 ) && _id_077B::_id_1B78( var_0._id_2927, self ) )
        {
            if ( _id_09D1::_id_2851() )
                return 1;
            else
                return 0;
        }

        var_1 = _id_0A7F::_id_6E59( self getcurrentweapon() );

        if ( _id_287D( var_1 ) <= 1 )
            return 1;

        if ( _id_E040() )
            return 1;

        return 0;
    }

    return 0;
}
