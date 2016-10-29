{'This template evaluates the square root of the}
{'numbers 0 through 5 and prints the output when}
{'the value of the square root is less than or}
{'equal to 1.5}
{for (x=0; x<=5; x++)}
   {if (sqrt(x)<=1.5)}
      x={x}, Square root of x={sqrt(x), %5.3f}
   {endif}
{endloop}
for
