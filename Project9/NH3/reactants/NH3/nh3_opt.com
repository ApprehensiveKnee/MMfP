%mem=100MB

#p b3lyp/6-31+G opt freq pop=full gfinput

NH3 with 6-31+G basis set

0 1
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 h    1 hn4         3 hnh4          2 dih4   
 
hn2         1.030000
hn3         1.030000
hnh3        109.471
hn4         1.030000
hnh4        109.471
dih4        180.000

---
 
 
