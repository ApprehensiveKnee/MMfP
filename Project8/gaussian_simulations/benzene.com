%numprocshared=2
%mem=500MB

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput

benzene

0 1
c
c   1 cc2     
h    1 hc3         2 hcc3      
h    2 hc4         1 hcc4          3 dih4   
c    1 cc5         2 ccc5          4 dih5   
h    5 hc6         1 hcc6          3 dih6   
c    5 cc7         1 ccc7          6 dih7   
h    7 hc8         5 hcc8          6 dih8   
c    7 cc9         5 ccc9          8 dih9   
h    9 hc10        7 hcc10         8 dih10  
c    9 cc11        7 ccc11        10 dih11  
h   11 hc12        9 hcc12        10 dih12  
 
cc2         1.400000
hc3         1.070000
hcc3        120.000
hc4         1.070000
hcc4        120.000
dih4          0.000
cc5         1.400000
ccc5        120.000
dih5        180.000
hc6         1.070000
hcc6        120.000
dih6          0.000
cc7         1.400000
ccc7        120.000
dih7        180.000
hc8         1.070000
hcc8        120.000
dih8          0.000
cc9         1.400000
ccc9        120.000
dih9        180.000
hc10        1.070000
hcc10       120.000
dih10         0.000
cc11        1.400000
ccc11       120.000
dih11       180.000
hc12        1.080000
hcc12       120.000
dih12         0.000

---