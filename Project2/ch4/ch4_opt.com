
%chk=tmp
%mem=100MB

#p B3LYP/6-31+g(d,p) opt freq pop=full gfinput

methane

0 1
C1
H1 1 d
H2 1 d 2 a
H4 1 d 2 a 3 t1
H5 1 d 2 a 3 -t1

d=1.09
a=109.5
t1=120.

---
