%nproc=24
%mem=2Gb

#p B3LYP/6-31+g(d,p) opt scrf=(smd,solvent=water)

ch3cooh sol

0 1
 c
 o   1 oc2     
 o    1 oc3         2 oco3      
 h    2 ho4         1 hoc4          3 dih4   
 c    1 cc5         3 cco5          2 dih5   
 h    5 hc6         1 hcc6          3 dih6   
 h    5 hc7         1 hcc7          6 dih7   
 h    5 hc8         1 hcc8          6 dih8   
 
oc2         1.400000
oc3         1.220000
oco3        120.000
ho4         0.950000
hoc4        109.471
dih4          0.000
cc5         1.500000
cco5        120.000
dih5        180.000
hc6         1.070000
hcc6        109.471
dih6        180.000
hc7         1.070000
hcc7        109.471
dih7        120.000
hc8         1.070000
hcc8        109.471
dih8        240.000
 