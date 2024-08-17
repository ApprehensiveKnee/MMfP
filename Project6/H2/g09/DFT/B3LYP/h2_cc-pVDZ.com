%mem=100MB

#p b3lyp/cc-pVDZ opt freq  pop=full gfinput

hydogen (molecule) with cc-pVDZ basis set

0 1
H1
H2 1 d

d=0.74

--- 
