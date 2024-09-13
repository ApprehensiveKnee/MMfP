%nproc=24
%mem=2Gb
%chk=ch4+h_to_ch3+h2.chk

#p B3LYP/6-31g(d,p) opt=Z-Matrix nosym temperature=300 pop=full gfinput

ch4+h to ch3+h2 pushing hc5
 
0 2 !h gives 1 uncopled electron
 c
 h   1 hc2     
 h    1 hc3         2 hch3      
 h    1 hc4         2 hch4          3 dih4   
 h    1 hc5         2 hch5          3 dih5   
xx    5 xxh6        1 xxhc6         4 dih6   
 h    5 hh7         6 hhxx7         1 dih7 

hc2         1.0928
hc3         1.0927
hch3       109.4909
hc4         1.0928
hch4       109.4922
dih4       120.0584
hc5         1.0929 S 20 +0.1
hch5       109.445 
dih5      -119.964 
xxh6         1.0317 F
xxhc6       89.4183 F
dih6       124.415 F
hh7         2.6004
hhxx7       90.5818
dih7       180.0009





 