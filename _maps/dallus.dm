/*
You need to have 7 z-levels of the same size dimensions.
z-level order is important, the order you put them in inside this file will determine what z level number they are assigned ingame.
Names of z-level do not matter, but order does greatly, for instances such as checking alive status of revheads on z1
current as of 2015/05/11
z1 = station
z2 = centcomm
z3 = telecommunications center
z4 = engineering ship
z5 = mining
z6 = russian derelict
z7 = empty
z8 = Science Outpost
*/

#if !defined(MAP_FILE)

        #include "map_files\dallus/dallus.dmm"
        #include "map_files\dallus\z2.dmm"
        #include "map_files\dallus\z3.dmm"
        #include "map_files\dallus\z4.dmm"
        #include "map_files\generic\z5.dmm"
        #include "map_files\dallus\z6.dmm"
        #include "map_files\generic\z7.dmm"
        #include "map_files\dallus\z8.dmm"

        #define MAP_FILE "dallus.dmm"
        #define MAP_NAME "Dallus"
        #define MAP_TRANSITION_CONFIG list(\
DECLARE_LEVEL(MAIN_STATION, CROSSLINKED, list(STATION_LEVEL,STATION_CONTACT,REACHABLE,AI_OK)),\
DECLARE_LEVEL(CENTCOMM, SELFLOOPING, list(ADMIN_LEVEL, BLOCK_TELEPORT, IMPEDES_MAGIC)),\
DECLARE_LEVEL(TELECOMMS, CROSSLINKED, list(REACHABLE, BOOSTS_SIGNAL, AI_OK)),\
DECLARE_LEVEL(CONSTRUCTION, CROSSLINKED, list(REACHABLE)),\
DECLARE_LEVEL(MINING, CROSSLINKED, list(REACHABLE, STATION_CONTACT, HAS_WEATHER, ORE_LEVEL, AI_OK)),\
DECLARE_LEVEL(DERELICT, CROSSLINKED, list(REACHABLE)),\
DECLARE_LEVEL(EMPTY_AREA, CROSSLINKED, list(REACHABLE)))

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring Dallus.

#endif
