// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_A1FA()
{
    var_0 = getent( "weapon_loc_screenshot_1", "targetname" );
    var_1 = var_0._id_02EA + ( 0, 0, 0 );
    var_2 = var_0._id_0054 + ( 0, 0, 0 );
    level._id_B0A6._id_02EA = var_1;
    level._id_B0A6._id_0054 = var_2;
    var_3 = getent( "camera_weapon_screenshot_1", "targetname" );
    var_4 = var_3._id_02EA + ( 100, 0, 0 );
    var_5 = var_3._id_0054 + ( 0, 0, 0 );
    level._id_2FD3 _meth_80BE();
    level._id_2FD3._id_02EA = var_4;
    level._id_2FD3._id_0054 = var_5;
}

_id_A1FB()
{
    var_0 = getent( "weapon_loc_screenshot_1", "targetname" );
    var_1 = var_0._id_02EA + ( 0, 0, 0 );
    var_2 = var_0._id_0054 + ( 0, -25, 0 );
    level._id_B0A6._id_02EA = var_1;
    level._id_B0A6._id_0054 = var_2;
    var_3 = getent( "camera_weapon_screenshot_1", "targetname" );
    var_4 = var_3._id_02EA + ( 100, 0, 0 );
    var_5 = var_3._id_0054 + ( 0, 0, 0 );
    level._id_2FD3 _meth_80BE();
    level._id_2FD3._id_02EA = var_4;
    level._id_2FD3._id_0054 = var_5;
}

_id_A1FF()
{
    var_0 = getent( "weapon_loc_screenshot_2", "targetname" );
    var_1 = var_0._id_02EA + ( 0, 0, 0 );
    var_2 = var_0._id_0054 + ( 0, 0, 0 );
    level._id_B0A6._id_02EA = var_1;
    level._id_B0A6._id_0054 = var_2;
    var_3 = getent( "camera_weapon_screenshot_2", "targetname" );
    var_4 = var_3._id_02EA + ( 100, 0, 0 );
    var_5 = var_3._id_0054 + ( 0, 0, 0 );
    level._id_2FD3 _meth_80BE();
    level._id_2FD3._id_02EA = var_4;
    level._id_2FD3._id_0054 = var_5;
}

_id_A200()
{
    var_0 = getent( "weapon_loc_screenshot_2", "targetname" );
    var_1 = var_0._id_02EA + ( 0, 0, 0 );
    var_2 = var_0._id_0054 + ( 0, -25, 0 );
    level._id_B0A6._id_02EA = var_1;
    level._id_B0A6._id_0054 = var_2;
    var_3 = getent( "camera_weapon_screenshot_2", "targetname" );
    var_4 = var_3._id_02EA + ( 100, 0, 0 );
    var_5 = var_3._id_0054 + ( 0, 0, 0 );
    level._id_2FD3 _meth_80BE();
    level._id_2FD3._id_02EA = var_4;
    level._id_2FD3._id_0054 = var_5;
}

_id_ED99( var_0 )
{
    var_1 = stopfxontag( "mp/weaponScreenshotList.csv", 0, var_0, 1 );
    _id_A1FA();
    wait 2;
    wait 2;
    _id_A1FB();
    wait 2;
    wait 2;
    _id_A1FF();
    wait 2;
    wait 2;
    _id_A200();
    wait 2;
    wait 2;
}
