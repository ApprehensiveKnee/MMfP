%nproc=24
%mem=2Gb
%chk=ts.chk

#p wb97xd/6-31g(d,p) opt=(Z-matrix,ts,calcfc) nosym freq temperature=300 pop=full gfinput

nh3+h to nh2+h2 ts
 
0 2 !h gives 1 uncoupled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6   

hn2         1.0254 
hn3         1.2476 
hnh3       100.788  
hn4         1.0254 
hnh4       100.7829 
dih4       106.4795 
xxh5         1.0    F
xxhn5       90.0    F
dih5        90.0    F
hh6         0.9111 
hhxx6       71.7624 
dih6       165.8207 