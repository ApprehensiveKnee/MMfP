 %mem=100Mb
%nprocshared=2

#p B3LYP/6-31+g(d,p) opt

nh2- gas

-1 1
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 
hn2         1.030000
hn3         1.030000
hnh3        109.471
 
