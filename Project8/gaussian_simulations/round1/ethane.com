%NProcShared=2
%chk=ethane
%mem=100MB

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput

ethane

0 1
c
h   1 hc2     
c    1 cc3         2 cch3      
h    1 hc4         2 hch4          3 dih4   
h    1 hc5         2 hch5          3 dih5   
h    3 hc6         1 hcc6          2 dih6   
h    3 hc7         1 hcc7          6 dih7   
h    3 hc8         1 hcc8          6 dih8   

ethane.wfn
 
hc2         1.089000
cc3         1.500000
cch3        109.471
hc4         1.089000
hch4        109.471
dih4        120.000
hc5         1.089000
hch5        109.471
dih5       -120.000
hc6         1.089000
hcc6        109.471
dih6        180.000
hc7         1.089000
hcc7        109.471
dih7        120.000
hc8         1.089000
hcc8        109.471
dih8        240.000

---