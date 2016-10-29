{
nc=numcurves()
lc=nc-1
for (i=0;i<nc;i++)
x=curvex(i)
y=curvey(i)
if (!numpts(x))
else
xmax=indexofmax(x)
xmin=indexofmin(x)
ymax=indexofmax(y)
ymin=indexofmin(y)
"Curve:",%-15s;curvelabel(i);cr();
"X Minimum:",%-15s;"(";x[xmin],%1.10e;", ";y[xmin];")";cr()
"X Maximum:",%-15s;"(";x[xmax],%1.10e;", ";y[xmax];")";cr()
"Y Minimum:",%-15s;"(";x[ymin],%1.10e;", ";y[ymin];")";cr()
"Y Maximum:",%-15s;"(";x[ymax],%1.10e;", ";y[ymax];")";cr()
if (i<lc)
cr()
endif
endif
endloop
}
