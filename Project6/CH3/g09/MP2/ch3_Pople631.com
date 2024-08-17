%mem=100MB

#p mp2/6-31G opt freq symmetry=(follow,pg=C3v)  pop=full gfinput
!note that gaussian should be able to infer the symmetry directly from the Z matrix

methyl with imposed symmetry and hf/6-31G basis function

0 2
C1
H2 1 d 
H3 1 d 2 a
H4 1 d 2 -a 3 t 

d=1.09
a=120.0
t=0.

--- 
