%nproc=24
%mem=2Gb
%chk=acetic_acid_nmr.chk

#p B3LYP/6-31+g(d,p) nmr=giao 
!scrf=(smd,solvent=dmso) additional option considering solvents 

acetic acid opt
 
0 1
 c
 c   1 cc2     
 h    2 hc3         1 hcc3      
 h    2 hc4         1 hcc4          3 dih4   
 h    2 hc5         1 hcc5          3 dih5   
 o    1 oc6         2 occ6          3 dih6   
 o    1 oc7         6 oco7          2 dih7   
 h    7 ho8         1 hoc8          6 dih8   
 
cc2         1.5195
hc3         1.0936
hcc3       114.2981
hc4         1.0934
hcc4       108.4564
dih4       121.7832
hc5         1.0934
hcc5       108.4564
dih5      -121.7832
oc6         1.2059
occ6       123.3473
dih6       180.0   
oc7         1.3633
oco7       119.7012
dih7       180.0   
ho8         0.9672
hoc8       111.0298
dih8       180.0 
 
