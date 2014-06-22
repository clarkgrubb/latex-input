**install and use:** [installing apl](#installing-apl) | [installing the mac input method](#mac-install) | [using the input method on mac](#mac-howto)

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

<a name="about-apl"/>
About APL
===========

[parsing](#parsing) | [operators](#operators) | [arithmetic](#arithmetic) | [comparison](#comparison) | [logic](#logic) | [transcendental](#transcendental)

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

APL operators are represented by single characters.  They can be either binary infix operators, which APL calls _dyadic_, or unary prefix operators, which APL calls _monadic_.  Many operators can be used either as a dyadic or a monadic operator with different effect.  Which way the operator is used depends on how APL parses the expression.

The operands of APL operators are lists.  The elements of lists are numeric literals, names,  or strings.  The elements are usually separated by spaces.  There are no delimiters to mark the edges of the list; APL knows it has encountered the left edge of a list when it encounters an operator.  Whether the operator is dyadic or monadic depends on whether a list or another operator is found to the left.

* VALENCE ERROR
* LENGTH ERROR
* DOMAIN ERROR

<a name="arithmetic"/>
arithmetic
----------

    @plus    +
    @minus   -
    @times   ×
    @per     ÷
    @residue |

The arithmetic operators can be dyadic or monadic.  Their use is like in other languages.

_Plus_ `+` and _minus_ `-` are ASCII characters.

The monadic _times_ `×` is the signum function.  The monadic _per_ `÷` returns the reciprocal of its argument.

The _residue_ `|` is like the modulus operator `%` of other languages, but order of the arguments is reversed.  Monadic `|` is the absolute value function.  `| 3J4` is `5`.  `|` is an ASCII character.

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

Monadic _not_ `~` is logical negation.  A domain error results if the argument is not a boolean, i.e. `1` or `0`.  Dyadic _not_ is set difference: the elements on the left with any elements on the right removed. `~` is an ASCII character.

_And_ `∧` and _or_ `∨` are exclusively dyadic.  On boolean arguments they are logical operators.  On other integer arguments they are the least common multiple and greatest common divisor, respectively.

<a name="transcendental"/>
transcendental
--------------

    @power   *
    @log    ⍟
    @circle ○
    @factorial !

Monadic _power_ `*` is the natural exponential function.  `*` is an ASCII character.

Dyadic _log_ `⍟` is the logarithmic function, where the left operand is the base and the right operand is the argument.  Monadic _log_ is the natural logarithm.

Dyadic _circle_ `○` is used for the trigonometric functions.  If the first argument is `1`, `2`, or `3`, then the sin, cos, or tan of the second argument is returned.  If the first argument is `¯1`, `¯2`, or `¯3`, then the arcsin, arccos, or arctan of the second argument is returned.  Monadic _circle_ `○` returns the argument times `π`.

Monadic _factorial_ `!` is the functionn `Γ(arg + 1)`.  When the argument is an integer it is the factorial function.  Dyadic _factorial_ `!` is the beta function.  `!` is an ASCII character.

<a name="truncation"/>
truncation
----------

    @left ⊣
    @right ⊢
    @ceiling ⌈
    @floor ⌊
    @format ⍕

1d array
--------

    @reverse ⌽
    @drop ↓
    @take ↑
    @by ,
    @grade ⍋
    @downgrade ⍒

2d array
--------

    @reshape ⍴
    @upset ⊖
    @cant ⍉
    @inverse ⌹

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
    @count ⍳
    @cycle ≤
    @deal ?
    @from {
    @in ∊
    @index ⍳
    @less ~
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
    @roll ?
    @rotate ⌽
    @rowel ⊖
    @shape ⍴
    @size |
    @table ⍪ 
    @trend ×

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
