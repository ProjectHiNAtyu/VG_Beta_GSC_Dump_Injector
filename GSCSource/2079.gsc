// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_DEF4( var_0 )
{
    _id_081E::_id_DF05( "ui_mp_ch_loot_explosion", var_0 );
}

snd_mp_champ_hill_1up_get( var_0, var_1 )
{
    var_0 playsoundtoplayer( "ui_mp_ch_1up_get", var_1 );
}

snd_mp_champ_hill_money_get( var_0 )
{
    var_0 _meth_8275( "ui_mp_ch_money_pickup" );
}

_id_DEF5( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 _meth_8275( "ui_mp_ch_life_lost_single", "", "", 1 );
}

_id_DEF6( var_0, var_1 )
{
    _id_081E::_id_DF05( "ui_mp_ch_weapon_pickup", var_1 );

    if ( _func_0121( var_0, "unco" ) )
    {
        wait 0.2;
        _id_081E::_id_DF05( "ui_mp_ch_rarity_uncommon", var_1 );
    }
    else if ( _func_0121( var_0, "rare" ) )
    {
        wait 0.2;
        _id_081E::_id_DF05( "ui_mp_ch_rarity_rare", var_1 );
    }
    else if ( _func_0121( var_0, "epic" ) )
    {
        wait 0.2;
        _id_081E::_id_DF05( "ui_mp_ch_rarity_epic", var_1 );
    }
    else if ( _func_0121( var_0, "lege" ) )
        _id_081E::_id_DF05( "ui_mp_ch_rarity_legendary", var_1 );
}

snd_mp_champ_hill_weapon_upgrade_sound( var_0, var_1 )
{
    switch ( var_0 )
    {
        case 2:
            _id_081E::_id_DF05( "ui_mp_ch_rarity_uncommon", var_1 );
            break;
        case 3:
            _id_081E::_id_DF05( "ui_mp_ch_rarity_rare", var_1 );
            break;
        case 4:
            _id_081E::_id_DF05( "ui_mp_ch_rarity_epic", var_1 );
            break;
        case 5:
            _id_081E::_id_DF05( "ui_mp_ch_rarity_legendary", var_1 );
            break;
        default:
            break;
    }
}
