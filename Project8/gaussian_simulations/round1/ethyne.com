%mem=100MB
%chk=ethyne

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput output=wfn

ethyne

0 1
c
c   1 cc2     
h    1 hc3         2 hcc3      
h    2 hc4         1 hcc4          3 dih4   

cc2         1.203000
hc3         1.060000
hcc3        180.000
hc4         1.060000
hcc4        180.000
dih4          0.000

ethyne.wfn

---