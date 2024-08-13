#p B3LYP/6-31+g(d,p) opt freq pop=full gfinput

propane

0 1
C1
C2 1 dCC
C3 1 dCC 2 aCC
H4 1 d1 2 a1 3 t1
H5 1 d1 2 a1 4 t2
H6 2 d2 1 a2 3 t3
H7 3 d2 1 a2 2 t3
H8 2 d3 1 a3 6 t4
H9 2 d3 1 a3 6 t5
H10 3 d3 1 a3 7 t4
H11 3 d3 1 a3 7 t5

dCC=1.526
aCC=112.4
d1=1.096
a1=109.56
t1=126.95
t2=106.1
d2=1.089
a2=111.8
t3=180.
d3=1.094
a3=110.6
t4=107.3
t5=-107.3
