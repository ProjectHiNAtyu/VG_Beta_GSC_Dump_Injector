// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_12A6( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1000;

    _id_12A7( var_0, var_1, var_2, var_3 );
}

_id_1219()
{
    if ( !isdefined( self._id_0B3E._id_62CE ) )
        return;

    if ( isdefined( self._id_0B3E._id_62CE._id_A693 ) )
        self notify( self._id_0B3E._id_62CE._id_A693, "gesture_cancel" );

    self._id_0B3E._id_62CE = undefined;
}

_id_7433( var_0 )
{
    self waittill( var_0, var_1 );

    if ( !isdefined( var_1 ) )
        var_1 = [ "undefined" ];

    if ( !isalive( var_1 ) )
        var_1 = [ var_1 ];

    var_2 = undefined;

    foreach ( var_4 in var_1 )
    {
        if ( var_4 == "start_gundown" )
        {
            self._id_01F9 = undefined;
            continue;
        }
        else if ( var_4 == "finish_early" )
        {
            self._id_0B3E._id_AE68 = undefined;
            continue;
        }
        else
            var_5 = [[ self._id_5D3D ]]( var_4, var_0 );

        if ( isdefined( var_5 ) )
            var_2 = var_5;
    }

    return var_2;
}

_id_62C8( var_0 )
{
    self endon( "gesture_timeout" );
    thread _id_62CD( var_0 );

    for (;;)
    {
        var_1 = _id_7433( "gesture" );

        if ( isdefined( var_1 ) )
            return var_1;
    }

    self notify( "gesture_finished" );
}

_id_62CD( var_0 )
{
    self endon( "gesture_finished" );
    wait( var_0 );
    self notify( "gesture_timeout" );
}

_id_628B( var_0 )
{
    self endon( "asm_terminated" );
    self endon( "death" );

    for (;;)
    {
        if ( !isdefined( self._id_0B3E._id_62CE ) )
            self waittill( "gesture_requested" );

        for (;;)
        {
            if ( !isdefined( self._id_0B3E._id_62CE ) )
                break;

            if ( self._id_0B3E._id_62CE._id_F22F < gettime() )
            {
                _id_1219();
                break;
            }

            if ( _id_0694::_id_23BD() )
            {
                var_1 = self _meth_8649();

                if ( !istrue( self._id_15A8 ) && var_1 > 135 )
                {
                    wait 0.1;
                    continue;
                }

                if ( self _meth_8472() < var_1 * 2.5 )
                {
                    wait 0.1;
                    continue;
                }
            }

            self._id_0B3E._id_62CE._id_90BD = _id_64A8( self._id_0B3E._id_62CE._id_628B, self._id_0B3E._id_62CE._id_0457 );
            var_2 = self _meth_8674( self._id_0B3E._id_62CE._id_90BD );

            if ( !isdefined( var_2 ) )
            {
                wait 0.1;
                continue;
            }

            self._id_01F9 = "disable";
            self._id_0081 = 0;

            if ( self._id_0B3E._id_62CE._id_4AA5 )
            {
                self._id_0155 = 1;
                self _meth_83EF();
            }

            var_4 = self._id_0B3E._id_62CE._id_A693;
            self._id_0B3E._id_62CE = undefined;
            self._id_0B3E._id_AE68 = 1;
            _id_62C8( _func_0079( var_2 ) );
            self._id_0B3E._id_AE68 = undefined;

            if ( isdefined( var_4 ) )
                self notify( var_4, "gesture_finish" );

            self._id_0155 = 0;
            self._id_01F9 = undefined;
            self _meth_8675();
            wait 0.4;
        }
    }
}

_id_62BE( var_0 )
{
    var_1 = [ "casual_point", "military_point", "beckon", "nvg_on", "nvg_off" ];

    if ( isdefined( self._id_0B3E._id_378D ) && var_0 == "beckon" )
        return 0;

    if ( _id_077B::_id_1B78( var_1, var_0 ) )
        return 1;

    return 0;
}

_id_12A7( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( self._id_0B3E._id_62CE ) )
        _id_1219();

    self._id_0B3E._id_62CE = _func_020F();
    self._id_0B3E._id_62CE._id_628B = var_0;
    self._id_0B3E._id_62CE._id_0457 = var_1;
    self._id_0B3E._id_62CE._id_F22F = gettime() + var_2;
    self._id_0B3E._id_62CE._id_A693 = var_3;
    self._id_0B3E._id_62CE._id_4AA5 = _id_62BE( var_0 );
    self notify( "gesture_requested" );
}

_id_37A5()
{
    return self._id_0B3E._id_3791 == 3;
}

_id_37A6()
{
    return self._id_0B3E._id_3791 == 4;
}

_id_64A8( var_0, var_1 )
{
    if ( isdefined( self._id_0B3E._id_378D ) )
    {
        if ( var_0 == "beckon" )
        {
            var_2 = _func_01B8( 3 ) + 1;

            if ( _id_37A5() )
                var_0 = var_0 + "_" + var_2 + "_l";
            else if ( _id_37A6() )
                var_0 = var_0 + "_" + var_2 + "_r";
        }
        else if ( var_0 == "glance" )
        {
            var_2 = _func_01B8( 2 ) + 1;

            if ( _id_37A5() )
                var_0 = var_0 + "_" + var_2 + "_l";
            else if ( _id_37A6() )
                var_0 = var_0 + "_" + var_2 + "_r";
        }
    }

    if ( isdefined( var_1 ) && ( var_0 == "casual_point" || var_0 == "military_point" || var_0 == "beckon" || var_0 == "stop" || var_0 == "look" || var_0 == "hide" ) )
    {
        var_3 = vectordot( var_1._id_02EA - self._id_02EA );
        var_4 = _func_000B( var_3 - self._id_0054[1] );
        var_5 = _func_0321( var_4, 22.5 );
        var_5 = _id_08C8::_id_9A8E( var_5 );
        return var_0 + var_5;
    }

    return var_0;
}

_id_1241()
{
    if ( isdefined( self._id_0B3E._id_62CE._id_A693 ) )
        self notify( self._id_0B3E._id_62CE._id_A693, "gesture_finished" );

    self._id_0B3E._id_62CE = undefined;
}

_id_358A( var_0, var_1, var_2 )
{
    var_3 = _id_0009::_id_1C55( var_1, self._id_0B3E._id_62CE._id_90BD );
    return var_3;
}

_id_B360( var_0, var_1, var_2 )
{
    self endon( var_1 + "_finished" );
    self._id_0B3E._id_0F19 = self._id_0B3E._id_62CE._id_A693;
    childthread _id_08C8::_id_D8C3( var_1, 0.2 );
    var_3 = _id_0009::_id_1C34( var_0, var_1 );
    var_4 = _id_0009::_id_1C46( var_1, var_3 );
    self _meth_8250( "face current" );

    if ( _id_0009::_id_1C1B( var_0, "notetrackAim" ) )
    {
        var_5 = _func_0077( var_4, 0.0, 1.0 );
        self._id_E837 = self._id_0054[1] + var_5;
    }

    self._id_0B3E._id_62CE = undefined;
    self _meth_85EB( var_1, var_3 );
    _id_0009::_id_1C66( var_0, var_1, var_4 );
    _id_0009::_id_1C1D( var_0, var_1, _id_0009::_id_1C42( var_0, var_1 ) );
    self _meth_8250( "face current" );

    if ( isdefined( self._id_0B3E._id_0F19 ) )
    {
        self notify( self._id_0B3E._id_0F19, "gesture_finished" );
        self._id_0B3E._id_0F19 = undefined;
    }
}

_id_391E( var_0, var_1, var_2 )
{
    if ( isdefined( self._id_0B3E._id_0F19 ) )
    {
        self notify( self._id_0B3E._id_0F19, "gesture_cancel" );
        self._id_0B3E._id_0F19 = undefined;
    }
}

_id_629D( var_0, var_1, var_2, var_3 )
{
    if ( _id_0694::_id_23BD() && istrue( self._id_62CB ) )
    {
        if ( isdefined( self._id_62CC ) )
        {
            if ( distancesquared( self._id_02EA, level._id_030F._id_02EA ) < self._id_62CC * self._id_62CC )
                return 1;
        }
        else
            return 1;
    }

    return _id_0009::_id_1C28( var_0, "finish_early" ) && _id_0694::_id_23BD();
}
