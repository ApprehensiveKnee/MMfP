%mem=100Mb
%nprocshared=2

#p B3LYP/6-31+g(d,p) opt

h2o gas

0 1 
 o
 h   1 ho2     
 h    1 ho3         2 hoh3      
 
ho2         0.950000
ho3         0.950000
hoh3        109.471
 
 
