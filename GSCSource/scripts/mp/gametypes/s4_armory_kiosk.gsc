// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    level._id_CAA7 = getdvar( "br_kiosk_items_filename", "mp/baseKioskPurchases.csv" );
    _id_0778::_id_CEBF( level._id_CAA6, ::_id_1B5E );
    _id_0A71::_id_C279( ::_id_AA5E );
    _id_0C63();
}

_id_825E()
{
    if ( getdvarint( "scr_base_free_purchases", 0 ) == 0 )
        return;

    level waittill( "prematch_done" );
    var_0 = _id_077B::_id_6D7C( "base_grid_anchor", "targetname" );

    foreach ( var_2 in level._id_A8D5 )
    {
        var_3 = _id_694E( var_2, var_0 );
        var_2._id_10316 = _func_0205( "trigger_radius", var_3._id_02EA, 0, 5, 10 );
        var_2 thread _id_8DEC();
    }
}

_id_694E( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    foreach ( var_5 in var_1 )
    {
        if ( !isdefined( var_2 ) )
        {
            var_2 = var_5;
            var_3 = distancesquared( var_0._id_02EA, var_5._id_02EA );
            continue;
        }

        var_6 = distancesquared( var_0._id_02EA, var_5._id_02EA );

        if ( var_6 < var_3 )
        {
            var_2 = var_5;
            var_3 = distancesquared( var_0._id_02EA, var_5._id_02EA );
            continue;
        }
    }

    return var_2;
}

_id_8DEC()
{
    self._id_10316 notify( "end_duplicate_interact" );
    self._id_10316 endon( "end_duplicate_interact" );
    level endon( "game_ended" );
    var_0 = self._id_10316;

    for (;;)
    {
        var_0 waittill( "trigger", var_1 );

        if ( !_func_0117( var_1 ) || !_id_0A74::_id_89D3( var_1 ) )
            continue;

        if ( !isdefined( self._id_AD9B ) || self._id_AD9B != var_1._id_045B )
            continue;

        if ( isdefined( var_1._id_227A ) )
            continue;

        if ( var_1 _meth_81DF() )
            var_1 _meth_8568();

        var_1 thread _id_0CA2( var_0 );
    }
}

_id_0C63()
{
    level._id_2275 = _func_020F();
    level._id_2275._id_8B1F = [];
    var_0 = strtok( level._id_CAA7 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        var_2 = int( _func_021E( level._id_CAA7, var_1, 0 ) );
        var_3 = _func_020F();
        var_3.health = int( _func_021E( level._id_CAA7, var_1, 0 ) );
        var_3._id_048F = _func_021E( level._id_CAA7, var_1, 1 );
        var_3._id_C17B = _func_021E( level._id_CAA7, var_1, 2 );
        var_3._id_3D6D = int( _func_021E( level._id_CAA7, var_1, 3 ) );
        level._id_2275._id_8B1F[var_2] = var_3;
    }
}

_id_0CA2( var_0 )
{
    var_1 = self;
    level endon( "game_ended" );
    var_1 endon( "disconnect" );
    var_1 endon( "death" );
    var_1._id_227A = var_0;

    if ( scripts\mp\gametypes\br_public::_id_8773() )
        var_1 notify( "kiosk_used" );

    _func_01E4( "ui_arena_evo_killstreak_max_flamethrowers", int( scripts\mp\gametypes\arena_evo_tourney_loot::arenatournament_at_max_flamenauts() ) );
    var_1 _meth_82F6( "ui_base_purchase_menu_response", 0 );

    if ( isdefined( var_0._id_AC1D ) )
        var_1 _meth_82F6( "ui_base_open_purchase_menu", var_0._id_AC1D );
    else
        var_1 _meth_82F6( "ui_base_open_purchase_menu", 1 );

    var_1._id_1B5D = 1;
    var_1 thread _id_0DAD( var_0 );
}

_id_0B78( var_0 )
{
    var_1 = self;
    var_1 _meth_82F6( "ui_base_purchase_menu_response", var_0 );
    var_1 _meth_82F6( "ui_base_open_purchase_menu", 0 );
    var_1._id_227A = undefined;
    var_1._id_1B5D = undefined;

    if ( _id_0A69::_id_8743() )
    {
        if ( isdefined( var_1.buysplashqueue ) && ( !istrue( level._id_CA36 ) || !istrue( level._id_BB8F ) ) )
        {
            foreach ( var_3 in var_1.buysplashqueue )
                var_1 thread _id_07B9::_id_DCE0( "item_purchased", var_3 );
        }

        var_1.buysplashqueue = [];
    }
}

_id_0C7B( var_0 )
{
    var_0 _id_0B78( 0 );
    var_0 notify( "_watchToAutoCloseMenu_end" );
}

_id_0C7A( var_0 )
{
    var_1 = self;
    var_2 = 64;
    var_3 = getdvarfloat( "#x3d2a0dbe716dc8206", 128 ) + var_2;
    var_4 = var_3 * var_3;

    for (;;)
    {
        wait 0.1;
        var_5 = distancesquared( var_1._id_02EA, var_0._id_02EA );

        if ( var_5 > var_4 )
        {
            var_1 notify( "pushed_too_far" );
            break;
        }
    }
}

_id_0DAD( var_0 )
{
    var_1 = self;
    var_1 endon( "disconnect" );
    var_1 notify( "_watchToAutoCloseMenu_end" );
    var_1 endon( "_watchToAutoCloseMenu_end" );
    var_1 childthread _id_0C7A( var_0 );
    _id_077B::_id_10886( var_1, "death", var_1, "last_stand_start", var_1, "pushed_too_far", level, "game_ended" );
    var_1 _id_0B78( 2 );
}

_id_0BF0( var_0, var_1, var_2 )
{

}

_id_0BD7( var_0 )
{
    var_1 = self;

    if ( _id_0A69::_id_8743() )
    {
        if ( var_0._id_048F == "weapon" && scripts\mp\gametypes\arena_evo_tourney_loot::_id_1AAD( var_0._id_C17B ) )
            return 0;
    }

    return var_0._id_3D6D;
}

_id_0BF1( var_0, var_1, var_2 )
{
    var_3 = self;
    var_4 = var_3 _id_0BD7( var_0 );
    var_3 _id_0C31( var_4 );

    if ( _id_0A69::_id_8743() )
    {
        scripts\mp\gametypes\arena_evo_tourney_loot::_id_0E96( var_3, var_0._id_C17B );

        if ( var_4 > 0 )
        {
            if ( !isdefined( var_3.buysplashqueue ) )
                var_3.buysplashqueue = [];

            var_3.buysplashqueue[var_3.buysplashqueue.size] = var_0.health;
        }
    }
    else if ( var_4 > 0 )
        var_3 thread _id_07B9::_id_DCE0( "item_purchased", var_0.health );
}

_id_0BF4( var_0, var_1 )
{
    var_2 = _id_077B::_id_6D7C( "vehicle_spawn_node", "targetname" );
    var_3 = undefined;

    if ( isdefined( var_2 ) && var_2.size > 0 )
        var_3 = _id_694E( self, var_2 );

    if ( isdefined( var_3 ) )
    {
        var_4 = _func_020F();
        var_4._id_02EA = var_3._id_02EA;
        var_4._id_0054 = var_3._id_0054;
        var_5 = var_4._id_02EA + ( 1, 1, 1 );
        var_6 = 150;
        var_7 = [];
        var_8 = _id_077A::_id_3EC3( 0, 0, 0, 0, 0, 1, 0, 0, 0 );
        var_9 = _id_077A::_id_E409( var_4._id_02EA, var_5, var_6, var_7, var_8 );

        if ( isdefined( var_9[0] ) )
            return 0;

        var_10 = _id_09BB::_id_1028C( var_0._id_C17B, var_4, undefined );
        thread _id_09BA::_id_1017C( var_10, "driver", self, undefined, 1 );
        return 1;
    }

    return 0;
}

_id_0D8E( var_0, var_1 )
{
    var_2 = self;

    if ( var_2 [[ level._id_CAA5 ]]() < var_2 _id_0BD7( var_0 ) )
    {
        var_2 _id_0B78( 3 );
        return 0;
    }

    if ( var_0._id_048F == "vehicle" )
    {
        var_3 = _id_077B::_id_6D7C( "vehicle_spawn_node", "targetname" );
        var_4 = undefined;

        if ( isdefined( var_3 ) && var_3.size > 0 )
            var_4 = _id_694E( self, var_3 );

        if ( isdefined( var_4 ) )
        {
            var_5 = _func_020F();
            var_5._id_02EA = var_4._id_02EA;
            var_5._id_0054 = var_4._id_0054;
            var_6 = var_5._id_02EA + ( 1, 1, 1 );
            var_7 = 150;
            var_8 = [];
            var_9 = _id_077A::_id_3EC3( 0, 0, 0, 0, 0, 1, 0, 0, 0 );
            var_10 = _id_077A::_id_E409( var_5._id_02EA, var_6, var_7, var_8, var_9 );

            if ( isdefined( var_10[0] ) )
                return 0;

            return 1;
        }

        return 0;
    }
    else if ( var_0._id_048F == "fieldupgrade" )
    {
        if ( var_2 _id_07F2::_id_8A5F() )
        {
            var_2 _id_0B78( 6 );
            return 0;
        }

        if ( !istrue( var_1 ) )
        {
            var_11 = var_2 _id_07F2::_id_6991();

            if ( isdefined( var_11 ) && var_0._id_C17B == var_11 )
            {
                var_2 _id_0B78( 5 );
                return 0;
            }
        }
    }
    else if ( var_0._id_048F == "special" )
    {
        switch ( var_0._id_C17B )
        {
            case "armor_bundle":
            case "armor":
                break;
        }
    }
    else if ( var_0._id_048F == "killstreak" )
    {
        if ( !var_2 scripts\mp\gametypes\arena_evo_tourney_loot::_id_3129( var_0 ) )
        {
            var_2 _id_0B78( 5 );
            return 0;
        }
    }

    if ( _id_0A69::_id_8743() && isdefined( var_0 ) )
    {
        var_12 = var_2 _id_0BD7( var_0 );
        scripts\mp\gametypes\arena_evo_tourney_util::arenatournament_dlog_record_purchase_event( var_2, var_0._id_C17B, var_12 );
    }

    return 1;
}

_id_AA5E( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2._id_227A;

    if ( !istrue( var_2._id_1B5D ) )
        return;

    var_4 = "channel: " + var_0;

    if ( isdefined( var_1 ) )
        var_4 = var_4 + ", index: " + var_1;

    var_5 = getdvarint( "scr_br_kioskPurchaseDropItems", 1 );

    if ( var_0 == "base_cancel_purchase" )
        _id_0C7B( var_2 );
    else if ( var_0 == "base_item_purchase" )
    {
        var_6 = var_1;
        var_7 = level._id_2275._id_8B1F[var_6];
        var_8 = var_2 _id_0D8E( var_7, var_5 );

        if ( var_8 )
        {
            if ( var_7._id_048F == "vehicle" )
            {
                var_9 = var_2 _id_0BF4( var_7, var_5 );

                if ( var_9 )
                {
                    var_2 _id_0C31( var_2 _id_0BD7( var_7 ) );
                    var_2 thread _id_07B9::_id_DCE0( "br_vehicle_purchased" );
                    return;
                }

                var_2 _id_07B9::_id_DC9F( "MP/VEHICLE_PURCHASE_FAILED" );
                return;
            }
            else if ( var_7._id_048F == "fieldupgrade" )
                var_9 = var_2 _id_0BF0( var_7, var_5, 1 );
            else if ( var_7._id_048F == "weapon" )
                var_9 = var_2 _id_0BF1( var_7, var_5, 1 );
            else if ( var_7._id_048F == "perk" )
                var_9 = var_2 _id_0BF1( var_7, var_5, 1 );
            else if ( var_7._id_048F == "equipment" )
                var_9 = var_2 _id_0BF1( var_7, var_5, 1 );
            else if ( var_7._id_048F == "killstreak" )
                var_9 = var_2 _id_0BF1( var_7, var_5, 1 );
            else if ( var_7._id_048F == "special" )
                var_9 = var_2 _id_0BF1( var_7, var_5, 1 );
        }
    }
}

_id_0C31( var_0 )
{
    var_1 = self;

    if ( var_0 > 0 )
        var_1 [[ level._id_CAA9 ]]( var_0 );

    if ( _id_0A69::_id_8743() )
        var_1 _meth_82F6( "ui_arena_update_buy_menu", gettime() );
    else
        var_1 _id_0B78( 1 );
}

_id_16F8( var_0 )
{
    var_0 endon( "death_or_disconnect" );
    var_1 = var_0._id_038F;
    var_0 _id_099A::_id_0D6A( var_0._id_CFDE );
    var_0 giveweapon( "s4_la_m1bravo_mp" );
}

_id_1B5E( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( istrue( level._id_609B ) )
        return;

    if ( !var_3 _id_099C::_giveweapon() || istrue( var_3._id_82AC ) )
        return;

    if ( var_3 _id_099C::_id_8AB5() )
        return;

    if ( var_3 _id_099C::_id_88BC() )
        return;

    if ( var_3 _id_8DE4() )
        return;

    if ( var_2 == "visible" )
    {
        var_0 _meth_8373( level._id_CAA6, "opening" );
        var_0 thread _id_8DE6();
        var_3 thread _id_0CA2( var_0 );
    }
    else if ( var_2 == "opening" || var_2 == "open" )
        var_3 thread _id_0CA2( var_0 );
}

_id_8DE4()
{
    if ( !isdefined( level._id_CAA4 ) )
        return 1;

    return [[ level._id_CAA4 ]]( self );
}

_id_8DE6()
{
    if ( !getdvarint( "scr_br_kiosk_fix_prone_players", 1 ) )
        return;

    var_0 = getdvarfloat( "scr_br_kiosk_fix_prone_players_radius", 300 );
    var_1 = _func_0409( level._id_B758, self._id_02EA, var_0 );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3 ) || !isai( var_3 ) )
            continue;

        if ( var_3 getstance() != "prone" )
            continue;

        var_4 = var_3 _meth_86AB();
        var_0 = var_4[0];
        var_5 = 2.0 * var_4[2];

        if ( _func_0036( var_3._id_02EA, var_0, var_5, undefined, 0, 0 ) )
            continue;

        var_3 _meth_8382( "crouch", 1 );
    }
}
