rem https://www.lemon64.com/forum/viewtopic.php?t=63504&sid=2b9fbde42d72b6331ca53c4752304f02 
10 poke 36869,255
20 for i=7168 to 7679: poke i,0: next
30 poke 36879,8:print chr$(147)
40 for l=0to7:for m=0to7
50 poke 7680+m*22+l,l*8+m
60 next:next
70 for x=0 to 63
80 y1=32+sqr(64*x-x*x)
90 y2=32-sqr(64*x-x*x)
100 for y=y1 to y2 step y2-y1
110 y=int(32 + 31 * sin(x/10))
120 ch=int(x/8)*8+int(y/8)
130 ro=(y/8 - int(y/8)) * 8
140 by=7168+8*ch+ro
150 bi=7-(x-int(x/8)*8)
160 poke by, peek(by) or (2^bi)
170 next
180 next
190 goto 130

10 def fn ypspk(y) = 7680 + y*22

20 poke 36879,8:print chr$(147)
30 rem for c=65 to 96
40 for l=0to21:for m=0to22
50 poke (fn ypspk(m))+l,209
60 next:next
70 rem next

10 data 255,129,129,129,129,129,129,255
11 data 0,60,126,126,126,126,60,0,-1
20 poke 52,28:poke 56,28:clr:a=7168
25 read b:if b<>-1 then poke a,b:a=a+1:goto 25
30 poke 36869,255

The default value is 240, so POKE 36869,240 will put you back with normal characters. Or press RUN/STOP + RESTORE which I think on WinVICE is mapped as ESC + PageUp or something like that.


REM https://techtinkering.com/articles/code-and-data-in-display-memory-on-the-vic-20/ $9600-$97FF	38400-38911	Full colour map (selected)

10 def fn ypspk(y) = 7680 + y*22
20 def fn ycopk(y) = 38400 + y*22
30 poke 36879,8:print chr$(147):rem black border + black back, 147 is Clr char
40 for l=0to21:for m=0to21
50 poke (fn ycopk(m))+l,1
60 poke (fn ypspk(m))+l,81 : rem circles/discs
70 next:next

https://www.atarimagazines.com/compute/issue20/202_1_VIC_Color_Tips.php
Table 1. Screen/Border Colors Screen	
Screen		Border	
1	Black	0	Black
2	White	1	White
3	Red	2	Red
4	Cyan	3	Cyan
5	Purple	4	Purple
6	Green	5	Green
7	Blue	6	Blue
8	Yellow	7	Yellow
9	Orange		
10	Light Orange		
11	Pink		
12	Light Cyan		
13	Light Purple		
14	Light Green		
15	Light Blue		
16	Light Yellow		
100 REM * ANOTHER RAINBOW *
110 DEF FNC (V)=V*16-8
120 SCREEN=36879
130 FOR BK=1 TO 16
140 PRINT "{CLEAR}{WHT}";
150 IF BK>1 THEN PRINT "{BLK}"
160   PRINT "SCREEN";BK
170   FOR BD=0 TO 7
180   POKE SCREEN,FNC(BK)+BD
190   PRINT, "BORDER"; BD
200   FOR W=1 TO 500: NEXT W
210  NEXT BD
220 NEXT BK
230 POKE SCREEN, 27
240 END


Pass number 1:
Place white discs across the whole screen

REM https://techtinkering.com/articles/code-and-data-in-display-memory-on-the-vic-20/ $9600-$97FF	38400-38911	Full colour map (selected)
REM https://techtinkering.com/articles/hand-assembling-to-machine-code-on-the-commodore-vic-20/
REM https://style64.org/petscii/

10 def fn ypspk(y) = 7680 + y*22
20 def fn ycopk(y) = 38400 + y*22
30 poke 36879,8:print chr$(147):rem black border + black back, 147 is Clr char
40 for l=0to21:for m=0to21
50 poke (fn ycopk(m))+l,1
60 poke (fn ypspk(m))+l,81 : rem circles/discs
70 next:next

Pass number 2:
Draw an axis and cos wave
REM vic-20 programmers reference guide, Appendix E
REM 7680 + y * 22 + x is the screen character code where x,y is (0..21, 0..22)
REM 38400 + y * 22 + x is the screen color color memory map where [black,white,red,cyan,purple,green,blue,yellow]

10 def fn ypspk(y) = 7680 + y*22
20 def fn ycopk(y) = 38400 + y*22
30 poke 36879,8:print chr$(147):rem black border + black back, 147 is Clr char
40 radfc=atn(1)/45
50 xpx=22
51 xscle=xpx/640
60 ypx=23
61 xofst=10
62 yofst=12
63 yscle=10
64 c=5
70 y=yofst
80 for x=0 to xpx-1
90 gosub 1000
100 next
110 x=xofst
120 for y=0 to ypx-1
130 gosub 1000
140 next
150 c=1
160 for xi=0 to xpx-1 step xscle
170 yi=yscle*cos((xi-xofst)*radfc/xscle)*-1+yofst
175 x=int(xi):y=int(yi)
180 gosub 1000
190 next
999 end
1000 poke (fn ycopk(y))+x,c
1010 poke (fn ypspk(y))+x,81
1020 return
1999 rem set(x,y,c)


Music notes
REM page 99 describe that S1 (36874) has octaves 1,2,3
REM S2 (36875) has octaves 2,3,4
REM S3 (36876) has octaves 3,4,5
10 dim ntes(38)
20 for n=1 to 38
30 read ntes(n)
40 next
100 poke 36878, 8
110 for n=1 to 31 
120 gosub 20010
130 d=ti
131 if ti - d < 15 then 131
140 gosub 20100
150 next
9999 end
10000 data 135,143,147,151,159,163,167,175,179,183,187,191
10010 data 195,199,201,203,207,209,212,215,217,219,221,223
10020 data 225,227,228,229,231,232,233,235,236,237,238,239
10030 data 240,241
20010 poke 36874, ntes(n + 7)
20020 poke 36875, ntes(n + 4)
20030 poke 36876, ntes(n)
20040 return
20100 poke 36874, 0: poke 36875, 0: poke 36876, 0
20110 return

http://www.zimmers.net/anonftp/pub/cbm/vic20/roms/tools/4k/

REM page 107 for machine language

Basic RAM on the 
for i=4096 to 7680 - fre(1): ? i,chr$(peek(i));peek(i): next i

? asc("a"),asc("z")

10 print "hi"
20 n=peek(4104)
30 x=peek(4105)
40 if n >= 90 then n=65
50 n=n+1
60 x=int(26*rnd(1)+65)
70 poke 4104,n
80 poke 4105,x
90 goto 10
9999 end
10000 b=4096:i=b
10010 e=7680-fre(0)
10020 c=0
10030 ls=20
10040 ? i,
10050 ch=peek(i)
10060 ? ch;
10070 if(ch>=32 and ch<=127)or(ch>=160 and ch<=254)then ? chr$(ch);
10075 ?
10080 if c>ls then ? "continue";: input wt$: c=0
10090 c=c+1
10100 i=i+1
10110 if i>e then end
10120 goto 10040



for i=4096 to 4115: ?i,peek(i):next

REM page 121 for the VIC 20 BASIC Keyword Codes