**install and use:** [installing apl](#installing-apl) | [installing the mac input method](#mac-install) | [using the input method on mac](#mac-howto) | [installing the windows input method](#windows-install) | [using the input method on windows](#windows-howto)

**apl notation:** [about apl](#about-apl) | [apl intro](#apl-intro)

Introduction
============

Input methods for entering APL symbols using ASCII notation.

Input methods are provided for Mac OS X and Emacs.

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

Optionally, you can install an input method which combines the LaTeX and APL input methods:

    $ curl https://raw.githubusercontent.com/clarkgrubb/latex-input/master/apl/latex_apl.cin > ~/Library/Input\ Methods/latex_apl.cin

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

<a name="windows-install"/>
Installing the Windows Input Method
===================================

Download [apl.exe](https://raw.githubusercontent.com/clarkgrubb/latex-input/master/apl/apl.exe) and install it in your Startup folder.  Open the Startup folder in File Explorer by pressing `Cmd+R` and entering `shell:startup`.  The input method will run the next time you log in.  You can also start it by double-clicking it in File Explorer.

If you have [AutoHotkey](http://www.autohotkey.com/) installed, you can download and install [apl.ahk](https://raw.githubusercontent.com/clarkgrubb/latex-input/master/apl/apl.ahk) instead.

<a name="windows-howto"/>
Using the Input Method on Windows
=================================

The input method starts in an inactivate state.  Use `Ctrl+Alt+L` to toggle between active and inactive.

When the input method is active, type APL notation followed by a `SPACE` to render a symbol.

<a name="about-apl"/>
About APL
===========

[parsing](#parsing) | [operators](#operators) | [arithmetic](#arithmetic) | [comparison](#comparison) | [logic](#logic) | [transcendental](#transcendental) | [truncation](#truncation) | [1d array](#one-dim-array) | [2d array](#two-dim-array) | [strings](#strings)

<a name="parsing"/>
parsing
-------

[A Dictionary of APL](http://www.jsoftware.com/papers/APLDictionary.htm)

Alphanumeric characters other than `¯⎕'_.()` are built-in operators and parse as a single token.  APL processes tokens from right to left.  Parens `()` can be used like in other languages to change the order of execution.

    @macron    ¯
    @leftarrow ←
    @quad      ⎕
    @lamp      ⍝

Positive integers and floating point numbers are like in other languages. The _macron_ `¯` or _high minus_ is used in literals for negative numbers.  An uppercase `E` is used for scientific notation: e.g. `6.022E23`. An uppercase `J` is used to separate the real and imaginary part of a complex number: e.g. `2J1`.

The _left arrow_ `←` assigns the value of the expression on the right to the name on the left.  Names must start with a letter or underscore and can contain digits.  APL is case sensitive.

The _quad_ `⎕` is an extra alphabetical symbol used in names which are predefined by APL.  `⎕av` contains the alphabet recognized by APL.

The _lamp_ `⍝` starts a comment which ends at the end of the line.

<a name="operators"/>
operators
---------

APL operators are represented by single characters.  They can be either binary infix operators, which APL calls _dyadic_, or unary prefix operators, which APL calls _monadic_.  Many operators can be used either as a dyadic or a monadic operator with different effect.  Which way the operator is used depends on how APL parses the expression.  We use `α` and `ω` to refer to the left and right arguments of operators.

The operands of APL operators are lists.  The elements of lists are numeric literals, names,  or strings.  The elements are usually separated by spaces.  There are no delimiters to mark the edges of the list; APL knows it has encountered the left edge of a list when it encounters an operator.  Whether the operator is dyadic or monadic depends on whether a list or another operator is found to the left.

* VALENCE ERROR
* LENGTH ERROR
* RANK ERROR
* DOMAIN ERROR
* INDEX ERROR

<a name="arithmetic"/>
arithmetic
----------

    @plus    +
    @mate    +
    @minus   -
    @times   ×
    @trend   ×
    @per     ÷
    @residue |
    @size    |

The arithmetic operators can be dyadic or monadic.  Their use is like in other languages.

The monadic _mate_ `+` is the complex conjugate function.

The monadic _trend_ `×` is the signum function.

The monadic _per_ `÷` returns the reciprocal of its argument.

The _residue_ `|` is like the modulus operator `%` of other languages, but order of the arguments is reversed.

Monadic _size_ `|` is the absolute value function.  `| 3J4` is `5`.

<a name="comparison"/>
comparison
----------

    @aft     ≥
    @after   >
    @before  <
    @equal   =
    @fore    ≤
    @unequal ≠
    @match   ≡

The above operators are exclusively dyadic in GNU APL.  They are comparison operators.  They return `1` or `0`, which APL uses to represent true and false. `=`, `<`, and `>` are ASCII characters.

The dyadic _match_ `≡` returns a single boolean value when comparing two lists.  The dyadic _equal_ `=`, by contrast, performs elementwise comparison and returns a list of boolean values.

<a name="logic"/>
logic
-----

    @not  ~
    @and  ∧
    @or   ∨
    @nand ⍲
    @nor  ⍱

Monadic _not_ `~` is logical negation.  A domain error results if the argument is not a boolean, i.e. `1` or `0`.  

_And_ `∧` and _or_ `∨` are exclusively dyadic.  On boolean arguments they are logical operators.  On other integer arguments they are the least common multiple and greatest common divisor, respectively.

<a name="transcendental"/>
transcendental
--------------

    @power     *
    @log       ⍟
    @circle    ○
    @pi        ○
    @outof     !
    @factorial !

Monadic _power_ `*` is the natural exponential function.

Dyadic _log_ `⍟` is the logarithmic function, where the left operand is the base and the right operand is the argument.  Monadic _log_ is the natural logarithm.

Dyadic _circle_ `○` is used for the trigonometric functions.  If the first argument is `1`, `2`, or `3`, then the sin, cos, or tan of the second argument is returned.  If the first argument is `¯1`, `¯2`, or `¯3`, then the arcsin, arccos, or arctan of the second argument is returned.  Monadic _circle_ `○` returns the argument times `π`.

Dyadic _factorial_ `!` is the function `1/((ω + 1) ⋅ Beta(ω - α + 1, α + 1))`.  When the arguments are integers this is `ω` choose `α`.

Monadic _factorial_ `!` is the function `Γ(ω + 1)`.  When the argument is an integer it is the factorial function.

<a name="truncation"/>
truncation
----------

    @left    ⊣
    @right   ⊢
    @maximum ⌈
    @minimum ⌊
    @ceiling ⌈
    @floor   ⌊
    @format  ⍕

_Left_ `⊣` and _right_ `⊢` are exclusively dyadic operators.  They return their left and right arguments, respectively.

The dyadic _maximum_ `⌈` and _minimum_ `⌊` operators return the greater and the lesser of their arguments, respectively.  When used as monadic operators they are ceiling and floor functions.  That is, they return the least integer greater than or equal to the argument or the greatest integer less than or equal to argument, respectively.

The dyadic _format_ `⍕` rounds its right argument to the precision specified on the left.  The monadic _format_ uses the built-in name `⎕pp`.

<a name="one-dim-array"/>
1d array
--------

    @less      ~
    @index     ⍳
    @count     ⍳
    @deal      ?
    @roll      ?
    @rotate    ⌽
    @reverse   ⌽
    @drop      ↓
    @take      ↑
    @by        ,
    @grade     ⍋
    @downgrade ⍒
    @in        ∊

Dyadic _less_ `~` is set difference: the elements on the left with any elements on the right removed.

Dyadic _index_ `⍳` computes the one-based index of the first occurrence of the left argument in the list on the right.  Monadic _count_ `⍳` takes a nonnegative integer as an argument and returns the list of integers from `1` to `ω`.

Dyadic _deal_ `?` select `α` random numbers without replacement from the list of integers from `1` to `ω`.  Monadic _roll_ `?` generates a random integer from `1` to `ω`. 

Dyadic _rotate_ `⌽` pops elements off the front of the list `ω` and pushes them onto the back when `α` is positive.  When `α` is negative it pops them off the back and pushes them onto the front.  Monadic _reverse_ `⌽` reverses a list.  On a 2-dimensional array it reverses each row.

Dyadic _drop_ `↓` returns the list `ω` with the first `α` items removed.

Dyadic _take_ `↑` returns the first `α` items from the list `ω`.

Dyadic _by_ `,` concatenates the lists `α` and `ω`.

Monadic _grade_ `⍋` returns the ascending rank order of the elements of `ω`.

Monadic _downgrade_ `⍒` returns the descending rank order of the elements of `ω`.

<a name="two-dim-array"/>
2d array
--------

    @reshape    ⍴
    @shape      ⍴
    @upset     ⊖
    @rowel     ⊖
    @cant      ⍉
    @nub       ↑
    @ravel     ,
    @inverse   ⌹
    @domino    ⌹
    
Dyadic _reshape_ `⍴` converts the elements of `ω` into a multidimensional array with the shape `α`.  Monadic _shape_ `⍴` returns the length of an array, or the dimensions of a multidimensional array.

Monadic _upset_ `⊖` reverses the elements in each column of a 2-dimensional array.

Monadic _cant_ `⍉` transposes a 2-dimensional array.

<a name="strings"/>
strings
-------

Strings are single quoted `'` and doubling is used to insert a single quote character in a string.

    @execute ⍎

other
-----

    @all {
    @antibase ⊤
    @base ⊥
    @box <
    @box ⊃
    @cycle ≤
    @from {
    @mix ≥
    @nubin =
    @nubsieve ≠
    @open >
    @over ⍪
    @raze      ↓
    @table ⍪ 

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
