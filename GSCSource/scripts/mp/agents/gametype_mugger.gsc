// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_0271()
{
    _id_D78A();
}

_id_D78A()
{
    level._id_11C6["player"]["think"] = ::_id_11D6;
}

_id_11D6()
{
    thread scripts\mp\bots\bots_gametype_mugger::_id_283B();
}

_id_11E3()
{
    if ( !isdefined( self._id_ED6F ) )
        self._id_ED6F = [];

    if ( !isdefined( self._id_A474 ) )
        self._id_A474 = gettime() + 500;

    if ( gettime() > self._id_A474 )
    {
        self._id_A474 = gettime() + 500;
        var_0 = 0.78;

        if ( _func_0107( self._id_02F2 ) )
            var_0 = self _meth_8031();

        var_1 = self._id_02F2 _meth_815E();

        if ( isdefined( var_1 ) )
        {
            var_2 = self._id_02F2 scripts\mp\bots\bots_gametype_mugger::_id_2771( var_1, var_0 );
            self._id_ED6F = scripts\mp\bots\bots_gametype_conf::_id_2715( var_2, self._id_ED6F );
        }
    }

    self._id_ED6F = scripts\mp\bots\bots_gametype_conf::_id_2881( self._id_ED6F );
    var_3 = scripts\mp\bots\bots_gametype_conf::_id_2767( self._id_ED6F, 0 );

    if ( isdefined( var_3 ) )
    {
        if ( !isdefined( self._id_ED36 ) || distancesquared( var_3._id_411F, self._id_ED36._id_411F ) > 1 )
        {
            self._id_ED36 = var_3;
            _id_09D0::_id_2740();
            self _meth_8057( self._id_ED36._id_411F, 0, "objective", undefined, level._id_28CD );
        }

        return 1;
    }
    else if ( isdefined( self._id_ED36 ) )
    {
        self _meth_802A();
        self._id_ED36 = undefined;
    }

    return 0;
}
