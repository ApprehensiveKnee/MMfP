%nproc=24
%mem=2Gb

#p B3LYP/6-31+g(d,p) opt scrf=(smd,solvent=water)

ch3coo- sol

-1 1
 c
 o   1 oc2     
 o    1 oc3         2 oco3      
 c    1 cc4         3 cco4          2 dih4   
 h    4 hc5         1 hcc5          3 dih5   
 h    4 hc6         1 hcc6          5 dih6   
 h    4 hc7         1 hcc7          5 dih7   
 
oc2         1.400000
oc3         1.220000
oco3        120.000
cc4         1.500000
cco4        120.000
dih4        180.000
hc5         1.070000
hcc5        109.471
dih5        180.000
hc6         1.070000
hcc6        109.471
dih6        120.000
hc7         1.070000
hcc7        109.471
dih7        240.000
 
 
