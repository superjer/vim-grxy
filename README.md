vim-grxy
========
Replace the next character x with y

Stomps the built-in `gr` but honestly, who would use that?

This works with whatever characters your want for X and Y, to be sure.

This action is repeatable with `.` supposing you have installed repeat.vim:
    https://github.com/tpope/vim-repeat
...which is amazing and you definitely should have it.

This plugin isn't really any good without repeat.vim, since you could just
type `fxry`. `fxry` isn't repeatable though.

Example, with cursor at caret:

<pre>
    Test:
        Here is a sentenwe.
          ^grwc

    Result: 
        Here is a sentence.
</pre>

Wow.
