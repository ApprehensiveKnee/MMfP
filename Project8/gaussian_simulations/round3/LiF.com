%mem=100MB
%chk=lif

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput output=wfn

H2

0 1
li
f   1 fli2  

lif.wfn
 
fli2        1.970000
    
---