%NProcShared=2
%mem=500MB

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput

water dimer

0 1
o
h   1 ho2     
h    1 ho3         2 hoh3      
o    1 oo4         2 ooh4          3 dih4   
h    4 ho5         3 hoh5          1 dih5   
h    4 ho6         3 hoh6          5 dih6   
 
ho2         0.950000
ho3         0.950000
hoh3        109.471
oo4         2.952000
ooh4        116.000
dih4          0.000
ho5         0.950000
hoh5        109.471
dih5         50.000
ho6         0.950000
hoh6        109.471
dih6       -109.471

---