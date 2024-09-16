%mem=100Mb
%nprocshared=2

#p B3LYP/6-31+g(d,p) opt scrf=(smd,solvent=water)

ch3o- solution

-1 1
 c
 o   1 oc2     
 h    1 hc3         2 hco3      
 h    1 hc4         2 hco4          3 dih4   
 h    1 hc5         2 hco5          3 dih5   
 
oc2         1.380000
hc3         1.070000
hco3        109.471
hc4         1.070000
hco4        109.471
dih4        120.000
hc5         1.070000
hco5        109.471
dih5        240.000