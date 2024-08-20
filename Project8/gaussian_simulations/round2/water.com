%NProcShared=2
%chk=water
%mem=100MB

#p B3LYP/6-31g(d,p) opt freq pop=full gfinput

water 

0 1
o
h   1 ho2     
h    1 ho3         2 hoh3      
 
ho2         0.950000
ho3         0.950000
hoh3        109.471

---