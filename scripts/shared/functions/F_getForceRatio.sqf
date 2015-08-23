
_sector = _this select 0;

_actual_capture_size = capture_size;
if ( _sector in sectors_bigtown ) then {
	_actual_capture_size = capture_size * 2;
};

_red_forces = ( [ (markerpos _sector), capture_size, RESISTANCE ] call F_getUnitsCount ) + ( [ (markerpos _sector), capture_size, EAST ] call F_getUnitsCount );
_blue_forces = [ (markerpos _sector), capture_size, WEST ] call F_getUnitsCount;
_ratio = -1;

if (_red_forces > 0) then {
	_ratio = _blue_forces / ( _red_forces + _blue_forces );
} else {
	if ( _sector in blufor_sectors || _blue_forces != 0 ) then {
		_ratio = 1;
	} else {
		_ratio = 0;
	};
};

_ratio