#p B3LYP/6-31+g(d,p) opt freq pop=full gfinput
!for the single hydrogen atom, just perform thermochemical analysis, no optimization since there is a single atom

hydrogen_atom

0 2  !single radical
H1

