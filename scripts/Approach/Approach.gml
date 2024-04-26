/// @description  Approach(start, end, shift);
/// @function  Approach
/// @param {Real} _start
/// @param {Real} _end
/// @param {Real} _shift
function Approach(_start, _end, _shift) {

	if (_start < _end) {
	    return min(_start + _shift, _end); 
	} else  {
	    return max(_start - _shift, _end);
	}

}
