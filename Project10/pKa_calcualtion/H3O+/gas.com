%mem=100Mb
%nprocshared=2

#p B3LYP/6-31+g(d,p) opt

h3o+ gas

1 1
 o
 h   1 ho2     
 h    1 ho3         2 hoh3      
 h    1 ho4         2 hoh4          3 dih4   
 
ho2         0.950000
ho3         0.950000
hoh3        109.471
ho4         0.950000
hoh4        109.471
dih4        120.000
 
 
