// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    _id_0A28::_id_C25C( "steel_bib_crate", ::_id_FED6 );
}

_id_FED6( var_0 )
{
    if ( isdefined( level._id_8DD2 ) )
    {
        if ( !level [[ level._id_8DD2 ]]( var_0 ) )
            return 0;
    }

    if ( isdefined( level._id_8DAD ) )
    {
        if ( !level [[ level._id_8DAD ]]( var_0 ) )
            return 0;
    }

    if ( self._id_EB06._id_88BA )
        self waittill( "super_use_finished" );

    var_1 = self._id_EB06._id_E768._id_C17B;
    _id_0A43::_id_AFCB( "super_steel_bib_crate" );
    _id_0A43::_id_AFC6();
    self waittill( "super_use_finished" );
    _id_0A43::_id_AFCB( var_1 );
    return 1;
}
