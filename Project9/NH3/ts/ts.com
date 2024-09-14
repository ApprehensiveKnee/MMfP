%nproc=24
%mem=2Gb
%chk=ts.chk

#p wb97xd/6-31g(d,p) opt=(Z-matrix,ts,calcfc) freq temperature=300 pop=full gfinput

nh3+h to nh2+h2 ts
 
0 2 !h gives 1 uncoupled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6   

hn2          1.02334 
hn3          1.16580  
hnh3       102.22437  
hn4          1.02334  
hnh4       102.23294  
dih4       252.06543 
xxh5         1.02150 F
xxhn5       76.92260 F
dih5        77.36490 F
hh6          0.96530 
hhxx6      118.08078 
dih6       159.45170