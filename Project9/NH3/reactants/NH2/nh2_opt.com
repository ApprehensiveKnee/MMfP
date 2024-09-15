%mem=100MB

#p b3lyp/6-31+G opt freq pop=full gfinput

NH2 with 6-31+G basis set

0 2
 n
 h   1 hn2     
 h    1 hn3         2 hnh3      
 
hn2         1.030000
hn3         1.030000
hnh3        109.471

---
 
 
