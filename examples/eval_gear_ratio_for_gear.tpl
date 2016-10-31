function eval_gear_ratio_for_gear(x,y,gear,dyno_speed)
{
    num_gears = numpts(x)
    gear = saturation(gear, 1, num_gears-1)
    value = getval2(x,y,gear)
    initial_speed = dyno_speed*value    
    return initial_speed
}
