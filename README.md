latex-input
===========

Input methods which use LaTeX notation for Mac OS X or Emacs

When the input method is in effect, one types LaTeX notation for
a mathematical symbol, e.g. \infty followed by SPACE.  The LaTeX is
replaced by the symbol it represents, e.g. ∞.

LaTeX notation which cannot be rendered has no effect.  The input
method cannot make fractions, radicals, or matrices, for example.
Only LaTeX notation for which there is a Unicode character in the Basic
Multilingual Plane (i.e. with a Unicode point less than 64k) is rendered.

Mac Installation
================

Copy the file `latex.cin` to `~/Library/Input Methods` and log out
and log back in.

How to Use on Mac
=================

In

    System Preferences | Languages & Text | Input Sources

you should see a new input source called `LaTeX`.  An input source
is what Mac OS X calls an input method.  If you check the box next
to LaTeX and if you make sure that `Show Input menu in menu bar` is
checked, then you can use the menu bar to set or unset LaTeX as the
input source.

Emacs Installation
==================



How to Use on Emacs
===================


About LaTeX
===========