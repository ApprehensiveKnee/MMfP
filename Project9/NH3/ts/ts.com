%nproc=24
%mem=2Gb
%chk=ts.chk

#p B3LYP/6-31g(d,p) opt=(internal,ts,calcfc,noeigentest,maxstep=35) nosym freq temperature=300 pop=full gfinput

nh3+h to nh2+h2 ts
 
0 2 !h gives 1 uncoupled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6   

hn2         1.0013 
hn3         1.0473 
hnh3       119.0837 
hn4         1.0013 
hnh4       119.085  
dih4       180.0329 
xxh5         1.0215
xxhn5       76.9226
dih5        77.3649
hh6         1.0653
hhxx6      103.0753 
dih6       179.9781 
