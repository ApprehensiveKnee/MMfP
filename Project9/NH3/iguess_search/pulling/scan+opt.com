%nproc=24
%mem=2Gb
%chk=nh3+h_to_nh2+h2.chk

#p wb97xd/6-31g(d,p) opt=Z-Matrix nosym temperature=300 pop=full gfinput

nh3+h to nh2+h2 pulling hh7
 
0 2 !h gives 1 uncopled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6   
 
hn2         1.0013 
hn3         1.0018 
hnh3       120.0077 
hn4         1.0013 
hnh4       120.0077 
dih4       180.0    
xxh5         1.0215 F
xxhn5       76.9226 F
dih5        77.3649 F
hh6         2.4653 S 18 -0.1
hhxx6      103.0774 
dih6       180.0   
 
