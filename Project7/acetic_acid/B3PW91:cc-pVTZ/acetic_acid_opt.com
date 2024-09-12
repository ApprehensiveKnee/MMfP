%nproc=24
%mem=2Gb

#p B3PW91/cc-pVTZ opt(internal) pop=full gfinput 

acetic acid opt
 
0 1
 c
 c   1 cc2     
 h    2 hc3         1 hcc3      
 h    2 hc4         1 hcc4          3 dih4   
 h    2 hc5         1 hcc5          3 dih5   
 o    1 oc6         2 occ6          3 dih6   
 o    1 oc7         6 oco7          2 dih7   
 h    7 ho8         1 hoc8          6 dih8   
 
cc2         1.500000
hc3         1.070000
hcc3        109.471
hc4         1.070000
hcc4        109.471
dih4        120.000
hc5         1.070000
hcc5        109.471
dih5       -120.000
oc6         1.220000
occ6        120.000
dih6        180.000
oc7         1.380000
oco7        120.000
dih7        180.000
ho8         0.947000
hoc8        109.471
dih8        180.000
 
 
