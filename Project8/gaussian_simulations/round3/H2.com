%mem=100MB
%chk=h2

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput output=wfn

H2

0 1
 h
 h   1 hh2     
 
hh2         0.640000  

h2.wfn 
---