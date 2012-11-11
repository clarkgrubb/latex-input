latex-input
===========

Input methods which make your keyboard LaTeX aware; one for Mac OS X
and one for Emacs.

When the input method is in effect, one types LaTeX notation and it
is rendered to the mathematical symbol on the fly.  E.g. type
\infty followed by a SPACE and an ∞ is inserted into the document.

LaTeX notation which cannot be rendered has no effect.  The input
method cannot make fractions, radicals, or matrices, for example.
Only LaTeX notation for which there is a Unicode character in the Basic
Multilingual Plane (i.e. with a Unicode point less than 64k) is rendered.

Mac Installation
================

Copy the file `latex.cin` to `~/Library/Input Methods` and log out
and log back in.

Requires Mac OS 10.5 or higher.

How to Use on Mac
=================

In

    System Preferences | Languages & Text | Input Sources

you should see a new input source called `LaTeX`.  An input source
is what Mac OS X calls an input method.  If you check the box next
to `LaTeX` and if you make sure that `Show Input menu in menu bar` is
checked, then you can use the menu bar to set or unset LaTeX as the
input source.

When you type LaTeX notation it will be underlined.  When the notation
is finished, type SPACE to render it or RETURN to use it without rendering
it.  SPACE and RETURN are special when used in this manner and don't insert
a space or a newline in the document.  If you want a space or newline you
must press SPACE or RETURN again.

The Mac LaTeX input source is case insensitive.  In LaTeX, \Delta is used
for Δ and \delta is used for δ, but the Mac LaTeX input source will nevertheless
insist that you disambiguate.  It does this with a pop-up window.  Use the arrow
keys to select the correct symbol and press RETURN.

There is a Mac OS X keyboard shortcut for switching input source, but the
default value conflicts with Spotlight.  Consider going to 

    System Preferences | Keyboard | Keyboard Shortcuts | Keyboard & Text Input

and changing it to something like ⌥⌘Space

Emacs Installation
==================

Requires GNU Emacs 22 or higher.

Download the Emacs Lisp file to a place in your Emacs library path:

    wget https://raw.github.com/clarkgrubb/latex-input/master/latex.el

You can load `latex.el` manually at any time with the command

    M-x load-file RET /PATH/TO/latex.el

To `latex.el` automatically when Emacs starts up, you need to put something
like this in your startup file, i.e. `~/.emacs`, `~/.emacs.el`, or `~/.emacs.d/init.el`:

    (setq emacs-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
    (add-to-list 'load-path emacs-dir)
    (require 'latex)

Note that the above code assumes that `latex.el` is in the same directory
as your startup file.  Modify to suit your needs.

How to Use on Emacs
===================

To turn on the LaTeX input method use

    C-x RET C-\ latex

If you don't use other input methods it is sufficient to use

    C-\ latex

To get a listing of the supported LaTeX notation, type:

    C-h I

For the most part the Emacs input method works the same as Mac OS X input source.
There are a few differences:

* When you type something that obviously isn't LaTeX notation because it doesn't
  start with a backslash, Emacs doesn't underline it or make you accept it without
  rendering it by typing RETURN.
* The Emacs input method is case sensitive, so if you type \Delta or \delta you
  will get Δ or δ without any need to disambiguate.
* If you want to type some LaTeX notation without rendering it, type any key but
  SPACE when you are done.  The key that you press will be entered into the document.
  That means that if wanted the next character to be a SPACE you must delete the
  character you typed and then type a SPACE.
* The Emacs input method will show all possible completions for partially typed
  notation in a separate buffer if you type TAB.

Emacs seems to use a font with an impoverished set of Unicode characters.  I think
what is happening is that Mac OS X GUI apps are better at switching to a different
font when a glyph is missing.

About LaTeX
===========

* [Common Mathematical Notation in LaTeX and Unicode](http://hyperpolyglot.org/lightweight-markup#math-notation)

LaTeX is widely used to typeset mathematics.  There isn't much software out there
that is inexpensive and capable of typesetting mathematical notation in its full
generality.  If LaTeX is the standard and you have to learn it, then you might as well
use it to type the occasional mathematical symbol at the keyboard.

