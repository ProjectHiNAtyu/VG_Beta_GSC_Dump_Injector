[ About ]

This GSC Injector's source code is based on the GSC Injection process from Project Donetsk.
I would like to express my utmost respect and gratitude to Mr. Sku-111 for devising and implementing this injection process.
Thank you always, and I support you.

----------

[ Caution ]

Regarding the GSC compiler and decompiler functions, many of the instructions are incorrect because we have not analyzed all of the hash tokens.
Since I play Vanguard at Retail, I don't intend to make many modifications to the gsc-tool for the Beta build.
If you want to seriously create GSC for the Beta build, please modify the gsc-tool's hash tokens on your own.

----------

[ Implemented ]

The following items are currently completed:

- dll Injector
- GSC Injector
- GSC Dumper
- GSCBIN Dump Data

----------

[ Custom GSC ( gsc-tool ) ]

Currently, the following GSC functions and tokens can be used.
All other commands are almost always incorrect and may cause a crash.

----------

s4_func

- getxuid
- waitframe
- setdvarifuninitialized
- int
- getdvarint
- getdvar
- isalive
- istrue
- isdefined
- gettime
- spawnstruct
- isint
- getentitynumber
- loadfx
- precachemodel
- getentarray
- visionsetnaked
- getent
- setdvar
- randomfloat
- wait
- spawn
- endon

----------
s4_mesh

- iprintln
- iprintlnbold
- ishost
- linkto
- delete

----------

s4_token

- main
- _effect
- isnightmap
- init
- buildweapon
- getweaponrootname
- origin
- _bullet_trace
- killcament
- getgametype

- scripts\engine\trace::
- scripts\engine\utility::
- scripts\mp\utility\player::
- scripts\cp_mp\utility\game_utility::
- scripts\mp\art::
- scripts\mp\class::
- scripts\mp\utility\weapon::
- scripts\cp_mp\vehicles\vehicle_spawn::
- scripts\mp\utility\game::
