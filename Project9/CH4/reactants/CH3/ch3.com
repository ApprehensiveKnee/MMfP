%NProcShared=2
%mem=100MB

#p B3LYP/6-31+g(d,p) opt freq pop=full gfinput

methil_radical

0 2
C1
H2 1 r
H3 1 r 2 a
H4 1 r 2 -a 3 t

r=1.09
a=120.0
t=0.0

---
