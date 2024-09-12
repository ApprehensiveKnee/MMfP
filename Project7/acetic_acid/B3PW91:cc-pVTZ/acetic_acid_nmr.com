%nproc=24
%mem=2Gb
%chk=acetic_acid_nmr.chk

#p B3PW91/cc-pVTZ nmr=giao 
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
 
cc2         1.5113  
hc3         1.0904  
hcc3       114.4635 
hc4         1.0899  
hcc4       108.4283  
dih4       121.8711 
hc5         1.0899  
hcc5       108.4283  
dih5      -121.8711  
oc6         1.1956  
occ6       123.3667 
dih6       180.0     
oc7         1.3547 
oco7       120.0565 
dih7       180.0     
ho8         0.9616  
hoc8       110.0731 
dih8       180.0 
 
