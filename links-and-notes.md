## General
* [Commodore Manuals](http://www.commodore.ca/commodore-manuals/)
* [Keyboard mapping for VICE](https://vice-emu.pokefinder.org/index.php/VICEKB)
* [PETSCII Reference](https://style64.org/petscii/)
* Switching case of the PETSCII fonts using [C= + shift] which is [CTRL] + [Shift] on WinVICE default mapping.
```
    poke 53272,23:rem lower/uppercase mode
    poke 53272,21:rem uppercase/petscii graphics mode
    print chr$(8): rem disable mode toggle
    print chr$(9): rem enable mode toggle
```
## VIC-20
* [POKE 36869,255](https://www.lemon64.com/forum/viewtopic.php?t=63504&sid=2b9fbde42d72b6331ca53c4752304f02) - discussion about programmable characters...`POKE 36869,255` tells the video chip to read graphics data from RAM at address 7168 (on unexpanded VIC-20). `POKE 36869,240` returns to normal or you can use `RUN/STOP` + `RESTORE` (`[ESC]` + `[PageUp]` on WinVICE default mapping)
* [Utility ROMs](http://www.zimmers.net/anonftp/pub/cbm/vic20/roms/tools/4k/) - including vicmon

