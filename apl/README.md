**install and use:** [installing the mac input method](#mac-install) | [using the input method on mac](#mac-howto) | [installing the input method on emacs](#emacs-install) | [using the input method on emacs](#emacs-howto)

**apl notation:** [about apl](#about-apl) | [apl intro](#apl-intro)

Introduction
============

Input methods for entering APL symbols using ASCII notation.

Three input methods are provided for Mac OS X and Emacs.

When an input method is in effect, one types the ASCII notation and it
is rendered to the APL symbol on the fly.  Here are some examples:

    @times       ×
    @grade       ⍋ 
    @reverse     ⌽
    @domino      ⌹

<a name="installing-apl"/>
Installing APL
==============

* [GNU APL](http://www.gnu.org/software/apl/)

One Mac OS X one can use Homebrew:

    $ brew install gnu-apl


<a name="mac-install"/>
Installing the Mac Input Method
===============================

Requires Mac OS 10.5 or higher.

    $ curl https://raw.githubusercontent.com/clarkgrubb/latex-input/master/apl/apl.cin > ~/Library/Input\ Methods/apl.cin

<a name="mac-howto"/>
Using the Input Method on Mac
=============================

In

    System Preferences | Keyboard | Input Sources

you should see a new input source called `APL`.  An input source
is what Mac OS X calls an input method.  If you check the box next
to `APL` and if you make sure that `Show Input menu in menu bar` is
checked, then you can use the menu bar to set or unset APL as the
input source.

When you type APL notation it will be underlined.  When the notation
is finished, type SPACE to render it or RETURN to use it without rendering
it.  SPACE and RETURN are special when used in this manner and don't insert
a space or a newline in the document.  If you want a space or newline you
must press SPACE or RETURN again.

There is a Mac OS X keyboard shortcut for switching input source, but the
default value conflicts with Spotlight.  Consider going to 

    System Preferences | Keyboard | Keyboard Shortcuts | Keyboard & Text Input

and changing it to something like ⌥`⌘Space`

<a name="emacs-install"/>
Installing the Input Method on Emacs
====================================

Requires GNU Emacs 22 or higher.

Download the Emacs Lisp file to a place in your Emacs library path:

    $ wget https://raw.githubusercontent.com/clarkgrubb/latex-input/master/apl/apl.el

You can load `apl.el` manually at any time with the command

    M-x load-file RET /PATH/TO/apl.el

To load `apl.el` automatically when Emacs starts up, you need to put something
like this in your startup file, i.e. `~/.emacs`, `~/.emacs.el`, or `~/.emacs.d/init.el`:

    (setq emacs-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
    (add-to-list 'load-path emacs-dir)
    (require 'apl)

Note that the above code assumes that `apl.el` is in the same directory
as your startup file.  Modify to suit your needs.

<a name="emacs-howto"/>
Using the Input Method on Emacs
===============================

To turn on the APL input method use

    C-x RET C-\ apl

If you don't use other input methods it is sufficient to use

    C-\ apl

To get a listing of the supported APL notation, type:

    C-h I

For the most part the Emacs input method works the same as Mac OS X input source.
There are a few differences:

* When you type something that obviously isn't APL notation because it doesn't
  start with a backslash, Emacs doesn't underline it or make you accept it without
  rendering it by typing RETURN.
* The Emacs input method is case sensitive, so if you type \Delta or \delta you
  will get Δ or δ without any need to disambiguate.
* If you want to type some APL notation without rendering it, type any key but
  SPACE when you are done.  The key that you press will be entered into the document.
  That means that if wanted the next character to be a SPACE you must delete the
  character you typed and then type a SPACE.
* The Emacs input method will show all possible completions for partially typed
  notation in a separate buffer if you type TAB.

In my experience Emacs uses a somewhat impoverished font, and as a result it doesn't
always render the symbol, even though the Unicode character was inserted into the
document.

<a name="about-apl"/>
About APL
===========

[A Dictionary of APL](http://www.jsoftware.com/papers/APLDictionary.htm)

    @macron    ¯
    @leftarrow ←
    @quad      ⎕
    @lamp      ⍝

Positive integers and floating point numbers are like in other languages. The _macron_ ¯ or _high minus_ is used in literals for negative numbers.  An uppercase `E` is used for scientific notation: e.g. 6.022E23. An uppercase `J` is used to separate the real and imaginary part of a complex number: e.g. 2J1.

The _left arrow_ ← assigns the value of the expression on the right to the name on the left.  Names must start with a letter or underscore and can contain digits.  APL is case sensitive.

The _quad_ is an extra alaphabetical symbol used in names which are predefined by APL.  `⎕av` contains the alphabet recognized by APL.

The _lamp_ ⍝ starts a comment which ends at the end of the line.

arithmetic
----------

    @plus    +
    @minus   -
    @times   ×
    @per     ÷
    @residue |
    @power   *

The arithmetic operators can be dyadic (binary) or monadic (unary).  There use is like in other languages.

_plus_ and _minus_ are ASCII characters.

The monadic _times_ × is the signum function.  The monadic _per_ ÷ returns the reciprocal of its argument.

The _residue_ | is like the modulus operator % of other languages, but order of the arguments is reverse.  Monadic | is the absolute value function.  `| 3J4` is 5.  | is an ASCII character.

Monadic _power_ is the natural exponential function.

comparison
----------

    @aft     ≥
    @after   >
    @before  <
    @equal   =
    @fore    ≤
    @unequal ≠

logic
-----

    @and  ∧
    @or   ∨
    @not  ~
    @nand ⍲
    @nor  ⍱

transcendental
--------------

    @log    ⍟
    @circle ○

other
-----

    @all {
    @antibase ⊤
    @base ⊥
    @box <
    @box ⊃
    @by ,
    @cant ⍉
    @ceiling ⌈
    @count ⍳
    @cycle ≤
    @deal ?
    @downgrade ⍒
    @drop ↓
    @execute ⍎
    @factorial !
    @floor ⌊
    @format ⍕
    @from {
    @grade ⍋
    @in ∊
    @index ⍳
    @inverse ⌹
    @left ⊣
    @less ~
    @match ≡
    @mate +
    @maximum ⌈
    @minimum ⌊
    @mix ≥
    @nub ↑
    @nub =
    @nubsieve ≠
    @open >
    @out !
    @over ⍪
    @pi ○
    @ravel ,
    @raze ↓
    @reshape ⍴
    @reverse ⌽
    @right ⊢
    @roll ?
    @rotate ⌽
    @rowel ⊖
    @shape ⍴
    @size |
    @table ⍪ 
    @take ↑
    @trend ×
    @upset ⊖

<a name="apl-intro"/>
APL Intro
=========

APL calls unary operators monadic functions and binary operators dyadic functions. Unary operators are prefix and binary operators are infex. APL does not have functions with syntax like the other languages. In APL terminology, operators are functions which take a function as an argument. And example of such an operator is /, which acts like reduce. The following expression uses addition to reduce the list `[1, 2, 3]1 and evaluates to 6:

    + / 1 2 3

True and false are 1 and 0.

Some functions can be used as monadic and dyadic functions. In addition to minus, which works like other languages, the ∣ function (U+2223) is absolute value when monadic and modulus when dyadic. ⋆ (U+22C6) is the exponential function when monadic and the power function when dyadic. The ○ function (U+25CB) is a multiple of π when monadic and a trigonometric function when dyadic, with the first argument determining which trigonometric function.

Most APL function work on arrays. The following performs elementwise addition to give `3 5 7`:

    1 2 3 + 2 3 4

This performs elementwise multiplication to give `2 6 12`:

    1 2 3 × 2 3 4

The dot product of the two vectors is sum of the elementwise multiplication, which is 20. In APL we can compute it with:

    + / 1 2 3 × 2 3 4

The above uses the reduce operator /. It also uses the fact that APL expressions are parsed from right to left.

Another way to compute the dot product is:

    1 2 3 +.× 2 3 4

The . operator is called the inner product operator. It takes two dyadic functions as its arguments and returns a dyadic function.

When a scalar is added to an array, the scalar is added to each element of the array. This expression evaluates to `2 3 4`:

    1 + 1 2 3

Otherwise, adding arrays of different length does not work. This results in a LENGTH ERROR:

    1 1 + 1 2 3

Matrices are created by reshaping an array. This APL expression

    2 2 ⍴ 1 2 3 4

creates the matrix:

    1  2
    3  4

To create a `2x2` matrix of all zeros or all ones:

    2 2 ⍴ 0
    2 2 ⍴ 1

To add two matrices to get a `2x2` matrix of all fives:

    ( 2 2 ⍴ 1 2 3 4 ) + 2 2 ⍴ 4 3 2 1

Again, APL expressions are parsed from right to left. The parens, which work like other languages, are necessary to prevent the APL interpreter from trying to add a 2x2 matrix with the array `1 2 3 4`.

Matrix multiplication is performed like the dot product of arrays:

    ( 2 2 ⍴ 1 2 3 4 ) +.× 2 2 ⍴ 4 3 2 1

* monadic minus vs high minus
* prefix sum +@ (scan)
* range
* random (roll deal)
* take / drop
* concat / ravel ,
* min/max (use floor ceil)
* membership
* decode / encode
* matrix invese
* general transpose
* reverse / rotate
* grade up / grade down
* factorial / combinations
* outer product
