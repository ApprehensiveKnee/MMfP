%mem=100MB

#p mp2/aug-cc-pVDZ opt freq symmetry=(follow,pg=Td)  pop=full gfinput

methane with imposed symmetry and hf/aug-cc-pVDZ basis function

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
