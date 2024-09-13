%nproc=24
%mem=2Gb
%chk=ts.chk

#p B3LYP/6-31g(d,p) opt=(Z-Matrix,ts,calcfc) nosym freq temperature=300 pop=full gfinput

ch4+h to ch3+h2 ts
 
0 2 !h gives 1 uncopled electron
 c
 h   1 hc2     
 h    1 hc3         2 hch3      
 h    1 hc4         2 hch4          3 dih4   
 h    1 hc5         2 hch5          3 dih5   
xx    5 xxh6        1 xxhc6         4 dih6   
 h    5 hh7         6 hhxx7         1 dih7 

hc2         1.088 
hc3         1.088 
hch3       114.2253
hc4         1.088 
hch4       114.2137
dih4       134.0938
hc5         1.3607 
hch5       104.1445
dih5      -112.9416
xxh6         1.0   F
xxhc6       89.9651 F
dih6        70.1542 F
hh7         0.9061
hhxx7       90.026 
dih7       179.9285 



