%nproc=24
%mem=2Gb
%chk=ts.chk

#p B3LYP/6-31g(d,p) opt=(Z-Matrix,ts,calcfc,noeigentest) nosym freq temperature=300 pop=full gfinput

ch4+h to ch3+h2 ts
 
0 2 !h gives 1 uncopled electron
 c
 h   1 hc2     
 h    1 hc3         2 hch3      
 h    1 hc4         2 hch4          3 dih4   
 h    1 hc5         2 hch5          3 dih5   
xx    5 xxh6        1 xxhc6         4 dih6   
 h    5 hh7         6 hhxx7         1 dih7 

hc2         1.0876 
hc3         1.0877  
hch3       114.5554 
hc4         1.0876 
hch4       114.57    
dih4       135.4125 
hc5         1.3929 
hch5       103.6669  
dih5      -112.2117  
xxh6         1.0317 
xxhc6       89.4183 
dih6       124.415  
hh7         0.9098  
hhxx7       90.6659 
dih7       180.023  




 