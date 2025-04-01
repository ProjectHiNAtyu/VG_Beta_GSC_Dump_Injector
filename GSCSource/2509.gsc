// S4 GSC SOURCE
// Generated by https://github.com/xensik/gsc-tool

_id_021D()
{
    _id_80B5();
    _id_7F0B();
    _id_8030();
    _id_7EEA();
    _id_7EF0();
    _id_7EEB();
    _id_7EE9();
    level._id_2823 = 1;
}

_id_7F0B()
{
    var_0 = "mp/botClassTable.csv";
    level._id_2911 = [];
    var_1 = _id_2818();
    var_2 = 0;

    for (;;)
    {
        var_2++;
        var_3 = stopfxontag( var_0, 0, "botArchetype", var_2 );
        var_4 = stopfxontag( var_0, 0, "botPersonalities", var_2 );
        var_5 = stopfxontag( var_0, 0, "botDifficulties", var_2 );

        if ( !isdefined( var_3 ) || var_3 == "" )
            break;

        if ( !isdefined( var_4 ) || var_4 == "" )
            break;

        if ( !isdefined( var_5 ) || var_5 == "" )
            break;

        var_6 = [];

        foreach ( var_8 in var_1 )
            var_6[var_8] = stopfxontag( var_0, 0, var_8, var_2 );

        var_10 = _func_021A( var_3, "|" );
        var_11 = _func_021A( var_4, "| " );
        var_12 = _func_021A( var_5, "| " );

        foreach ( var_14 in var_10 )
        {
            var_14 = "archetype_" + var_14;
            var_6["loadoutArchetype"] = var_14;

            foreach ( var_16 in var_11 )
            {
                foreach ( var_18 in var_12 )
                {
                    var_19 = _id_281F( var_14, var_16, var_18, 1 );
                    var_20 = _func_020F();
                    var_20._id_968D = var_6;
                    var_19._id_967A[var_19._id_967A.size] = var_20;
                }
            }
        }
    }
}

_id_80B5()
{
    var_0 = "mp/botTemplateTable.csv";
    level._id_2912 = [];
    var_1 = _id_2818();
    var_2 = 0;

    for (;;)
    {
        var_2++;
        var_3 = stopfxontag( var_0, 0, "template_", var_2 );

        if ( !isdefined( var_3 ) || var_3 == "" )
            break;

        var_4 = "template_" + var_3;
        level._id_2912[var_4] = [];

        foreach ( var_6 in var_1 )
        {
            var_7 = stopfxontag( var_0, 0, var_6, var_2 );

            if ( isdefined( var_7 ) && var_7 != "" )
                level._id_2912[var_4][var_6] = var_7;
        }
    }
}

_id_7EE9()
{
    level._id_2905 = [];
    level._id_2905["cqb"] = [ "archetype_assault" ];
    level._id_2905["run_and_gun"] = [ "archetype_assault" ];
    level._id_2905["camper"] = [ "archetype_assault" ];
    level._id_2905["default"] = [ "archetype_assault" ];
}

_id_2730()
{
    return getdvarint( "scr_bot_custom_classes_allowed", 1 );
}

_id_281B( var_0, var_1, var_2 )
{
    if ( !isusingmatchrulesdata() || 1 )
        return 1;

    if ( !_id_2730() )
        return 0;

    if ( var_1 == "specialty_null" )
        return 1;

    if ( var_1 == "none" )
        return 1;

    if ( var_0 == "equipment" )
    {
        if ( getmatchrulesdata( "commonOption", "perkRestricted", var_1 ) )
            return 0;

        var_0 = "weapon";
    }

    var_3 = var_0 + "Restricted";
    var_4 = var_0 + "ClassRestricted";
    var_5 = "";

    switch ( var_0 )
    {
        case "weapon":
            var_5 = _id_0A7F::_id_6E59( var_1 );
            break;
        case "attachment":
            var_5 = _id_0A7F::_id_68C6( var_1 );
            break;
        case "killstreak":
            var_5 = var_2;
            break;
        case "perk":
            var_5 = "ability_" + level._id_2859[var_1];
            break;
        default:
            return 0;
    }

    if ( getmatchrulesdata( "commonOption", var_3, var_1 ) )
        return 0;

    if ( var_5 != "" && getmatchrulesdata( "commonOption", var_4, var_5 ) )
        return 0;

    return 1;
}

_id_280E( var_0 )
{
    var_1 = "none";
    var_2 = [ "veteran", "hardened", "regular", "recruit" ];
    var_2 = _id_077B::_id_1B94( var_2 );

    foreach ( var_4 in var_2 )
    {
        var_1 = _id_2815( "weap_statstable", var_0, "loadoutPrimary", self._id_2904, self._id_B010, var_4 );

        if ( var_1 != "none" )
            return var_1;
    }

    if ( isdefined( level._id_285D ) )
    {
        var_6 = _id_077B::_id_1B94( level._id_285D );

        foreach ( var_8 in var_6 )
        {
            foreach ( var_4 in var_2 )
            {
                var_1 = _id_2815( "weap_statstable", var_0, "loadoutPrimary", var_0["loadoutArchetype"], var_8, var_4 );

                if ( var_1 != "none" )
                {
                    self._id_2762 = var_8;
                    return var_1;
                }
            }
        }
    }

    if ( isusingmatchrulesdata() )
    {
        var_12 = 0.0;
        var_13 = 0;

        for ( var_14 = "none"; var_13 < 6 && ( !isdefined( var_1 ) || var_1 == "none" || var_1 == "" ); var_13++ )
        {
            if ( _id_0A69::_id_6B13( "defaultClasses", _id_2821(), var_13, "class", "inUse" ) )
            {
                var_1 = _id_2811( var_13, "loadoutPrimary" );

                if ( var_1 != "none" )
                {
                    var_12 = var_12 + 1.0;

                    if ( _func_01B6( 1.0 ) >= 1.0 / var_12 )
                        var_14 = var_1;
                }
            }
        }

        if ( var_14 != "none" )
        {
            self._id_2762 = "weapon";
            return var_14;
        }
    }

    self._id_2762 = "weapon";
    return level._id_2763;
}

_id_2821()
{
    if ( !isdefined( level._id_EF62 ) || !level._id_EF62 )
        return "allies";

    return scripts\mp\bots\bots::_id_27A7();
}

_id_2739()
{
    var_0 = [ "class1", "class2", "class3", "class4", "class5" ];

    if ( isusingmatchrulesdata() )
    {
        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        {
            if ( _id_0A69::_id_6B13( "defaultClasses", _id_2821(), var_1, "class", "inUse" ) )
                var_0[var_1] = var_1;
        }
    }

    var_2 = _id_077B::_id_BFC7( var_0 );
    var_4 = [];

    foreach ( var_6 in level._id_2818 )
    {
        if ( _func_0120( var_2 ) )
        {
            var_4[var_6] = _id_2812( var_2, var_6 );
            continue;
        }

        var_4[var_6] = _id_2811( var_2, var_6 );
    }

    return var_4;
}

_id_2863( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        var_1 = level._id_2900[var_0];

        if ( isdefined( var_1 ) )
        {
            var_2 = _func_021A( var_1, "| " );

            if ( var_2.size > 0 )
                _id_09D1::_id_28A2( _id_077B::_id_BFC7( var_2 ) );
        }
    }
}

_id_2818()
{
    var_0 = "mp/botClassTable.csv";

    if ( !isdefined( level._id_2818 ) )
    {
        level._id_2818 = [];
        var_1 = 3;

        for (;;)
        {
            var_2 = _func_021E( var_0, var_1, 0 );

            if ( var_2 == "" )
                break;

            level._id_2818[level._id_2818.size] = var_2;
            var_1++;
        }
    }

    return level._id_2818;
}

_id_281F( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_281C( var_0, var_1, var_2 );

    if ( !isdefined( level._id_2911 ) )
        level._id_2911 = [];

    if ( !isdefined( level._id_2911[var_4] ) && var_3 )
    {
        level._id_2911[var_4] = _func_020F();
        level._id_2911[var_4]._id_967A = [];
    }

    if ( isdefined( level._id_2911[var_4] ) )
        return level._id_2911[var_4];
}

_id_281E( var_0, var_1, var_2 )
{
    var_3 = _id_281F( var_0, var_1, var_2, 0 );

    if ( isdefined( var_3 ) && isdefined( var_3._id_967A ) && var_3._id_967A.size > 0 )
    {
        var_4 = _func_01B8( var_3._id_967A.size );
        return var_3._id_967A[var_4]._id_968D;
    }
}

_id_28EC( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_0A7F::_id_688D( var_0 );

    if ( isdefined( var_3 ) && var_3 != "none" )
    {
        if ( !_id_281B( "attachment", var_3, undefined ) )
            return 0;

        if ( !_id_077B::_id_1B78( var_4, var_3 ) )
            return 0;
    }

    var_5 = [];
    var_6 = _func_00D6( var_1, 0, var_1.size - 1 );
    var_7 = int( _func_00D6( var_1, var_1.size - 1, var_1.size ) );

    for ( var_8 = 1; var_8 < var_7; var_8++ )
    {
        var_9 = var_6 + var_8;

        if ( isdefined( var_2[var_9] ) && var_2[var_9] != "none" )
            var_5[var_5.size] = var_2[var_9];
    }

    for ( var_8 = 0; var_8 < var_5.size; var_8++ )
    {
        var_10 = 0;

        if ( var_3 == var_5[var_8] )
        {
            var_10++;

            if ( var_10 == 1 )
            {
                if ( !isdefined( level._id_156D[var_3] ) )
                    return 0;
            }
            else if ( var_10 > 1 )
                return 0;
        }
        else if ( isdefined( level._id_27D9[var_3] ) )
        {
            if ( isdefined( level._id_27D9[var_3][var_5[var_8]] ) )
                return 0;
        }
    }

    return 1;
}

_id_28EB( var_0, var_1, var_2 )
{
    if ( isdefined( var_1[var_0 + "Attachment"] ) && isdefined( level._id_26DC[var_1[var_0 + "Attachment"]] ) )
        return 1;

    if ( isdefined( var_1[var_0 + "Attachment2"] ) && isdefined( level._id_26DC[var_1[var_0 + "Attachment2"]] ) )
        return 1;

    if ( isdefined( var_1[var_0 + "Attachment3"] ) && isdefined( level._id_26DC[var_1[var_0 + "Attachment3"]] ) )
        return 1;

    return 0;
}

_id_2856( var_0 )
{
    return level._id_AFEC[var_0];
}

_id_AFEB( var_0, var_1 )
{
    if ( _id_2856( var_0 ) > 0 )
    {
        var_2 = [];
        var_2["type"] = var_1;
        var_2["name"] = var_0;
        level._id_2857[level._id_2857.size] = var_2;
        level._id_2859[var_0] = var_1;
    }
}

_id_8030()
{
    level._id_AFEC = [];
    var_0 = 1;

    for (;;)
    {
        var_1 = _func_021E( "mp/perktable.csv", var_0, 1 );

        if ( var_1 == "" )
            break;

        level._id_AFEC[var_1] = int( _func_021E( "mp/perktable.csv", var_0, 10 ) );
        var_0++;
    }

    level._id_AFEC["none"] = 0;
    level._id_AFEC["specialty_null"] = 0;
    level._id_2857 = [];
    level._id_2859 = [];
    var_0 = 1;

    for ( var_2 = "ability_null"; isdefined( var_2 ) && var_2 != ""; var_2 = _func_021E( "mp/cacabilitytable.csv", var_0, 1 ) )
    {
        var_2 = _func_00D6( var_2, 8 );

        for ( var_3 = 4; var_3 <= 13; var_3++ )
        {
            var_1 = _func_021E( "mp/cacabilitytable.csv", var_0, var_3 );

            if ( var_1 != "" )
                _id_AFEB( var_1, var_2 );
        }

        var_0++;
    }
}

_id_7EF0()
{
    level._id_2901 = [];
    level._id_2900 = [];
    var_0 = 0;

    for (;;)
    {
        var_1 = _func_021E( "mp/statstable.csv", var_0, 0 );

        if ( var_1 == "" )
            break;

        var_2 = _func_021E( "mp/statstable.csv", var_0, 4 );
        var_3 = _func_021E( "mp/statstable.csv", var_0, 38 );
        var_4 = _func_021E( "mp/statstable.csv", var_0, 40 );
        var_5 = _func_021E( "mp/statstable.csv", var_0, 39 );

        if ( var_4 != "" && var_2 != "" && var_5 != "" && var_3 != "" )
        {
            var_6 = "loadoutPrimary";

            if ( _id_0A7F::_id_8782( var_2 ) )
                var_6 = "loadoutSecondary";
            else if ( !_id_0A7F::_id_8780( var_2 ) )
            {
                var_0++;
                continue;
            }

            level._id_2900[var_2] = var_5;

            if ( !isdefined( level._id_2901[var_6] ) )
                level._id_2901[var_6] = [];

            var_7 = _func_021A( var_3, "|" );
            var_8 = _func_021A( var_5, "| " );
            var_9 = _func_021A( var_4, "| " );

            foreach ( var_11 in var_7 )
            {
                var_11 = "archetype_" + var_11;

                foreach ( var_13 in var_8 )
                {
                    foreach ( var_15 in var_9 )
                    {
                        var_16 = _id_281C( var_11, var_13, var_15 );

                        if ( !isdefined( level._id_2901[var_6][var_16] ) )
                            level._id_2901[var_6][var_16] = [];

                        var_17 = level._id_2901[var_6][var_16].size;
                        level._id_2901[var_6][var_16][var_17] = var_2;
                    }
                }
            }
        }

        var_0++;
    }
}

_id_2815( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "none";

    if ( var_2 == "loadoutSecondary" && _id_077B::_id_1B78( var_1, "specialty_twoprimaries" ) )
        var_2 = "loadoutPrimary";

    if ( !isdefined( level._id_2901 ) )
        return var_6;

    if ( !isdefined( level._id_2901[var_2] ) )
        return var_6;

    var_7 = _id_281C( var_3, var_4, var_5 );

    if ( !isdefined( level._id_2901[var_2][var_7] ) )
        return var_6;

    var_6 = _id_2814( level._id_2901[var_2][var_7], var_0, var_1, var_2 );
    return var_6;
}

_id_2813( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "specialty_null";

    if ( !isdefined( level._id_2857 ) )
        return var_6;

    if ( !isdefined( level._id_2858 ) )
        level._id_2858 = [];

    if ( !isdefined( level._id_2858[var_0] ) )
    {
        var_7 = _func_021A( var_0, "_" );
        var_7[0] = "";
        var_8 = 0;

        if ( _id_077B::_id_1B78( var_7, "any" ) )
            var_8 = 1;

        var_9 = [];

        foreach ( var_11 in level._id_2857 )
        {
            if ( var_8 || _id_077B::_id_1B78( var_7, var_11["type"] ) )
                var_9[var_9.size] = var_11["name"];
        }

        level._id_2858[var_0] = var_9;
    }

    if ( level._id_2858[var_0].size > 0 )
        var_6 = _id_2814( level._id_2858[var_0], var_1, var_2, var_3 );

    return var_6;
}

_id_28EA( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_4 - var_3 + 1;

    if ( isdefined( var_5 ) )
        var_6 = var_5;

    var_7 = 0;
    var_8 = int( _func_00D6( var_1, 11 ) );

    if ( var_0 == "specialty_twoprimaries" )
        return 0;

    if ( var_0 == "specialty_extra_attachment" )
        return 0;

    if ( !_id_281B( "perk", var_0 ) )
        return 0;

    for ( var_9 = var_8 - 1; var_9 > 0; var_9-- )
    {
        var_10 = "loadoutPerk" + var_9;

        if ( var_2[var_10] == "none" || var_2[var_10] == "specialty_null" )
            continue;

        if ( var_0 == var_2[var_10] )
            return 0;

        if ( var_9 >= var_3 && var_9 <= var_4 )
            var_7 = var_7 + _id_2856( var_2[var_10] );
    }

    if ( var_7 + _id_2856( var_0 ) > var_6 )
        return 0;

    return 1;
}

_id_2812( var_0, var_1 )
{
    var_2 = int( _func_00D6( var_0, 5, 6 ) ) - 1;

    switch ( var_1 )
    {
        case "loadoutPrimary":
            return scripts\cp_mp\hostmigration::_id_EC6A( level._id_37E5, var_2, 0 );
        case "loadoutPrimaryAttachment1":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 0 );
        case "loadoutPrimaryAttachment2":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 1 );
        case "loadoutPrimaryAttachment3":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 2 );
        case "loadoutPrimaryAttachment4":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 3 );
        case "loadoutPrimaryAttachment5":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 4 );
        case "loadoutPrimaryAttachment6":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 5 );
        case "loadoutPrimaryAttachment7":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 6 );
        case "loadoutPrimaryAttachment8":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 7 );
        case "loadoutPrimaryAttachment9":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 0, 8 );
        case "loadoutPrimaryCamo":
            return scripts\cp_mp\hostmigration::_id_EC6C( level._id_37E5, var_2, 0 );
        case "loadoutPrimaryReticle":
            return scripts\cp_mp\hostmigration::_id_EC6D( level._id_37E5, var_2, 0 );
        case "loadoutSecondary":
            return scripts\cp_mp\hostmigration::_id_EC6A( level._id_37E5, var_2, 1 );
        case "loadoutSecondaryAttachment1":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 0 );
        case "loadoutSecondaryAttachment2":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 1 );
        case "loadoutSecondaryAttachment3":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 2 );
        case "loadoutSecondaryAttachment4":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 3 );
        case "loadoutSecondaryAttachment5":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 4 );
        case "loadoutSecondaryAttachment6":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 5 );
        case "loadoutSecondaryAttachment7":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 6 );
        case "loadoutSecondaryAttachment8":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 7 );
        case "loadoutSecondaryAttachment9":
            return scripts\cp_mp\hostmigration::_id_EC6B( level._id_37E5, var_2, 1, 8 );
        case "loadoutSecondaryCamo":
            return scripts\cp_mp\hostmigration::_id_EC6C( level._id_37E5, var_2, 1 );
        case "loadoutSecondaryReticle":
            return scripts\cp_mp\hostmigration::_id_EC6D( level._id_37E5, var_2, 1 );
        case "loadoutEquipmentPrimary":
            return scripts\cp_mp\hostmigration::_id_EC5D( level._id_37E5, var_2 );
        case "loadoutEquipmentSecondary":
            return scripts\cp_mp\hostmigration::_id_EC5E( level._id_37E5, var_2 );
        case "loadoutStreak1":
            return scripts\cp_mp\hostmigration::_id_EC64( level._id_37E5, var_2, 0 );
        case "loadoutStreak2":
            return scripts\cp_mp\hostmigration::_id_EC64( level._id_37E5, var_2, 1 );
        case "loadoutStreak3":
            return scripts\cp_mp\hostmigration::_id_EC64( level._id_37E5, var_2, 2 );
        case "loadoutPerk6":
        case "loadoutPerk5":
        case "loadoutPerk4":
        case "loadoutPerk3":
        case "loadoutPerk2":
        case "loadoutPerk1":
            var_3 = int( _func_00D6( var_1, 11 ) ) - 1;
            var_4 = scripts\cp_mp\hostmigration::_id_EC66( level._id_37E5, var_2, var_3 );

            if ( var_4 == "" )
                return "specialty_null";

            return var_4;
        case "loadoutStreakType":
            return scripts\cp_mp\hostmigration::_id_6AF7( "support" );
    }

    return var_0;
}

_id_2811( var_0, var_1 )
{
    var_2 = _id_2821();
    var_3 = _id_0A69::_id_6B14( var_2, var_0 );
    return var_3[var_1];
}

_id_7EEA()
{
    level._id_26DD = [];
    level._id_26DC = [];
    var_0 = strtok( "mp/attachmenttable.csv" );

    for ( var_1 = 1; var_1 < var_0; var_1++ )
    {
        var_2 = _func_021E( "mp/attachmenttable.csv", var_1, 5 );
        var_3 = _func_021E( "mp/attachmenttable.csv", var_1, 20 );

        if ( var_2 != "" && var_3 != "" )
        {
            var_4 = _func_021E( "mp/attachmenttable.csv", var_1, 11 );

            if ( var_4 == "TRUE" )
                level._id_26DC[var_2] = 1;

            var_5 = _func_021A( var_3, "| " );

            foreach ( var_7 in var_5 )
            {
                if ( !isdefined( level._id_26DD[var_7] ) )
                    level._id_26DD[var_7] = [];

                if ( !_id_077B::_id_1B78( level._id_26DD[var_7], var_2 ) )
                {
                    var_8 = level._id_26DD[var_7].size;
                    level._id_26DD[var_7][var_8] = var_2;
                }
            }
        }
    }

    if ( !isdefined( level._id_27D9 ) )
    {
        level._id_27D9 = [];
        level._id_156D = [];
        var_10 = "mp/attachmentcombos.csv";
        var_11 = 0;

        for (;;)
        {
            var_11++;
            var_12 = _func_021E( var_10, 0, var_11 );

            if ( var_12 == "" )
                break;

            var_1 = 0;

            for (;;)
            {
                var_1++;
                var_13 = _func_021E( var_10, var_1, 0 );

                if ( var_13 == "" )
                    break;

                if ( var_13 == var_12 )
                {
                    if ( _func_021E( var_10, var_1, var_11 ) != "no" )
                        level._id_156D[var_13] = 1;

                    continue;
                }

                if ( _func_021E( var_10, var_1, var_11 ) == "no" )
                    level._id_27D9[var_12][var_13] = 1;
            }
        }
    }
}

_id_280F( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "none";

    if ( !isdefined( level._id_26DD ) )
        return var_5;

    if ( !isdefined( level._id_26DD[var_4] ) )
        return var_5;

    var_5 = _id_2814( level._id_26DD[var_4], var_0, var_1, var_2 );
    return var_5;
}

_id_7EEB()
{
    var_0 = "mp/camotable.csv";
    level._id_26F0 = [];
    var_1 = 0;

    for (;;)
    {
        var_2 = _func_021E( var_0, var_1, _id_06BB::_id_6927( "camoasset" ) );

        if ( !isdefined( var_2 ) || var_2 == "" )
            break;

        var_3 = _func_021E( var_0, var_1, _id_06BB::_id_6927( "bot_valid" ) );

        if ( isdefined( var_3 ) && int( var_3 ) )
            level._id_26F0[level._id_26F0.size] = var_2;

        var_1++;
    }
}

_id_2810( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "none";
    return var_5;
}

_id_281D( var_0 )
{
    var_1 = 8;

    if ( isdefined( var_0["loadoutPrimary"] ) && var_0["loadoutPrimary"] == "none" )
        var_1 = var_1 + 1;

    if ( isdefined( var_0["loadoutSecondary"] ) && var_0["loadoutSecondary"] == "none" )
        var_1 = var_1 + 1;

    if ( isdefined( var_0["loadoutEquipmentPrimary"] ) && var_0["loadoutEquipmentPrimary"] == "none" )
        var_1 = var_1 + 1;

    if ( isdefined( var_0["loadoutEquipmentSecondary"] ) && var_0["loadoutEquipmentSecondary"] == "none" )
        var_1 = var_1 + 1;

    return var_1;
}

_id_2822( var_0, var_1, var_2, var_3 )
{
    var_4 = 1;

    if ( _func_0121( var_2, "loadoutPrimaryAttachment" ) || _func_0121( var_2, "loadoutSecondaryAttachment" ) )
    {
        var_4 = _id_28EC( var_1["loadoutPrimary"], var_2, var_1, var_3 );
        return var_4;
    }

    switch ( var_2 )
    {
        case "loadoutArchetype":
            break;
        case "loadoutPrimary":
            var_4 = _id_281B( "weapon", var_3 );
            break;
        case "loadoutEquipmentSecondary":
        case "loadoutEquipmentPrimary":
            var_4 = _id_281B( "equipment", var_3 );
            break;
        case "loadoutPrimaryReticle":
            var_4 = _id_28EB( "loadoutPrimary", var_1, var_3 );
            break;
        case "loadoutPrimaryBuff":
            break;
        case "loadoutPrimaryCamo":
            var_4 = !isdefined( self._id_290F ) || var_3 == self._id_290F;
            break;
        case "loadoutSecondary":
            var_4 = var_3 != var_1["loadoutPrimary"];
            var_4 = var_4 && _id_281B( "weapon", var_3, undefined );
            break;
        case "loadoutSecondaryReticle":
            var_4 = _id_28EB( "loadoutSecondary", var_1, var_3 );
            break;
        case "loadoutSecondaryBuff":
            break;
        case "loadoutSecondaryCamo":
            var_4 = !isdefined( self._id_2910 ) || var_3 == self._id_2910;
            break;
        case "loadoutStreak3":
        case "loadoutStreak2":
        case "loadoutStreak1":
            var_4 = scripts\cp_mp\utility\weapon_utility::_id_27F8( var_3, "bots", undefined, var_1["loadoutStreakType"] );
            var_4 = var_4 && _id_281B( "killstreak", var_3, var_1["loadoutStreakType"] );
            break;
        case "loadoutStreakType":
            break;
        case "loadoutPerk12":
        case "loadoutPerk11":
        case "loadoutPerk10":
        case "loadoutPerk9":
        case "loadoutPerk8":
        case "loadoutPerk7":
        case "loadoutPerk6":
        case "loadoutPerk5":
        case "loadoutPerk4":
        case "loadoutPerk3":
        case "loadoutPerk2":
        case "loadoutPerk1":
            var_4 = _id_28EA( var_3, var_2, var_1, 1, 12, _id_281D( var_1 ) );
            break;
        case "loadoutPerk15":
        case "loadoutPerk14":
        case "loadoutPerk13":
            if ( var_1["loadoutStreakType"] != "streaktype_specialist" )
                var_4 = 0;
            else
                var_4 = _id_28EA( var_3, var_2, var_1, -1, -1 );

            break;
        case "loadoutPerk23":
        case "loadoutPerk22":
        case "loadoutPerk21":
        case "loadoutPerk20":
        case "loadoutPerk19":
        case "loadoutPerk18":
        case "loadoutPerk17":
        case "loadoutPerk16":
            if ( var_1["loadoutStreakType"] != "streaktype_specialist" )
                var_4 = 0;
            else
                var_4 = _id_28EA( var_3, var_2, var_1, 16, 23, 8 );

            break;
        default:
            break;
    }

    return var_4;
}

_id_2814( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "none";
    var_6 = undefined;
    var_7 = 0.0;

    if ( _id_077B::_id_1B78( var_0, "specialty_null" ) )
        var_5 = "specialty_null";

    if ( var_1 == "classtable_any" )
    {
        if ( !isdefined( self._id_4544 ) )
            self._id_4544 = _id_077B::_id_BFC7( [ "class1", "class2", "class3", "class4", "class5" ] );

        var_0 = [ self._id_4544 ];
    }

    foreach ( var_9 in var_0 )
    {
        var_10 = undefined;

        if ( _func_00D6( var_9, 0, 9 ) == "template_" )
        {
            var_10 = var_9;
            var_11 = level._id_2912[var_9][var_3];
            var_9 = _id_2814( _func_021A( var_11, "| " ), var_1, var_2, var_3, 1 );

            if ( isdefined( var_10 ) && isdefined( self._id_36CC[var_10] ) )
                return var_9;
        }

        if ( var_9 == "attachmenttable" )
            return _id_280F( var_1, var_2, var_3, self._id_B010, self._id_4968 );

        if ( var_9 == "weap_statstable" )
            return _id_2815( var_1, var_2, var_3, self._id_2904, self._id_B010, self._id_4968 );

        if ( var_9 == "camotable" )
            return _id_2810( var_1, var_2, var_3, self._id_B010, self._id_4968 );

        if ( _func_00D6( var_9, 0, 5 ) == "class" && int( _func_00D6( var_9, 5, 6 ) ) > 0 )
            var_9 = _id_2812( var_9, var_3 );

        if ( isdefined( level._id_2857 ) && _func_00D6( var_9, 0, 10 ) == "perktable_" )
            return _id_2813( var_9, var_1, var_2, var_3, self._id_B010, self._id_4968 );

        if ( _id_2822( var_1, var_2, var_3, var_9 ) )
        {
            var_7 = var_7 + 1.0;
            var_12 = _func_01B6( 1.0 );

            if ( var_12 < 1.0 / var_7 )
            {
                var_5 = var_9;
                var_6 = var_10;
            }
        }
    }

    if ( isdefined( var_6 ) )
        self._id_36CC[var_6] = 1;

    return var_5;
}

_id_2816( var_0 )
{
    self._id_36CC = [];

    foreach ( var_6, var_2 in var_0 )
    {
        var_3 = undefined;

        if ( !isdefined( var_3 ) )
        {
            var_5 = _func_021A( var_2, "| " );
            var_3 = _id_2814( var_5, var_2, var_0, var_6 );
        }

        var_0[var_6] = var_3;
    }

    return var_0;
}

_id_281A()
{
    var_0 = self _meth_802E();

    if ( var_0 == "default" )
    {
        _id_09D1::_id_289E( "default" );
        var_0 = self _meth_802E();
    }

    return var_0;
}

_id_2819()
{
    if ( !isdefined( self._id_2904 ) )
    {
        var_0 = self _meth_8039();
        var_1 = level._id_2905[var_0];
        var_2 = _func_01B8( var_1.size );
        self._id_2904 = var_1[var_2];
    }

    return self._id_2904;
}

_id_27A9()
{
    if ( isdefined( self._id_0309["botCustomClasses"] ) )
        return self._id_0309["botCustomClasses"];

    return [];
}

_id_27AA()
{
    if ( _id_27A9().size > 0 )
    {
        if ( isdefined( self._id_0309["botLauncherClassIndex"] ) )
        {
            var_0 = self._id_0309["botLauncherClassIndex"];
            return self._id_0309["botCustomClasses"][var_0];
        }
    }

    return undefined;
}

_id_26D5()
{
    if ( istrue( self._id_2861 ) )
        return 0;
    else if ( !isdefined( self._id_0309["botLastLoadout"] ) )
        return 0;
    else if ( istrue( self._id_C680 ) )
        return 0;
    else if ( isdefined( self._id_7536 ) && !self._id_7536 )
        return 0;

    return 1;
}

_id_2817( var_0 )
{
    while ( !isdefined( level._id_2823 ) )
        wait 0.05;

    while ( !isdefined( self._id_B010 ) )
        wait 0.05;

    var_1 = [];
    var_2 = _id_281A();
    self._id_4968 = var_2;
    var_3 = self _meth_8039();
    var_4 = _id_2819();

    if ( !isdefined( self._id_2808 ) )
        self._id_272F = 0;

    self._id_2808 = self._id_272F;

    if ( isdefined( self._id_0309["botLastLoadout"] ) && istrue( var_0 ) )
        return self._id_0309["botLastLoadout"];

    var_5 = !isdefined( self._id_0309["botLastLoadoutDifficulty"] ) || self._id_0309["botLastLoadoutDifficulty"] == var_2;
    var_6 = !isdefined( self._id_0309["botLastLoadoutPersonality"] ) || self._id_0309["botLastLoadoutPersonality"] == var_3;
    var_7 = 0;

    if ( !var_5 || !var_6 )
    {
        self._id_0309["botLastLoadout"] = undefined;
        self._id_0309["botCustomClasses"] = undefined;
        self._id_0309["botLauncherClassIndex"] = undefined;
        var_7 = 1;
    }

    var_8 = !var_7 && _id_26D5();

    if ( var_8 )
    {
        var_9 = 0.1;
        var_11 = _func_01B6( 1.0 ) >= var_9;

        if ( var_11 )
            return self._id_0309["botLastLoadout"];
    }

    self._id_2861 = undefined;

    if ( !var_7 )
    {
        var_12 = _id_27AA();
        var_13 = undefined;

        if ( isdefined( self._id_C680 ) && isdefined( var_12 ) )
        {
            self._id_C680 = undefined;
            self._id_2861 = 1;
            var_13 = var_12;
        }

        if ( !isdefined( var_13 ) )
        {
            var_14 = _id_27A9();
            var_15 = 0;

            if ( isdefined( var_12 ) )
            {
                if ( var_14.size < 5 )
                    var_15 = 1;
            }
            else if ( isdefined( self._id_C680 ) )
                var_15 = 1;
            else if ( var_14.size < 4 )
                var_15 = 1;

            if ( !var_15 )
                var_13 = _id_077B::_id_BFC7( var_14 );
        }

        if ( isdefined( var_13 ) )
        {
            self._id_272F++;
            self._id_0309["botLastLoadout"] = var_13;
            return var_13;
        }
    }

    var_16 = undefined;
    var_17 = _id_2730();

    if ( var_17 )
    {
        var_16 = _id_281E( var_4, var_3, var_2 );
        var_1 = _id_2816( var_16 );

        if ( isdefined( level._id_2777["gametype_loadout_modify"] ) )
            var_1 = self [[ level._id_2777["gametype_loadout_modify"] ]]( var_1 );

        if ( _id_282D( var_1 ) )
            var_17 = 0;
    }

    if ( !var_17 )
    {
        var_1 = _id_2739();
        _id_2863( var_1["loadoutPrimary"] );
    }

    if ( var_1["loadoutPrimary"] == "none" )
    {
        self._id_2762 = undefined;
        var_1["loadoutPrimary"] = _id_280E( var_1 );
        var_1["loadoutPrimaryCamo"] = "none";
        var_1["loadoutPrimaryAttachment"] = "none";
        var_1["loadoutPrimaryAttachment2"] = "none";
        var_1["loadoutPrimaryAttachment3"] = "none";
        var_1["loadoutPrimaryReticle"] = "none";

        if ( isdefined( self._id_2762 ) )
        {
            if ( self._id_2762 == "weapon" )
                _id_2863( var_1["loadoutPrimary"] );
            else
                _id_09D1::_id_28A2( self._id_2762 );

            var_3 = self._id_B010;
            self._id_2762 = undefined;
        }
    }

    var_18 = getdvar( "#x39983d27d3a566ff5" );

    if ( var_18 != "" )
        var_1["loadoutPrimary"] = var_18;

    var_19 = isdefined( self._id_C680 );

    if ( var_17 && _id_09D1::_id_27EB() )
    {
        if ( isdefined( var_1["loadoutPrimaryCamo"] ) && var_1["loadoutPrimaryCamo"] != "none" && !isdefined( self._id_290F ) )
            self._id_290F = var_1["loadoutPrimaryCamo"];

        if ( isdefined( var_1["loadoutSecondaryCamo"] ) && var_1["loadoutSecondaryCamo"] != "none" && !isdefined( self._id_2910 ) )
            self._id_2910 = var_1["loadoutSecondaryCamo"];

        if ( var_19 )
        {
            var_20 = level._id_2882[self _meth_802E()];

            if ( _id_281B( "weapon", var_20, undefined ) )
            {
                var_1["loadoutSecondary"] = level._id_2882;
                var_1["loadoutSecondaryAttachment"] = "none";
                var_1["loadoutSecondaryAttachment2"] = "none";
                self._id_2861 = 1;
            }

            self._id_C680 = undefined;
        }
    }

    var_1 = _id_2820( var_1 );

    if ( _id_09D1::_id_27EB() )
    {
        if ( _id_077B::_id_1B78( self._id_0309["loadoutPerks"], "specialty_twoprimaries" ) )
        {
            var_21 = _id_281E( "cqb", var_2 );
            var_1["loadoutSecondary"] = var_21["loadoutPrimary"];
            var_1["loadoutSecondaryAttachment"] = var_21["loadoutPrimaryAttachment"];
            var_1["loadoutSecondaryAttachment2"] = var_21["loadoutPrimaryAttachment2"];
            var_1 = _id_2816( var_1 );
            var_1 = _id_2820( var_1 );
        }

        if ( _id_077B::_id_1B78( self._id_0309["loadoutPerks"], "specialty_extra_attachment" ) )
        {
            var_22 = _id_281E( var_3, var_2 );
            var_1["loadoutPrimaryAttachment3"] = var_22["loadoutPrimaryAttachment2"];

            if ( _id_077B::_id_1B78( self._id_0309["loadoutPerks"], "specialty_twoprimaries" ) )
                var_1["loadoutSecondaryAttachment2"] = var_22["loadoutPrimaryAttachment2"];
            else
                var_1["loadoutSecondaryAttachment2"] = var_22["loadoutSecondaryAttachment2"];

            var_1 = _id_2816( var_1 );
            var_1 = _id_2820( var_1 );
        }
        else
        {
            var_1["loadoutSecondaryAttachment2"] = "none";

            if ( !_id_28EB( "loadoutSecondary", var_1, var_1["loadoutSecondaryReticle"] ) )
                var_1["loadoutSecondaryReticle"] = "none";
        }
    }

    self._id_272F++;
    self._id_0309["botLastLoadout"] = var_1;
    self._id_0309["botLastLoadoutDifficulty"] = var_2;
    self._id_0309["botLastLoadoutPersonality"] = var_3;

    if ( !isdefined( self._id_0309["botCustomClasses"] ) )
        self._id_0309["botCustomClasses"] = [];

    var_23 = self._id_0309["botCustomClasses"].size;
    self._id_0309["botCustomClasses"][var_23] = var_1;

    if ( var_19 )
        self._id_0309["botLauncherClassIndex"] = var_23;

    return var_1;
}

_id_2820( var_0 )
{
    self._id_0309["loadoutPerks"] = [];
    self._id_0309["specialistBonusStreaks"] = [];
    self._id_0309["specialistStreaks"] = [];
    self._id_0309["specialistStreakKills"] = [];
    var_1 = 0;
    var_2 = isdefined( var_0["loadoutStreakType"] ) && var_0["loadoutStreakType"] == "streaktype_specialist";

    if ( var_2 )
    {
        var_0["loadoutStreak1"] = "none";
        var_0["loadoutStreak2"] = "none";
        var_0["loadoutStreak3"] = "none";
    }

    foreach ( var_8, var_4 in var_0 )
    {
        if ( var_4 == "specialty_null" || var_4 == "none" )
            continue;

        if ( _func_00D6( var_8, 0, 11 ) == "loadoutPerk" )
        {
            var_5 = int( _func_00D6( var_8, 11 ) );

            if ( !var_2 && var_5 > 12 )
                continue;

            var_6 = scripts\mp\tac_ops\hostage_utility::_id_68E0( var_4 );

            if ( var_5 <= 12 )
                self._id_0309["loadoutPerks"][self._id_0309["loadoutPerks"].size] = var_6;
            else if ( var_5 <= 15 )
            {
                var_0["loadoutStreak" + ( var_1 + 1 )] = var_6 + "_ks";
                self._id_0309["specialistStreaks"][self._id_0309["specialistStreaks"].size] = var_6 + "_ks";
                var_7 = 0;

                if ( var_1 > 0 )
                    var_7 = self._id_0309["specialistStreakKills"][self._id_0309["specialistStreakKills"].size - 1];

                self._id_0309["specialistStreakKills"][self._id_0309["specialistStreakKills"].size] = var_7 + _id_2856( var_6 ) + 2;
                var_1++;
            }
            else
                self._id_0309["specialistBonusStreaks"][self._id_0309["specialistBonusStreaks"].size] = var_6;
        }
    }

    if ( var_2 && !isdefined( self._id_0309["specialistStreakKills"][0] ) )
    {
        self._id_0309["specialistStreakKills"][0] = 0;
        self._id_0309["specialistStreaks"][0] = "specialty_null";
    }

    if ( var_2 && !isdefined( self._id_0309["specialistStreakKills"][1] ) )
    {
        self._id_0309["specialistStreakKills"][1] = self._id_0309["specialistStreakKills"][0];
        self._id_0309["specialistStreaks"][1] = "specialty_null";
    }

    if ( var_2 && !isdefined( self._id_0309["specialistStreakKills"][2] ) )
    {
        self._id_0309["specialistStreakKills"][2] = self._id_0309["specialistStreakKills"][1];
        self._id_0309["specialistStreaks"][2] = "specialty_null";
    }

    return var_0;
}

_id_282D( var_0 )
{
    if ( isusingmatchrulesdata() )
    {
        if ( var_0["loadoutPrimary"] == "none" )
            return 1;
    }

    return 0;
}

_id_28A9()
{
    var_0 = _id_2819();
    var_1 = self _meth_8039();
    var_2 = _id_281A();
    var_3 = _id_281F( var_0, var_1, var_2, 0 );

    if ( isdefined( var_3 ) && isdefined( var_3._id_967A ) && var_3._id_967A.size > 0 )
    {
        self._id_37DE = ::_id_2817;
        return 1;
    }

    var_4 = _func_00D6( self._id_02BA, 0, self._id_02BA.size - 10 );
    self._id_37DE = undefined;
    return 0;
}

_id_281C( var_0, var_1, var_2 )
{
    return var_0 + "_" + var_1 + "_" + var_2;
}

_id_2832()
{

}
