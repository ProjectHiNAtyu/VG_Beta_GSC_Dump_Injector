// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    level._id_B69D = [];
    level thread _id_CA6E();
}

_id_CA6E()
{
    level endon( "game_ended" );
    _id_07A8::_id_60A3( "prematch_done" );

    for (;;)
    {
        foreach ( var_1 in level._id_B758 )
        {
            foreach ( var_3 in level._id_B69D )
                var_1 [[ var_3 ]]();
        }

        waitframe();
    }
}

_id_C28E( var_0 )
{
    level._id_B69D[level._id_B69D.size] = var_0;
}
