{
nc=numcurves()
lc=nc-1
for (i=0;i<nc;i++)
x=curvex(i)
y=curvey(i)
t=numpts(x)
if (!numpts(x))
else
"XYDATA, ";curvelabel(i);cr()
if (t>numpts(y))
t=numpts(y)
endif
table(x,y,"%1.10e    %1.10e",0,t-1)
"ENDATA";cr()
cr()
endif
endloop
}
