// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_1522( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;

    if ( !isdefined( self._id_15A9 ) )
        self._id_15A9 = [];

    if ( var_1 )
    {
        if ( var_4 )
        {

        }
        else
        {
            if ( !isdefined( self._id_15A9[var_0] ) )
                self._id_15A9[var_0] = 0;

            if ( istrue( var_3 ) )
                return 1;

            self._id_15A9[var_0]--;

            if ( !self._id_15A9[var_0] )
            {
                self._id_15A9[var_0] = undefined;
                return 1;
            }
        }
    }
    else if ( var_4 )
    {

    }
    else
    {
        if ( !isdefined( self._id_15A9[var_0] ) )
            self._id_15A9[var_0] = 0;

        if ( istrue( var_3 ) )
            return 0;

        self._id_15A9[var_0]++;

        if ( self._id_15A9[var_0] == 1 )
            return 0;
    }

    return undefined;
}

_id_85F2( var_0 )
{
    if ( !isdefined( self._id_15A9 ) )
        self._id_15A9 = [];

    if ( !isdefined( self._id_15A9 ) || !isdefined( self._id_15A9[var_0] ) || !self._id_15A9[var_0] )
        return 1;
    else
        return 0;
}

_id_388C( var_0 )
{
    if ( isdefined( self._id_15A9 ) && isdefined( self._id_15A9[var_0] ) )
        self._id_15A9[var_0] = undefined;
}

_id_3887()
{
    self notify( "clear_all_allow_info" );

    if ( isdefined( self._id_15A9 ) )
    {
        foreach ( var_1 in self._id_15A9 )
            var_1 = undefined;

        self._id_15A9 = undefined;
    }
}
