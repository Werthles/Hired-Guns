_unit = _this select 0;
_causedBy = _this select 1;
_damage = _this select 2;


_sideCausedBy = side _causedBy;
_health = damage _unit;

if (_sideCausedBy == resistance) then
{
	_health = _health - _damage;
};