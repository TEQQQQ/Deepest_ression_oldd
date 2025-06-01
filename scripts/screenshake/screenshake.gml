// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(argument0, argument1) {

	var _amount = argument0;
	var _duration = argument1;

	if instance_exists(o_camera) {
		o_camera.screenshake_ = _amount;
		o_camera.alarm[0] = _duration;
	}	


}