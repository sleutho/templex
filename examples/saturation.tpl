
function saturation(x,lower_bound,upper_bound)
{
	if (x<lower_bound)
		return lower_bound
	elseif (x>upper_bound)
		return upper_bound
	else
		return x
	endif
}
