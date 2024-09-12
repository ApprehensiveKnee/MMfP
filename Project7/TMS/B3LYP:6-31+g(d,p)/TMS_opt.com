%nproc=24
%mem=2Gb

#p B3LYP/6-31+g(d,p) opt(internal) pop=full gfinput 

tetramethylsilane opt

0 1
si
 c   1 csi2    
 c    1 csi3        2 csic3     
 c    1 csi4        2 csic4         3 dih4   
 c    1 csi5        3 csic5         2 dih5   
 h    3 hc6         1 hcsi6         2 dih6   
 h    3 hc7         1 hcsi7         6 dih7   
 h    3 hc8         1 hcsi8         6 dih8   
 h    2 hc9         1 hcsi9         3 dih9   
 h    2 hc10        1 hcsi10        9 dih10  
 h    2 hc11        1 hcsi11        9 dih11  
 h    5 hc12        1 hcsi12        3 dih12  
 h    5 hc13        1 hcsi13       12 dih13  
 h    5 hc14        1 hcsi14       12 dih14  
 h    4 hc15        1 hcsi15        2 dih15  
 h    4 hc16        1 hcsi16       15 dih16  
 h    4 hc17        1 hcsi17       15 dih17  
 
csi2        1.910000
csi3        1.910000
csic3       109.471
csi4        1.910000
csic4       109.471
dih4        120.000
csi5        1.910000
csic5       109.471
dih5        120.000
hc6         1.070000
hcsi6       109.471
dih6        180.000
hc7         1.070000
hcsi7       109.471
dih7        120.000
hc8         1.070000
hcsi8       109.471
dih8        240.000
hc9         1.070000
hcsi9       109.471
dih9        180.000
hc10        1.070000
hcsi10      109.471
dih10       120.000
hc11        1.070000
hcsi11      109.471
dih11       240.000
hc12        1.070000
hcsi12      109.471
dih12       180.000
hc13        1.070000
hcsi13      109.471
dih13       120.000
hc14        1.070000
hcsi14      109.471
dih14       240.000
hc15        1.070000
hcsi15      109.471
dih15       180.000
hc16        1.070000
hcsi16      109.471
dih16       120.000
hc17        1.070000
hcsi17      109.471
dih17       240.000
