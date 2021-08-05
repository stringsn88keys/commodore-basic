# commodore-basic
Experiments in Commodore BASIC for various systems

## How to use
The snippets in .bas files are made to be copy and pasted from an editor on a host machine into WinVICE (have not tried other emulator versions yet). Copying the `rem` lines shouldn't hurt, but you'll notice that they're unnumbered so as to not show up in User BASIC RAM, especially in the case of the VIC-20's extremely limited User BASIC RAM area.

`subroutines` are meant to be copied and pasted into other programs and assume that there is an `end` statement somewhere prior to the first subroutine line number.

`scratch` files are not meant to be copied and pasted in their entirety and are generally some transitory notes about topics I'm looking at.

## Contributing
* Fork, branch with a descriptive branch name, open a PR to main
* Use lowercase for .bas files (it will paste as uppercase in the default upper/petscii graphics mode)
* `rem` attributions for snippet sources with links when possible at the top of files
