{templex_off}

*BeginTemplexFunction()
*BeginText()

function hyst_reg (x, y, newx, dvt)
{
npt1 = numpts(x);
npt2 = numpts(newx);
rx = array(npt1);
ry = array(npt1);
xlow = newx[0];
xup = newx[npt2-1];
ix = (0:(npt1 -1):1);
px = batch(ix, x, 0, 0.005);
dpx = derivative(ix, px);
n=0;
for(i=0;i<npt1;i++)
  if(xlow<px[i] && px[i]<xup)
    if(dvt == 1)
      if(dpx[i]>0)
        rx[n] = x[i];
        ry[n] = y[i];
        n++;
      endif
    elseif(dvt == -1)
      if(dpx[i]<0)
        rx[n] = x[i];
        ry[n] = y[i];
        n++;
      endif
    endif
  endif
endloop
N = n;
q = sum(rx);
K = {{N, q}, {q, sum(rx^2)}};
L = {sum(ry), sum(rx*ry)}';
A = inverse(K)*L;
newy = A[1]*newx + A[0];
return newy
}

*EndText()
*EndTemplexFunction()
{templex_on}
