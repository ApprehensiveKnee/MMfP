%mem=100MB

#p b3lyp/6-31G opt freq symmetry=(follow,pg=Td)  pop=full gfinput
!note that gaussian should be able to infer the symmetry directly from the Z matrix

methane with imposed symmetry Td and hf/6-31G basis function

0 1
C1
H2 1 d 
H3 1 d 2 a
H4 1 d 2 a 3 t
H5 1 d 2 a 3 -t 

d=1.09
a=109.471
t=120.

--- 
