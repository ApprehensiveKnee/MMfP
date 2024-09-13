%nproc=24
%mem=2Gb
%chk=ts.chk

#p B3LYP/6-31g(d,p) opt=(Z-Matrix,ts,calcfc,maxcycle=500,maxsteps=50) nosym freq temperature=300 pop=full gfinput

ch4+h to ch3+h2 ts
 
0 2 !h gives 1 uncopled electron
 c
 h   1 hc2     
 h    1 hc3         2 hch3      
 h    1 hc4         2 hch4          3 dih4   
 h    1 hc5         2 hch5          3 dih5   
xx    5 xxh6        1 xxhc6         4 dih6   
 h    5 hh7         6 hhxx7         1 dih7 

hc2         1.0878 
hc3         1.0878 
hch3       114.4709 
hc4         1.0878 
hch4       114.4567 
dih4       134.983  
hc5         1.381  
hch5       103.8354 
dih5      -112.5008 
xxh6         1.0317 
xxhc6       89.4183 
dih6       124.415  
hh7         0.9004 
hhxx7       90.5569 
dih7       179.9967 




 