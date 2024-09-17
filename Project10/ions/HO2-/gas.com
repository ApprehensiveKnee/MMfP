%mem=100Mb
%nprocshared=2

#p B3LYP/6-31+g(d,p) opt

ho2- gas

-1 1
 o
 o   1 oo2     
 h    1 ho3         2 hoo3      
 
oo2         1.260000
ho3         0.950000
hoo3        109.471
