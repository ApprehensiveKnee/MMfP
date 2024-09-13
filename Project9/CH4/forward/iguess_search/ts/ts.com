%nproc=24
%mem=2Gb
%chk=ts.chk

#p B3LYP/aug-cc-pVTZ opt=(Z-Matrix,ts,calcfc) nosym temperature=300 pop=full gfinput

ch4+h to ch3+h2 ts
 
0 2 !h gives 1 uncopled electron
 c
 h   1 hc2     
 h    1 hc3         2 hch3      
 h    1 hc4         2 hch4          3 dih4   
 h    1 hc5         2 hch5          3 dih5   
xx    5 xxh6        1 xxhc6         4 dih6   
 h    5 hh7         6 hhxx7         1 dih7 

hc2         1.0892
hc3         1.0892
hch3       112.9203
hc4         1.0892
hch4       112.9179
dih4       129.6472
hc5         1.2929
hch5       105.7456
dih5      -115.1767
xxh6         1.0317
xxhc6       89.4183
dih6       124.415 
hh7         1.0486
hhxx7       90.6527
dih7       179.9443




 