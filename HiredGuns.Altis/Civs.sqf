//[<newUnit>,<oldUnit>,<respawn>,<respawnDelay>]
_newUnit = _this select 0;
_oldUnit = _this select 1;
_respawn = _this select 2;
_respawnDelay = _this select 3;

_newUnit addWeaponGlobal "arifle_Mk20_ACO_pointer_F";
_newUnit addMagazineGlobal "30Rnd_556x45_Stanag";
_newUnit addMagazineGlobal "30Rnd_556x45_Stanag";