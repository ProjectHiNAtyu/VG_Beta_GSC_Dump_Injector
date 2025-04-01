// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    _id_0A28::_id_C25C( "precision_airstrike", _id_0982::_id_F767 );
    _id_0A28::_id_C25C( "multi_airstrike", _id_0982::_id_F767 );
    _id_0A28::_id_C25C( "fuel_airstrike", _id_0982::_id_F767 );
    _id_099D::_id_C2A5( "airstrike", "airstrike_params", ::_id_7EA1 );
    _id_099D::_id_C2A5( "airstrike", "getSelectMapPoint", ::_id_139A );
    _id_099D::_id_C2A5( "airstrike", "startMapSelectSequence", ::_id_13AA );
    _id_099D::_id_C2A5( "airstrike", "addSpawnDangerZone", ::_id_1396 );
    _id_099D::_id_C2A5( "airstrike", "monitorDamage", _id_079A::_id_A0EC );
}

_id_7EA1()
{
    level._id_13BB = [];
    level._id_13BB["precision_airstrike"] = _func_020F();
    level._id_13BB["precision_airstrike"]._id_EA0F = "precision_airstrike";
    level._id_13BB["precision_airstrike"]._id_9FBD = "plane_wm_dalpha_articulated_01";
    level._id_13BB["precision_airstrike"]._id_9FBE = "plane_wm_dalpha_articulated_01";
    level._id_13BB["precision_airstrike"]._id_47CD = _func_034C( "s4_binoculars_mp", [ "spotterscope" ] );
    level._id_13BB["precision_airstrike"]._id_B17A = 1200;
    level._id_13BB["precision_airstrike"]._id_10CCD = "v_ui_hud_marker_killstreak_02";
    level._id_13BB["toma_strike"] = _func_020F();
    level._id_13BB["toma_strike"]._id_EA0F = "toma_strike";
    level._id_13BB["toma_strike"]._id_9FBD = "bomber_hecho177_00_vista";
    level._id_13BB["toma_strike"]._id_9FBE = "bomber_hecho177_00_vista";
    level._id_13BB["toma_strike"]._id_47CD = _func_034C( "s4_binoculars_mp", [ "spotterscope" ] );
    level._id_13BB["toma_strike"]._id_B17A = 10000;
    level._id_13BB["toma_strike"]._id_10CCD = "v_ui_hud_marker_killstreak_01";
}

_id_139A( var_0, var_1, var_2 )
{
    return _id_0A2B::_id_6D00( var_0, var_1, var_2 );
}

_id_13AA( var_0, var_1, var_2 )
{
    _id_0A2B::_id_E6E1( var_0, var_1, var_2 );
}

_id_1396( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    _id_07EE::_id_110C( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
}
