{ofile = {"st_sqr.out", "st_sqrt.out", "st_sine.out"}}

{open ofile[0]}
   {for (x=0; x<=5; x++)}
      x={x}; Square of x= {x^2, %5.3f}
   {endloop}
{close}

{open ofile[1]}
   {for (x=0; x<=5; x++)}
      x={x}; Square root of x= {sqrt(x), %5.3f}
   {endloop}
{close}

{open ofile[2]}
   {for (x=0; x<=5; x++)}
      x={x}; Sine of x= {sin(x), %5.3f}
   {endloop}
{close}

The following files have been written: st_sqr.out
                                       st_sqrt.out
                                       st_sine.out
