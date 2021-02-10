
/* ----------------------------------------------------------------------------
Function: btc_fnc_civ_createFlower

Description:
    Add flower bouquets next to killed civilians.

Parameters:
    _city - City. [Object]
    _civKilled - Array of previous killed civilians. [Array]

Returns:

Examples:
    (begin example)
        [btc_city_all#0, [[getPosASL player, getDir player]]] call btc_fnc_civ_createFlower;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_city", objNull, [objNull]],
    ["_civKilled", [], [[]]]
];

_city setVariable [
    "btc_city_flowers", 
    _civKilled apply {
        _x params ["_posASL", "_dir"];

        private _flowers = createSimpleObject [selectRandom btc_type_flowers, _posASL];
        _flowers setDir _dir;

        _flowers
    }
];
