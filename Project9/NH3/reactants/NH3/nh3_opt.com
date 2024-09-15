%mem=100MB

#p b3lyp/6-31+g(d,p) opt freq pop=full gfinput

NH3 with 6-31+g(d,p) basis set

0 1
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
 
hn2         1.030000
hn3         1.030000
hnh3        110.000
hn4         1.030000
hnh4        110.000
dih4        120.000

---
 
 
