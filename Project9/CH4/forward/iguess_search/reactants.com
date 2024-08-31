%nprocshared=2
%mem=500MB
%chk=ch4+h_to_ch3+h2.chk

#p B3LYP/6-31+g(d,p) opt freq temperature=300 pop=full gfinput

ch4+h to ch3+h2
 
0 2 !h gives 1 uncopled electron
 c
 h   1 hc2     
 h    1 hc3         2 hch3      
 h    1 hc4         2 hch4          3 dih4   
 h    1 hc5         2 hch5          3 dih5   
 h    1 hc6         5 hch6          3 dih6   
variables:
hc2         1.089000
hc3         1.089000
hch3        109.471
hc4         1.089000
hch4        109.471
dih4        120.000
hch5        109.471
dih5       -120.000
hc6         2.570000
hch6          0.000
dih6          0.000
constants:
hc5         1.089000
 
