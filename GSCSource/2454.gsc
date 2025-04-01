// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_1079( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( var_2 )
    {
        if ( !isdefined( self._id_10B0 ) )
            self._id_10B0 = [];

        self._id_10B0[var_0] = var_1;

        if ( isdefined( var_3 ) )
        {
            if ( !isdefined( self._id_10AF ) )
                self._id_10AF = [];

            self._id_10AF[var_0] = var_3;
        }
    }
    else
    {
        if ( !isdefined( self._id_A2E8 ) )
            self._id_A2E8 = [];

        self._id_A2E8[var_0] = var_1;

        if ( isdefined( var_3 ) )
        {
            if ( !isdefined( self._id_A2E7 ) )
                self._id_A2E7 = [];

            self._id_A2E7[var_0] = var_3;
        }
    }
}

_id_C47C( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( var_1 )
    {
        if ( !isdefined( self._id_10B0 ) )
            return;

        self._id_10B0[var_0] = undefined;

        if ( !isdefined( self._id_10AF ) )
            return;

        self._id_10AF[var_0] = undefined;
    }
    else
    {
        if ( !isdefined( self._id_A2E8 ) )
            return;

        self._id_A2E8[var_0] = undefined;

        if ( !isdefined( self._id_A2E7 ) )
            return;

        self._id_A2E7[var_0] = undefined;
    }
}

_id_69A2( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = 1.0;

    if ( isdefined( self._id_10B0 ) )
    {
        foreach ( var_11, var_9 in self._id_10B0 )
        {
            var_10 = 0;

            if ( isdefined( self._id_10AF ) && isdefined( self._id_10AF[var_11] ) )
                var_10 = [[ self._id_10AF[var_11] ]]( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );

            if ( !var_10 )
                var_7 = var_7 + ( var_9 - 1.0 );
        }
    }

    var_12 = 1.0;

    if ( isdefined( self._id_A2E8 ) )
    {
        foreach ( var_11, var_9 in self._id_A2E8 )
        {
            var_10 = 0;

            if ( isdefined( self._id_A2E7 ) && isdefined( self._id_A2E7[var_11] ) )
                var_10 = [[ self._id_A2E7[var_11] ]]( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );

            if ( !var_10 )
                var_12 = var_12 * var_9;
        }
    }

    return var_7 * var_12;
}

_id_3911()
{
    self._id_10B0 = [];
    self._id_A2E8 = [];
    self._id_10AF = [];
    self._id_A2E7 = [];
}

_id_ADB7( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    var_13 = _func_020F();
    var_13._id_006E = var_0;
    var_13._id_103C0 = var_1;
    var_13._id_0134 = var_2;
    var_13._id_A90B = var_3;
    var_13._id_9CBF = var_4;
    var_13._id_7E78 = var_5;
    var_13._id_0317 = var_6;
    var_13._id_49A9 = var_7;
    var_13._id_02AF = var_8;
    var_13._id_02FA = var_9;
    var_13._id_0455 = var_10;
    var_13._id_7C7C = var_11;
    var_13._id_42E3 = var_11;
    var_13._id_5698 = var_12;

    if ( isdefined( var_13._id_006E ) )
        var_13._id_006E._id_1D03 = 0;

    return var_13;
}

_id_8A50( var_0, var_1 )
{
    if ( istrue( self._id_5EAC ) )
        return 1;

    if ( isdefined( self._id_EA8A ) )
    {
        if ( isdefined( var_0._id_7E78 ) && var_0._id_7E78 == self._id_EA8A )
        {
            if ( istrue( var_1 ) )
                return 1;
            else if ( _func_010E( var_0._id_9CBF ) || var_0._id_9CBF == "MOD_FIRE" )
                return 1;
        }
    }

    return 0;
}

_id_8A51( var_0 )
{
    if ( istrue( self._id_A5CC ) )
        return 0;

    if ( !_id_8A50( var_0, 0 ) )
        return 0;

    switch ( var_0._id_A90B._id_0084 )
    {
        case "s4_thermite_mp":
        case "s4_molotov_mp":
        case "thermite_ap_mp":
        case "thermite_av_mp":
            return 0;
        default:
            break;
    }

    return 1;
}

_id_5EAC()
{
    self._id_5EAC = 1;
}

_id_5EAD()
{
    self._id_5EAC = undefined;
}
