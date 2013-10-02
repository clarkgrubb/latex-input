**setup and use:** [mac installation](#mac-install) | [how to use on mac](#mac-howto) | [emacs installation](#emacs-install) | [how to use on emacs](#emacs-howto)

**latex notation:** [relations and operators](#latex-relation-op) | [sets and logic](#latex-sets-logic) | [geometry](#latex-geometry) | [analysis](#latex-analysis) | [algebra](#latex-algebra) | [superscripts and subscript](#latex-superscripts-subscripts) | [arrows](#latex-arrows) | [blackboard bold and fraktur](#latex-blackboard-fraktur) | [english punctuation](#latex-english-punct) | [latin accent](#latex-latin-accent) | [greek](#latex-greek) | [keyboard symbols](#latex-keyboard)

Introduction
============

Use LaTeX notation to enter over 500 Unicode characters.

Here are some examples of LaTeX notation:

    \infty             ∞
    \sum               ∑
    \int               ∫
    \leftarrow         ←
    \alpha             α
    \subseteq          ⊆

Two input methods are provided; one for Mac OS X and one for Emacs.

When an input method is in effect, one types LaTeX notation and it
is rendered to the mathematical symbol on the fly.  E.g. type
\infty followed by a SPACE and an ∞ is inserted into the document.

LaTeX notation which cannot be rendered has no effect.  The input
method cannot make fractions, radicals, or matrices, for example.
Only LaTeX notation for which there is a Unicode character in the Basic
Multilingual Plane (i.e. with a Unicode point less than 64k) is rendered.

<a name="mac-install"/>
Mac Installation
================

    curl https://raw.github.com/clarkgrubb/latex-input/master/latex.el > ~/Library/Input\ Methods/latex.el

Log out and log back in.

Requires Mac OS 10.5 or higher.

<a name="mac-howto"/>
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

<a name="emacs-install"/>
Emacs Installation
==================

Requires GNU Emacs 22 or higher.

Download the Emacs Lisp file to a place in your Emacs library path:

    $ wget https://raw.github.com/clarkgrubb/latex-input/master/latex.el

You can load `latex.el` manually at any time with the command

    M-x load-file RET /PATH/TO/latex.el

To load `latex.el` automatically when Emacs starts up, you need to put something
like this in your startup file, i.e. `~/.emacs`, `~/.emacs.el`, or `~/.emacs.d/init.el`:

    (setq emacs-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
    (add-to-list 'load-path emacs-dir)
    (require 'latex)

Note that the above code assumes that `latex.el` is in the same directory
as your startup file.  Modify to suit your needs.

<a name="emacs-howto"/>
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

In my experience Emacs has a somewhat impoverished font, and as a result it doesn't
always render the symbol, even though the Unicode character was inserted into the
document.

<a name="latex-relation-op"/>
Relations and Operators
=======================
    \le                 ≤                   \pm                 ±
    \ge                 ≥                   \mp                 ∓
    \neq                ≠                   \times              ×
    \approx             ≈                   \div                ÷
    \not\approx         ≉                   \cdot               ⋅
    \simeq              ≃                   \circ               ∘
    \cong               ≅
    \equiv              ≡
    \not\equiv          ≢

<a name="latex-sets-logic"/>
Sets and Logic
==============
    \emptyset           ∅                   \setminus           ∖
    \in                 ∈                   \aleph              א
    \notin              ∉                   \neq                ¬
    \subset             ⊂                   \wedge              ∧
    \subseteq           ⊆                   \vee                ∨
    \not\subset         ⊄                   \veebar             ⊻
    \not\subseteq       ⊈                   \forall             ∀
    \subsetneq          ⊊                   \exists             ∃
    \supsetneq          ⊋                   \top                ⊤
    \supset             ⊃                   \bot                ⊥
    \supseteq           ⊇                   \therefore          ∴
    \cup                ∪                   \vdash              ⊢
    \cap                ∩                   \models             ⊨
    \bigcup             ⋃                   \blacksquare        ∎
    \bigcap             ⋂

<a name="latex-geometry"/>
Geometry
========
    \angle              ∠
    \triangle           △
    \perp               ⊥
    \parallel           ∥
    \cong               ≅
    \sim                ∼

<a name="latex-analysis"/>
Analysis
========
    \infty              ∞                   \lfloor             ⌊
    \Delta              Δ                   \rfloor             ⌋
    \nabla              ∇                   \lceil              ⌈
    \partial            ∂                   \rceil              ⌉
    \sum                ∑                   \|                  ∥
    \prod               ∏                   \langle             ⟨
    \int                ∫                   \rangle             ⟩
    \oint               ∮

<a name="latex-algebra"/>
Algebra
=======
    \oplus              ⊕                   \bigoplus           ⨁
    \otimes             ⊗                   \bigotimes          ⨂
    \triangleleft       ◃
    \unlhd              ⊴
    \rtimes             ⋊
    \wr                 ≀

<a name="latex-superscripts-subscripts"/>
Superscripts and Subscripts
===========================
    ^0                  ⁰                   _0                  ₀
    ^1                  ¹                   _1                  ₁
    ^2                  ²                   _2                  ₂
    ^3                  ³                   _3                  ₃
    ^a                  ᵃ                   _a                  ₐ
    ^b                  ᵇ
    ^c                  ᶜ
    ^A                  ᴬ
    ^B                  ᴮ
    ^+                  ⁺                   _+                  ₊
    ^-                  ⁻                   _-                  ₋
    ^=                  ⁼                   _=                  ₌
    ^(                  ⁽                   _(                  ₍
    ^)                  ⁾                   _)                  ₎
    ^\alpha             ᵅ
    ^\beta              ᵝ                   _\beta              ᵦ
    ^\gamma             ᵞ                   _\gamma             ᵧ

The complete list of superscripts is: `0-9a-pr-zABD-PRTUVW+-=()αβγδ∊θιϕφχ`

The complete list of subscripts is: `0-9aeioruvx+-=()βγρφχ`


<a name="latex-arrows"/>
Arrows
======
    \rightarrow         →                   \Rightarrow         ⇒
    \leftarrow          ←                   \Leftarrow          ⇐
    \uparrow            ↑                   \Uparrow            ⇑
    \downarrow          ↓                   \Downarrow          ⇓
    \nwarrow            ↖                   \nearrow            ↗
    \searrow            ↘                   \swarrow            ↙
    \mapsto             ↦
    \leftrightarrow     ↔                   \Leftrightarrow     ⇔ 
    \rightarrowtail     ↣
    \twoheadrightarrow  ↠
    \hookrightarrow     ↪

<a name="latex-blackboard-fraktur"/>
Blackboard Bold and Fraktur
===========================
    \mathbb{C}          ℂ                   \mathfrak{C}        ℭ
    \mathbb{H}          ℍ                   \mathfrak{H}        ℌ
                                            \mathfrak{I}        ℑ
    \mathbb{N}          ℕ
    \mathbb{P}          ℙ
    \mathbb{Q}          ℚ
    \mathbb{R}          ℝ                   \mathfrak{R}        ℜ
    \mathbb{Z}          ℤ                   \mathfrak{Z}        ℨ

<a name="latex-english-punct"/>
English Punctuation
===================
    `                   ‘                   \S                  §
    '                   ’                   \dag                †
    ``                  “                   \ddag               ‡
    ''                  ”                   \P                  ¶
    --                  –                   \copyright          ©
    ---                 —                   \pounds             £

<a name="latex-latin-accent"/>
Latin Accent
============
    \'{a}               á
    \`{a}               à
    \^{a}               â
    \"{a}               ä
    \={a}               ā

    {\ss}               ß                   {\ae}               æ
    !'                  ¡                   {\AE}               Æ
    ?'                  ¿                   {\aa}               å
    \c{c}               ç                   {\AA}               Å
    \c{C}               Ç                   {\o}                ø
    \~{n}               ñ                   {\O}                Ø
    \~{N}               Ñ                   {\l}                ł
    {\oe}               œ                   {\L}                Ł         
    {\OE}               Œ                 


<a name="latex-greek"/>
Greek
=====
    \alpha              α                   \Alpha              Α
    \beta               β                   \Beta               Β
    \gamma              γ                   \Gamma              Γ
    \delta              δ                   \Delta              Δ
    \epsilon            ϵ                   \Epsilon            Ε
    \zeta               ζ                   \Zeta               Ζ
    \eta                η                   \Eta                Η
    \theta              θ                   \Theta              Θ
    \kappa              κ                   \Kappa              Κ
    \lambda             λ                   \Lambda             Λ
    \mu                 μ                   \Mu                 Μ
    \nu                 ν                   \Nu                 Ν
    \xi                 ξ                   \Xi                 Ξ
    \omicron            ο                   \Omicron            Ο
    \pi                 π                   \Pi                 Π
    \rho                ρ                   \Rho                Ρ
    \sigma              σ                   \Sigma              Σ
    \tau                τ                   \Tau                Τ
    \upsilon            υ                   \Upsilon            Υ
    \phi                ϕ                   \Phi                Φ
    \chi                χ                   \Chi                Χ
    \psi                ψ                   \Psi                Ψ
    \omega              ω                   \Omega              Ω

    \varepsilon         ε
    \varkappa           ϰ
    \varphi             φ
    \varpi              ϖ
    \varrho             ϱ
    \varsigma           ς
    \vartheta           ϑ

<a name="latex-keyboard"/>
Keyboard Symbols
================
The following notation can be added to a LaTeX distrubtion by installing [this package](http://tex.stackexchange.com/questions/19646/how-to-typeset-special-apple-mac-keyboard-symbols).

    \cmdkey            ⌘                   \tabkey             ⇥
    \optkey            ⌥                   \revtabkey          ⇤
    \shiftkey          ⇧                   \esckey             ⎋
    \delkey            ⌫                   \returnkey          ⏎
    \capslockkey       ⇪                   \enterkey           ⌤
    \ejectkey          ⏏                   \rightdelkey        ⌦
