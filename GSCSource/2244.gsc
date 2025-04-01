// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_4C9C( var_0, var_1, var_2 )
{
    self._id_0396 = 60;
    _id_08C8::_id_68DB();
    self._id_1C08._id_4249 = _func_020F();
    self._id_E05E = _id_077B::_id_E20C();
    self._id_E05E _meth_820B( self, "tag_eye" );
    self _meth_85E1( "speed" );
    self _meth_8706();
    thread _id_107FD( self._id_E05E );
}

_id_107FD( var_0 )
{
    self waittill( "death" );

    if ( isdefined( var_0 ) )
    {
        var_0 _meth_83F7();
        waitframe();
        var_0 _meth_809A();
    }
}

stoprequested( var_0, var_1, var_2, var_3 )
{
    return !_id_0694::_id_23BD() && !_id_0694::_id_23BB();
}

_id_A406( var_0, var_1, var_2, var_3 )
{
    var_4 = undefined;

    if ( isdefined( self._id_017D ) )
        var_4 = self._id_017D;
    else if ( isdefined( self._id_0B3E._id_0457 ) )
        var_4 = self._id_0B3E._id_0457;

    if ( !isdefined( var_4 ) )
        return 0;

    var_5 = _func_025A( var_4._id_02EA - self._id_02EA );
    var_6 = vectordot( var_5 );
    var_7 = _func_000B( var_6 - self._id_0054[1] );
    var_8 = var_7 < -35 || var_7 > 35;

    if ( var_8 )
        self._id_0B3E._id_47FC = var_6;

    return var_8;
}

_id_A408( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( self._id_0303 ) )
        return 0;

    if ( distance2dsquared( self._id_02EA, self._id_0303 ) < 4 )
        return 0;

    var_4 = vectordot( self._id_0261 );
    var_5 = _func_000B( var_4 - self._id_0054[1] );
    var_6 = var_5 < -46 || var_5 > 46;

    if ( var_6 )
        self._id_0B3E._id_47FC = var_4;

    return var_6;
}

_id_DBDF( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( self._id_0303 ) )
        return 0;

    if ( isdefined( self._id_9D22 ) )
        return 0;

    if ( !_id_0009::_id_1C28( var_0, "cover_approach" ) )
        return 0;

    var_4 = 128;
    var_5 = 96;
    var_6 = self _meth_8472();

    if ( var_6 > var_4 || var_6 < var_5 )
        return 0;

    return 1;
}

_id_3580( var_0, var_1, var_2 )
{
    return _id_0009::_id_1C55( var_1, "2" );
}

_id_B30A( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    self _meth_8018( "zonly_physics", 0 );
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    var_4 = _id_0009::_id_1C46( var_1, var_3 );
    var_5 = self._id_0303 - self._id_02EA;
    var_6 = vectordot( var_5 );
    var_7 = _func_00B0( var_4 );
    var_8 = _func_0077( var_4 );
    var_9 = _func_0130( var_5 );
    var_10 = _func_0130( var_7 ) / var_9;
    var_11 = self._id_0303;
    var_12 = var_11 - _func_01C2( var_7, ( 0, var_6, 0 ) );
    var_13 = var_6 + var_8;
    var_14 = int( 1000 * _func_0079( var_4 ) - 200 );
    self _meth_83D8();
    self _meth_85F9( var_12, ( 0, var_6, 0 ), var_11, ( 0, var_13, 0 ), var_14 );
    self._id_1C08._id_0062 = var_1;
    self _meth_85EB( var_1, var_3, var_10 );
    _id_0009::_id_1C1D( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ), var_1 );
}

_id_B30B( var_0, var_1, var_2 )
{
    self _meth_8614();
    self _meth_85FA();
}

_id_3615( var_0, var_1, var_2 )
{
    var_3 = _func_000B( self._id_0B3E._id_47FC - self._id_0054[1] );
    var_4 = [ "2", "3", "6", "9", "8", "7", "4", "1", "2" ];
    var_5 = _func_0321( var_3 );
    return _id_0009::_id_1C55( var_1, var_4[var_5] );
}

_id_B8FF( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    self _meth_85EB( var_1, var_3 );
    self._id_049A = 1;
    self._id_0B3E._id_F80C = var_3;
    _id_0009::_id_1C1D( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ), var_1 );
}

_id_B900( var_0, var_1, var_2 )
{
    self._id_049A = 0;
    self._id_0B3E._id_47FC = undefined;
    self._id_0B3E._id_F80C = undefined;
}

_id_B31F( var_0, var_1, var_2 )
{
    thread _id_B31E( var_0, var_1 );
    thread _id_B31D( var_0, var_1 );
    _id_0009::_id_1C59( var_0, var_1, 1, 0 );
}

_id_B31E( var_0, var_1 )
{
    self endon( var_1 + "_finished" );

    for (;;)
    {
        if ( isdefined( self._id_03E1 ) && isdefined( self._id_03E1._id_24D7 ) && self._id_03E1._id_24D7 )
        {

        }
        else
        {

        }

        waitframe();
    }
}

_id_B31D( var_0, var_1 )
{
    self endon( var_1 + "_finished" );

    for (;;)
    {
        while ( ( !isdefined( self._id_03E1 ) || !isdefined( self._id_03E1._id_24CB ) || !self._id_03E1._id_24CB ) && !istrue( self._id_5E89 ) )
            waitframe();

        self._id_E05E _meth_827B( "anml_dog_growl", "dog_growl", 1 );
        self._id_E05E waittill( "dog_growl" );

        if ( istrue( self._id_5E89 ) )
            self._id_5E89 = undefined;

        waitframe();
    }
}

_id_DB6C( var_0, var_1, var_2, var_3 )
{
    var_4 = isdefined( self._id_03E1 ) && isdefined( self._id_03E1._id_23F6 ) && self._id_03E1._id_23F6;
    return istrue( self._id_5E5C ) || var_4;
}

_id_A6A9( var_0, var_1, var_2, var_3 )
{
    return !_id_DB6C( var_0, var_1, var_2, var_3 );
}

_id_B30E( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    self _meth_85EB( var_1, var_3 );

    for (;;)
    {
        _id_0009::_id_1C1D( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ), var_1 );
        var_3 = _id_0009::_id_1C34( var_0, var_1 );
        self _meth_85EB( var_1, var_3 );
    }
}

_id_741B( var_0 )
{
    switch ( var_0 )
    {
        case "fs_bk_r_lg":
        case "fs_bk_l_lg":
        case "fs_fr_r_lg":
        case "fs_fr_l_sm":
        case "fs_fr_l_lg":
        case "fs_bk_r_sm":
        case "fs_bk_l_sm":
        case "fs_fr_r_sm":
            var_1 = undefined;

            if ( isdefined( self._id_01F3 ) )
            {
                var_1 = self._id_01F3;
                self._id_8FCB = var_1;
            }
            else if ( isdefined( self._id_8FCB ) )
                var_1 = self._id_8FCB;
            else
                var_1 = "dirt";

            if ( var_1 != "dirt" && var_1 != "concrete" && var_1 != "wood" && var_1 != "metal" )
                var_1 = "dirt";

            if ( var_1 == "concrete" )
                var_1 = "cement";

            var_2 = self._id_0B3E._id_02B7;
            return 1;
    }

    return 0;
}

_id_745D( var_0, var_1 )
{
    switch ( var_0 )
    {
        case "orient_start":
            if ( isdefined( self._id_0B3E._id_F80C ) && isdefined( self._id_0B3E._id_47FC ) )
            {
                var_2 = _id_0009::_id_1C46( var_1, self._id_0B3E._id_F80C );
                var_3 = self _meth_85F5( var_2 );
                var_4 = _func_0077( var_2, var_3, 1 );
                self _meth_8250( "face angle", self._id_0B3E._id_47FC - var_4 );
            }

            break;
        default:
            return 0;
    }

    return 1;
}

_id_4CA3( var_0, var_1 )
{
    if ( _id_741B( var_0 ) )
        return;

    if ( var_0 == "sound_dogstep_run_default" )
    {
        self _meth_827B( "dogstep_run_default" );
        return;
    }

    if ( _id_745D( var_0, var_1 ) )
        return;

    if ( var_0 == "dog_melee" )
    {
        if ( isdefined( self._id_017D ) && distance2dsquared( self._id_02EA, self._id_017D._id_02EA ) < self._id_9D82 )
        {
            var_2 = 50;

            if ( isdefined( self._id_F92D ) )
                var_2 = self._id_F92D;

            self._id_017D _meth_80B7( var_2, self geteye(), self, self, "MOD_MELEE", _func_034C( "s4_ks_dog_bite_mp" ) );
        }

        return;
    }

    var_3 = _func_00D6( var_0, 0, 3 );

    if ( var_3 != "ps_" )
        return;

    var_4 = _func_00D6( var_0, 3 );
    self _meth_827B( var_4 );
}
