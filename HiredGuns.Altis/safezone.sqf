player allowDamage false;

sleep 10;

safe = 1;

_safePoint = getMarkerPos "safezone";

_dis = player distance _safePoint;

if (_dis > 50 and _dis < 2000) then
{
	player allowDamage true;
	hintSilent composeText [ parseText "<t color='#e5c100' align='center'>You have left the Safe Spawn Zone! You will not be protected if you re-enter it!</t>"];
	safe = 0;
};

if (_dis >= 2000) then
{
	player allowDamage true;
	safe = 0;
};

while {safe==1} do
{
	sleep 15;

	_dis = player distance _safePoint;
	
	if (_dis > 50) then
	{
		player allowDamage true;
		hintSilent composeText [ parseText "<t color='#e5c100' align='center'>You have left the Safe Spawn Zone! You will not be protected if you re-enter it!</t>"];
		safe = 0;
	};

	if (!alive player) then
	{
		safe = 0;
	};
};