%mem=100MB
%chk=hf

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput output=wfn

HF

0 1 !12 electrons, spin multiplicity=1
f
h   1 hf2  

hf.wfn
 
hf2         0.960000  

---