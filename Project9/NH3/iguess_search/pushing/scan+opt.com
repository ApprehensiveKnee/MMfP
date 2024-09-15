%nproc=24
%mem=2Gb
%chk=nh3+h_to_nh2+h2.chk

#p wb97xd/6-31g(d,p) opt=(Z-Matrix) scf=(Maxconventionalcycles=100,xqc) nosym temperature=300 pop=full gfinput

nh3+h to nh2+h2 pushing hn3
 
0 2 !h gives 1 uncopled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6     
 
hn2         1.0159
hn3         1.0164 S 18 +0.1
hnh3       108.0326
hn4         1.0159
hnh4       108.0322
dih4       116.6638
xxh5         1.0   F
xxhn5       90.0   F
dih5        90.0   F
hh6         2.4111
hhxx6       84.2169
dih6       176.4105
