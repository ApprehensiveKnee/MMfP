%nproc=24
%mem=2Gb

#p B3LYP/6-31+g(d,p) opt scrf=(smd,solvent=water)

so4h- sol

-1 1
 s
 o   1 os2     
 o    1 os3         2 oso3      
 o    1 os4         2 oso4          3 dih4   
 o    1 os5         3 oso5          2 dih5   
 h    2 ho6         1 hos6          5 dih6   
 
os2         1.660000
os3         1.660000
oso3        109.471
os4         1.510000
oso4        110.000
dih4        120.000
os5         1.510000
oso5        110.000
dih5        120.000
ho6         0.950000
hos6        109.471
dih6        180.000
 
 
