%mem=100MB

#p b3lyp/6-31+g(d,p) opt freq pop=full gfinput

hydrogen(molecule) with 6-31+G basis set

0 1
H1
H2 1 d

d=0.74

--- 
