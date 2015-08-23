waitUntil { !isNil "save_is_loaded" };

please_recalculate = true;

while { true } do {
	waitUntil { please_recalculate };
	please_recalculate = false;
	
	[] call recalculate_caps;
	
	_new_manpower_used = 0;
	_new_fuel_used = 0;
	
	{
		if ( ( side _x == WEST ) && ( !isPlayer _x ) ) then {
			if ( ( _x distance lhd > 500 ) && ( _x distance ( getmarkerpos "respawn_west") > 100 ) && ( alive _x ) ) then {
				_unit = _x;
				{
					if ( ( _x select 0 ) == typeof _unit ) then {
						_new_manpower_used = _new_manpower_used + (_x select 1);
						_new_fuel_used = _new_fuel_used + (_x select 3);
					};
				} foreach infantry_units;
			};
		};
	} foreach allUnits;
	
	{
		if ( ( _x distance lhd > 500 ) && ( alive _x ) ) then {
			_unit = _x;
			{
				if ( ( _x select 0 ) == typeof _unit ) then {
					_new_manpower_used = _new_manpower_used + (_x select 1);
					_new_fuel_used = _new_fuel_used + (_x select 3);
				};
			} foreach ( buildings + light_vehicles + heavy_vehicles + air_vehicles + static_vehicles + support_vehicles );

		};
	} foreach vehicles;
	
	resources_infantry = _new_manpower_used;
	resources_fuel = _new_fuel_used;
};