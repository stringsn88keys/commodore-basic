100 vi=dec("1800"):vo=dec("180c"):bank15
110 read a$
115 do until a$="end"
116 : poke vi+i,dec(a$)
117 : i = i + 1
118 : read a$
119 : loop
120 : data 8e,00,d6,2c,00,d6,10,fb,ad,01,d6,60
130 : data 8e,00,d6,2c,00,d6,10,fb,8d,01,d6,60,end
140 do
150 : print
160 : input"address (0-16383)";ad
170 : sys vo, ad/256, 18
180 : sys vo, adand255,19
190 : sys vi,,31
200 : rreg a
210 : print"the 8563 memory at";ad;" is";a
220 : input"new data (0-255) ";a
230 : sys vo, ad/256, 18
240 : sys vo, adand2 55,19
250 : sys vo, a ,31
260 : loop
