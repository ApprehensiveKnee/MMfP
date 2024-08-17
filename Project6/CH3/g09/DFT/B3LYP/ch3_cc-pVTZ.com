%mem=100MB

#p b3lyp/cc-pVTZ opt freq symmetry=(follow,pg=C3v)  pop=full gfinput

methyl with imposed symmetry and cc-pVTZ basis set

0 2
C1
H2 1 d 
H3 1 d 2 a
H4 1 d 2 -a 3 t 

d=1.09
a=120.0
t=0.

--- 
