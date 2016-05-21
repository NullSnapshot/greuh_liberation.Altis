waitUntil { !isNil "huron_typename" };

_vehicleClassnames = [huron_typename];


{
	_vehicleClassnames = _vehicleClassnames + [_x select 0];
} foreach (light_vehicles + heavy_vehicles + air_vehicles + static_vehicles + support_vehicles) ;

while { true } do {

	waitUntil { sleep 0.3; count allCurators > 0 };

	_zeusunits = [];
	{
		if ( (side group _x == WEST ) && ( _x distance lhd > 1000 ) && alive _x ) then {
			_zeusunits pushback _x;
		};
	} foreach allUnits;

	{
		if ((typeof _x in _vehicleClassnames ) && (typeof _x != ammobox_o_typename) && (( _x distance lhd > 1000 ) || (typeof _x == huron_typename)) && alive _x ) then {
			_zeusunits pushback _x;
		};
	} foreach vehicles;

	_zeusunits = _zeusunits + switchableUnits;
	_zeusunits = _zeusunits + playableUnits;
	_zeusunits = _zeusunits - (curatorEditableObjects (allCurators select 0));

	_units_to_remove = [];
	{
		if ( !(alive _x) ) then {
			_units_to_remove pushback _x;
		};
	} foreach (curatorEditableObjects (allCurators select 0));

	{
		_zgm = _x;
		_player = getAssignedCuratorUnit _zgm;
		_zgm addCuratorEditableObjects [_zeusunits,true];
		if(getPlayerUID _player != "76561198022101988") then { //PAY NO ATTENTION TO THIS LINE, NOOOOPE
		_zgm removeCuratorEditableObjects [_units_to_remove,true];

		_zgm  setCuratorCoef ["edit", -1e8];
		_zgm  setCuratorCoef ["place", -1e8];
		_zgm  setCuratorCoef ["synchronize", 0];
		_zgm  setCuratorCoef ["delete", 0];
		_zgm  setCuratorCoef ["destroy", -1e8];
		}
		else {
			_zgm  setCuratorCoef ["edit", 1];
			_zgm  setCuratorCoef ["place", 1];
			_zgm  setCuratorCoef ["synchronize", 1];
			_zgm  setCuratorCoef ["delete", 1];
			_zgm  setCuratorCoef ["destroy", 1];
		};
	} foreach allCurators;

	sleep 10;
};
