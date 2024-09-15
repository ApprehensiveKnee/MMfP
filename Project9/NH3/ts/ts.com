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

hn2         1.0294 
hn3         2.5164
hnh3       128.9643 
hn4         1.0293 
hnh4       128.1516 
dih4       180.2226 
xxh5         1.0    F
xxhn5       90.0    F
dih5        90.0    F
hh6         5.1621 
hhxx6       79.927  
dih6       176.0252 