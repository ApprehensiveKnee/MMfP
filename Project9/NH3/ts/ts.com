%nproc=24
%mem=2Gb
%chk=ts.chk

#p wb97xd/6-31g(d,p) opt=(Z-matrix,ts,calcfc,noeigentest,maxstep=35) nosym freq temperature=300 pop=full gfinput

nh3+h to nh2+h2 ts
 
0 2 !h gives 1 uncoupled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6   

hn2         1.0   
hn3         1.051 
hnh3       118.9681
hn4         1.0   
hnh4       119.0444
dih4       180.0392
xxh5         1.0215 F
xxhn5       76.9226 F
dih5        77.3649 F
hh6         1.0653
hhxx6      103.0712
dih6       179.9535
