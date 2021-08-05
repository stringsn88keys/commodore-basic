rem subroutine for modulo without using a basic extension
rem https://retrocomputing.stackexchange.com/a/9439/22471
1000 rem modulo operation ([re]mainder, [d]i[v]idend, [d]ivi[s]or)
1010 re = dv - (int(dv/ds))
1020 return