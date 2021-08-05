x128 -keybuf "10 graphic 1
20 scnclr
30 circle 1,100,100,30
run
" -sound -limitcycles 10000000 -exitscreenshotvicii haha.png


https://en.wikipedia.org/wiki/Xvfb

Xvfb :1 &
export DISPLAY=:1
https://forums.debian.net/viewtopic.php?f=6&t=145026


https://unix.stackexchange.com/questions/445386/pulseaudio-server-connection-failure-connection-refused-debian-stretch
$ pulseaudio --check
corei3@corei3 ~ $ pulseaudio -k
corei3@corei3 ~ $ pulseaudio -D
E: [pulseaudio] main.c: Daemon startup failed.

sudo apt install lame

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=922386 
sudo ln -s /usr/lib/x86_64-linux-gnu/libmp3lame.so.0.0.0 /usr/lib/x86_64-linux-gnu/libmp3lame.so


sudo apt-get install vice xfvb
Xfvb :1 &
export DISPLAY=:1

x128 -keybuf "10 graphic 1
20 scnclr
30 circle 1,100,100,30
run
" -sound -limitcycles 10000000 -exitscreenshotvicii haha.png
*** VICE Version 3.4 ***

Welcome to x128, the free portable C128 Emulator.

Current VICE team members:
Marco van den Heuvel, Fabrizio Gennari, Groepaz, Errol Smith, Olaf Seibert,
Marcus Sutton, Kajtar Zsolt, AreaScout, Bas Wassink, Michael C. Martin,
David Hogan.

This is free software with ABSOLUTELY NO WARRANTY.
See the "About VICE" command for more info.

C128MEM: Error - Couldn't load kernal ROM `kernal'.
Error - Machine initialization failed.

Exiting...
Segmentation fault