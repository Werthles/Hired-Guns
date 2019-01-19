/* _as = 0;
while {_as == 0} do {

	if (!isNull player) then {
		GRPMNU_groupActions = player addAction["<t color='#EB7FAF'>Groups Menu</t>", "scripts\groupsMenu\groupActions.sqf", nil,-200, false, false, "", "_target == vehicle _this || _target == _this"];
		player addEventHandler ["Respawn", {
			GRPMNU_groupActions = player addAction["<t color='#EB7FAF'>Groups Menu</t>", "scripts\groupsMenu\groupActions.sqf", nil,-200, false, false, "", "_target == vehicle _this || _target == _this"];
		}];
		_as = 1;
	};
	sleep 1;
}; */
GRPMNU_groupActions = player addAction["<t color='#EB7FAF'>Groups Menu</t>", "scripts\groupsMenu\groupActions.sqf", nil,-200, false, false, "", "_target == vehicle _this || _target == _this"];