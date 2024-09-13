%nproc=24
%mem=2Gb
%chk=ch4+h.chk

#p B3LYP/6-31+g(d,p) opt=(Z-matrix,maxcycle=50,maxstep=35) temperature=300 pop=full gfinput

ch4+h
 
0 2 !h gives 1 uncopled electron
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
xx    3 xxh5        1 xxhn5         4 dih5   
 h    3 hh6         5 hhxx6         1 dih6   
 
hn2         1.030000
hn3         1.030000
hnh3        109.471
hn4         1.030000
hnh4        109.471
dih4        180.000
xxh5        1.000000
xxhn5        90.000
dih5         90.000
hh6         1.640000
hhxx6        90.000
dih6        180.000