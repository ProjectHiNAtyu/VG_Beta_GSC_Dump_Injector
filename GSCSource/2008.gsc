// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    level thread _id_AB46();
}

_id_AB46()
{
    for (;;)
    {
        level waittill( "connected", var_0 );

        if ( !_func_0104( var_0 ) )
        {
            var_0._id_0313 = var_0 getplayerdata( level._id_9687, "squadMembers", "patch" );
            var_0._id_0314 = var_0 getplayerdata( level._id_9687, "squadMembers", "patchbacking" );
            var_0.owner = var_0 getplayerdata( level._id_9687, "squadMembers", "background" );
        }
    }
}
