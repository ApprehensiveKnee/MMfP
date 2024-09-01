%nproc=24
%mem=2Gb
%chk=TMS_nmr.chk

#p B3LYP/6-31+g(d,p) nmr=giao 
!scrf=(smd,solvent=dmso) additional option considering solvents

tetramethylsilane nmr

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
 
    csi2         1.8955
    csi3         1.8955
    csic3      109.4712
    csi4         1.8955
    csic4      109.4712
    dih4       120.0   
    csi5         1.8955
    csic5      109.4712
    dih5       120.0   
    hc6         1.0964
    hcsi6      111.2523
    dih6       180.0   
    hc7         1.0964
    hcsi7      111.2523
    dih7       120.0   
    hc8         1.0964
    hcsi8      111.2523
    dih8       240.0   
    hc9         1.0964
    hcsi9      111.2523
    dih9       180.0   
    hc10         1.0964
    hcsi10      111.2523
    dih10      120.0   
    hc11         1.0964
    hcsi11      111.2523
    dih11      240.0   
    hc12         1.0964
    hcsi12      111.2523
    dih12      180.0   
    hc13         1.0964
    hcsi13      111.2523
    dih13      120.0   
    hc14         1.0964
    hcsi14      111.2523
    dih14      240.0   
    hc15         1.0964
    hcsi15      111.2523
    dih15      180.0   
    hc16         1.0964
    hcsi16      111.2523
    dih16      120.0   
    hc17         1.0964
    hcsi17      111.2523
    dih17      240.0  

