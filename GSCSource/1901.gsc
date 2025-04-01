// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_D890( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self._id_02F2 _meth_82F6( "ui_out_of_range", 0 );

    if ( !isdefined( var_1 ) )
        var_1 = var_0._id_02EA;

    if ( !isdefined( var_4 ) )
        var_4 = 4000000;

    if ( !isdefined( var_5 ) )
        var_5 = 16000000;

    if ( isdefined( var_2 ) )
        var_0 thread _id_10ACA( var_2, var_3, var_4, var_5 );
    else
        var_0 thread _id_10ACB( var_1, var_4, var_5 );
}

_id_10ACA( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = "tag_origin";

    for (;;)
    {
        if ( !isdefined( var_0 ) )
        {
            self._id_02F2 _meth_82F6( "ui_out_of_range", 0 );
            return;
        }

        var_4 = var_0 gettagorigin( var_1 );
        var_5 = distancesquared( self._id_02EA, var_4 );

        if ( _id_06BB::_id_87BA() )
        {
            var_6 = var_5 / var_3;

            if ( var_6 <= 1 )
                self._id_02F2 _meth_82F6( "ui_out_of_range_meter", _func_0213( var_6 ) );
        }

        if ( var_5 >= var_2 )
            _id_10BBF( var_4, var_2, var_3, var_0, var_1 );

        waitframe();
    }
}

_id_10ACB( var_0, var_1, var_2 )
{
    self endon( "death" );

    for (;;)
    {
        var_3 = distancesquared( self._id_02EA, var_0 );

        if ( _id_06BB::_id_87BA() )
        {
            var_4 = var_3 / var_2;

            if ( var_4 <= 1 )
                self._id_02F2 _meth_82F6( "ui_out_of_range_meter", _func_0213( var_4 ) );
        }

        if ( var_3 >= var_1 )
            _id_10BBF( var_0, var_1, var_2 );

        waitframe();
    }
}

_id_10BBF( var_0, var_1, var_2, var_3, var_4 )
{
    for (;;)
    {
        if ( isdefined( var_3 ) )
            var_0 = var_3 gettagorigin( var_4 );

        var_5 = distancesquared( self._id_02EA, var_0 );
        var_6 = var_5 / var_2;
        self._id_02F2 _meth_82F6( "ui_out_of_range", var_6 );

        if ( _id_06BB::_id_87BA() )
            self._id_02F2 _meth_82F6( "ui_out_of_range_meter", _func_0213( var_6 ) );

        if ( isdefined( self._id_02F2._id_ACFF ) )
            self._id_02F2 thread [[ self._id_02F2._id_ACFF ]]( self._id_02F2 );

        if ( var_5 >= var_2 )
        {
            var_7 = _func_034C( "s4_v2_mp" );
            var_8 = "MOD_EXPLOSIVE";
            self._id_02F2 _meth_82F6( "ui_out_of_range", 0 );
            self _meth_80B7( 10000, self._id_02EA, self._id_02F2, self._id_02F2, var_8, var_7 );
            break;
        }
        else if ( var_5 < var_1 )
        {
            self._id_02F2 _meth_82F6( "ui_out_of_range", 0 );
            break;
        }

        waitframe();
    }
}
