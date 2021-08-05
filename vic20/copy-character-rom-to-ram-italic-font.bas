rem https://www.lemon64.com/forum/viewtopic.php?t=63504&sid=2b9fbde42d72b6331ca53c4752304f02
10 poke52,28:poke56,28:clr
15 fori=0to511:a=peek(32768+i):b=iand7
16 ifb<3thenpoke7168+i,a/2
17 ifb>=3andb<=4thenpoke7168+i,a
18 ifb>4thenpoke7168+i,a*2
19 next
20 poke36869,255