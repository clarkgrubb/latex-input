**latex notation:** [about latex](#about-latex) | [relations and operators](#latex-relation-op) | [sets and logic](#latex-sets-logic) | [geometry](#latex-geometry) | [analysis](#latex-analysis) | [algebra](#latex-algebra) | [superscripts and subscripts](#latex-superscripts-subscripts) | [arrows](#latex-arrows) | [dots](#latex-dots) | [blackboard bold, fraktur, and calligraphic](#latex-blackboard-fraktur-calligraphic) | [english punctuation](#latex-english-punct) | [latin accent](#latex-latin-accent) | [greek](#latex-greek) | [ipa: plosives](#latex-ipa-plosives) | [ipa: nasals](#latex-ipa-nasals) | [ipa: fricatives & approximants](#latex-ipa-fricatives-approximants) | [ipa: vowels](#latex-ipa-vowels) | [astronomy](#latex-astronomy) | [games](#games) | [keyboard symbols](#latex-keyboard)

**install and use:** [mac os x](#mac-install) | [microsoft windows](#windows-install) | [emacs](#emacs-install) | [x windows](#x-install)

**apl notation:** [apl input methods](#apl)

----

Difficulty typing mathematical symbols?

Install a keyboard input method for mathematics and use LaTeX notation to enter 1054 Unicode characters.

Input methods for [Mac OS X](#mac-install), [Microsoft Windows](#windows-install),
[Emacs](#emacs-install), and [X Windows](#x-install).

Introduction
============

Here are some examples of LaTeX notation:

    \infty             ∞
    \sum               ∑
    \int               ∫
    \leftarrow         ←
    \alpha             α
    \subseteq          ⊆

When the input method is in effect, one types LaTeX notation and it
is rendered to the mathematical symbol on the fly.  E.g. type
`\infty` followed by a `SPACE` and an `∞` is inserted into the document.

LaTeX notation which cannot be rendered has no effect.  The input
method cannot make fractions, radicals, or matrices, for example.
Only LaTeX notation for which there is a Unicode character is rendered.

<a name="about-latex"/>

About LaTeX
===========

LaTeX is used for documents which contain mathematical notation.  The mathematical notation
is set off from the rest of the text by *math mode* markers such as the double dollar sign, e.g:

    $$ x = 3 $$

Outside of the markers LaTeX is in *paragraph mode*.

Most of the notation used by the input methods is drawn from *math mode*.  Notation from
*paragraph mode* is also used where it does not conflict.  An example of a conflict is the single
quote `'` and doubled single quotes `''` which are right single quote and right double quote
in *paragraph mode* and prime and double prime in *math mode*.

The input methods also use notation from the following four packages:

    \usepackage{amsmath}
    \usepackage{amssymb}
    \usepackage{wasysym}
    \usepackage{tipa}

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
    \not<               ≮
    \not>               ≯
    \not\le             ≰
    \not\ge             ≱
    \ll                 ≪
    \gg                 ≫

<a name="latex-sets-logic"/>

Sets and Logic
==============

    \emptyset           ∅                   \aleph              ℵ
    \in                 ∈                   \beth               ℶ
    \notin              ∉                   \neg                ¬
    \ni                 ∋                   \wedge              ∧
    \not\ni             ∌                   \vee                ∨
    \subset             ⊂                   \veebar             ⊻
    \subseteq           ⊆                   \forall             ∀
    \not\subset         ⊄                   \exists             ∃
    \not\subseteq       ⊈                   \top                ⊤
    \subsetneq          ⊊                   \bot                ⊥
    \supsetneq          ⊋                   \therefore          ∴
    \supset             ⊃                   \vdash              ⊢ 
    \supseteq           ⊇                   \models             ⊨ 
    \cup                ∪                   \Box                □
    \cap                ∩                   
    \bigcup             ⋃                   
    \bigcap             ⋂                   
    \setminus           ∖

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
    \iint               ∬                   '                   ′
    \iiint              ∭                   ''                  ″
    \iiiint             ⨌                  '''                 ‴
    \oint               ∮
    \Re                 ℜ
    \Im                 ℑ
    \wp                 ℘

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

Can be superscript: `0-9a-pr-zABD-PRTUVW+-=()αβγδ∊θιϕφχ`

Can be subscript: `0-9aehijklmnoprstuvx+-=()βγρφχ`


<a name="latex-arrows"/>

Arrows
======

    \rightarrow         →                   \Rightarrow         ⇒
    \leftarrow          ←                   \Leftarrow          ⇐
    \uparrow            ↑                   \Uparrow            ⇑
    \downarrow          ↓                   \Downarrow          ⇓
    \nwarrow            ↖                  \nearrow            ↗
    \searrow            ↘                  \swarrow            ↙
    \mapsto             ↦
    \leftrightarrow     ↔                   \Leftrightarrow     ⇔ 
    \rightarrowtail     ↣
    \twoheadrightarrow  ↠
    \hookrightarrow     ↪

<a name="latex-dots"/>

Dots
====

    \cdot               ⋅
    \cdots              ⋯
    \ddots              ⋱
    \ldots              …
    \vdots              ⋮

<a name="latex-blackboard-fraktur-calligraphic"/>

Blackboard Bold, Fraktur, and Calligraphic
==========================================

Some of the characters in this section have Unicode points greater than `U+FFFF`.

    \mathbb{A}          𝔸                   \mathbb{a}          𝕒
    \mathbb{B}          𝔹                   \mathbb{b}          𝕓
    \mathbb{C}          ℂ                   \mathbb{c}          𝕔
    \mathbb{0}          𝟘
    \mathbb{1}          𝟙
    \mathbb{2}          𝟚

    \mathfrak{A}        𝔄                   \mathfrak{a}        𝔞
    \mathfrak{B}        𝔅                   \mathfrak{b}        𝔟
    \mathfrak{C}        ℭ                   \mathfrak{c}        𝔠

    \mathcal{A}         𝒜                   \mathcal{a}         𝒶
    \mathcal{B}         ℬ                   \mathcal{b}         𝒷
    \mathcal{C}         𝒞                    \mathcal{c}         𝒸

<a name="latex-english-punct"/>

English Punctuation
===================

    `                   ‘                   \S                  §
    \mbox{'}            ’                   \dag                †
    ``                  “                   \ddag               ‡
    \mbox{''}           ”                   \P                  ¶
    --                  –                   \copyright          ©
    ---                 —                   \pounds             £

<a name="latex-latin-accent"/>

Latin Accent
============

    \'a                 á                   \acute{a}           á
    \`a                 à                   \grave{a}           à
    \^a                 â                   \hat{a}             â
    \"a                 ä                   \ddot{a}            ä
    \~a                 ã                   \tilde{a}           ã
    \v{a}               ǎ                   \check{a}           ǎ
    \=a                 ā                   \bar{a}             ā
    \u{a}               ǎ                   \breve{a}           ȧ
    \.a                 ȧ                   \dot{a}             ạ
    \d{a}               ạ

    \ss                 ß                   \ae                 æ
    !'                  ¡                   \AE                 Æ
    ?'                  ¿                   \aa                 å
    \c{c}               ç                   \AA                 Å
    \c{C}               Ç                   \dh                 ð
    \~n                 ñ                   \DH                 Ð
    \~N                 Ñ                   \l                  ł
    \oe                 œ                   \L                  Ł         
    \OE                 Œ                   \o                  ø                 
                                            \O                  Ø
                                            \th                 þ
                                            \TH                 Þ

Acute: `á ć é ǵ í ḱ ĺ ḿ ń ó ṕ ŕ ś ú ẃ ý ź Á Ć É Ǵ Í Ḱ Ĺ Ḿ Ń Ó Ṕ Ŕ Ś Ú Ẃ Ý Ź`

Grave: `à è ì ǹ ò ù ẁ ỳ À È Ì Ǹ Ò Ù Ẁ Ỳ`

Circumflex: `â ĉ ê ĝ ĥ î  ĵ ô ŝ û ŵ ŷ ẑ Â Ĉ Ê Ĝ Ĥ Î Ĵ Ô Ŝ Û Ŵ Ŷ Ẑ`

Dieresis: `ä ë ḧ ï ö ẗ ü ẅ ẍ ÿ Ä Ë Ḧ Ï Ö Ü Ẅ Ẍ Ÿ`

Tilde: `ã ẽ ĩ ñ õ ũ ỹ Ā Ẽ Ĩ Ñ Õ Ũ Ỹ`

Caron: `ǎ č ď ň ř š ť ž Ǎ Č Ď Ň Ř Š Ť Ž`

Macron: `ā ē ḡ ō ū ȳ Ā Ē Ḡ Ī Ō Ū Ȳ`

Breve: `ă ĕ ğ ĭ ŏ ŭ Ă Ĕ Ğ Ĭ Ŏ Ŭ` 

Overdot: `ȧ ḃ ċ ḋ ė ḟ ġ ḣ ṁ ṅ ȯ ṗ ṙ ṡ ṫ ẇ ẋ ẏ ż Ȧ Ḃ Ċ Ḋ Ė Ḟ Ġ Ḣ İ Ṁ Ṅ Ȯ Ṗ Ṙ Ṡ Ṫ Ẇ Ẋ Ẏ Ż`

Underdot: `ạ ḅ ḍ ẹ ḥ ị ḳ ḷ ṃ ṇ ọ ṛ ṣ ṭ ụ ṿ ẉ ỵ ẓ Ạ Ḅ Ḍ Ẹ Ḥ Ị Ḳ Ḷ Ṃ Ṇ Ọ Ṛ Ṣ Ṭ Ụ Ṿ Ẉ Ỵ Ẓ` 

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

International Phonetic Alphabet
===============================

<a name="latex-ipa-plosives"/>

Plosives
--------

    b                    b    voiced bilabial plosive
    c                    c    voiceless palatal plosive (e.g. Hungarian ty)
    d                    d    voiced dental/alveolar plosive
    \textrtaild          ɖ    voiced retroflex plosive
    g                    g    voiced velar plosive
    \textscg             ɢ    voiced uvular plosive
    k                    k    voiceless velar plosive
    p                    p    voiceless bilabial plosive
    q                    q    voiceless uvular plosive
    t                    t    voiceless dental/alveolar plosive
    \textrtailt          ʈ    voiceless retroflex plosive
    \textglotstop        ʔ    glottal plosive
    \textbarglotstop     ʡ    epiglottal plosive

<a name="latex-ipa-nasals"/>

Nasals
------

    m                    m    voiced bilabial nasal
    \textltailm          ɱ    voiced labiodental nasal
    n                    n    voiced dental/alveolar nasal
    \textrtailn          ɳ    voiced retroflex nasal
    \textltailn          ɲ    voiced palatal nasal
    \ng                  ŋ    voiced velar nasal
    \textscn             ɴ    voiced uvular nasal

<a name="latex-ipa-fricatives-approximants"/>

Fricatives & Approximants
-------------------------

    \textbeta            β    voiced bilabial fricative
    \textctc             ɕ    voicelss alveolo-palatal median laminal fricative
    \c{c}                ç    voiceless palatal median fricative.
    \dh                  ð    voiced apico-dental/interdental fricative
    f                    f    voiceless labiodental fricative
    \textgamma           ɣ    voiced velar fricative
    h                    h    voiceless glottal fricative/approximant
    \textcrh             ħ    voiceless pharyngeal fricative
    \textturnh           ɥ    voiced rounded palatal median approximant (i.e. rounded [j])
    \textsch             ʜ    voiceless epiglottal fricative
    \texthth             ɦ    voiced glottal fricative
    \texththeng          ɧ    combination of [x] and [ʃ] (e.g. Swedish tj, kj)
    j                    j    voiced palatal median approximant
    \textctj             ʝ    voiced palatal median fricative
    l                    l    voiced alveolar lateral approximant
    \textrtaill          ɭ    voiced retroflex lateral approximant
    \textbeltl           ɬ    voiceless alveolar lateral fricative
    \textltilde          ɫ    velarized voiced alveolar lateral approximant
    \textlyoghlig        ɮ    voiced alveolar lateral fricative
    \textscl             ʟ    voiced velar lateral approximant
    \textturnmrleg       ɰ    voiced velar median approximant
    \texttheta           θ    voiceless interdental median fricative
    \textphi             ɸ    voiceless bilabial fricative
    r                    r    voiced apico-alveolar trill
    \textturnr           ɹ    voiced alveolar/postalveolar approximant
    \textturnlonglegr    ɺ    voiced alveolar lateral flap
    \textfishhookr       ɾ    voiced alveolar flap
    \textturnrrtail      ɻ    voiced retroflex approximant
    \textscr             ʀ    voiced uvular trill or flap
    \textinvscr          ʁ    voiced uvular fricative or approximant (e.g. French r)
    \textrtailr          ɽ    voiced retroflex flap
    s                    s    voiceless alveolar median fricative
    \textrtails          ʂ    voiceless retroflex median fricative
    \textesh             ʃ    voiceless palato-alveolar median laminal fricative
    v                    v    voiced labiodental fricative
    \textscriptv         ʋ    voiced labiodental approximant
    w                    w    voiced rounded labial-velar approximant
    \textturnw           ʍ    voiceless rounded labial-velar approximant/fricative (i.e. voiceless [w])
    x                    x    voiceless velar median fricative
    \textchi             χ    voicelss uvular median fricative
    \textturny           ʎ    voiced palatal lateral approximant (e.g. Italian gl)
    z                    z    voiced alveolar/dental median fricative
    \textrtailz          ʐ    voiced retroflex median fricative
    \textctz             ʑ    voiced alveolo-palatal median laminal fricative
    \textyogh            ʒ    voiced palato-alveolar median laminal fricative
    \textrevglotstop     ʕ    voiced pharyngeal fricative
    \textbarrevglotstop  ʢ    voiced epiglottal fricative

<a name="latex-ipa-vowels"/>

Vowels
-----

    a                    a    unrounded front low vowel (cardinal vowel no. 4)
    \textturna           ɐ    unrounded central low vowel
    \textscripta         ɑ    unrounded back low vowel (cardinal vowel no. 5)
    \textturnscripta     ɒ    rounded back low vowel (cardinal vowel no. 13)
    \ae                  æ    unrounded front semi-low vowel
    e                    e    unrounded front high-mid vowel (cardinal vowel no. 2)
    \textschwa           ə    unrounded central mid vowel
    \textreve            ɘ    unrounded central high-mid vowel
    \textrighthookschwa  ɚ    rhotacized [ə]
    \textepsilon         ɛ    unrounded front low-mid vowel (cardinal vowel no. 3)
    \textrevepsilon      ɜ    unrounded central low-mid vowel
    \textrhookrevepsilon ɝ    rhotacized [ɜ]
    \textcloserevepsilon ɞ    rounded central low-mid vowel
    \textbabygamma       ɤ    unrounded back high-mid vowel (cardinal vowel no. 15)
    \textturnm           ɯ    unrounded back high vowel (cardinal vowel no. 16)
    i                    i    unrounded front high vowel (cardinal vowel no. 1)
    \textiota            ι    unrounded front semi-high vowel
    \textsci             ɪ    synonym for [ι]
    \textbari            ɨ    unrounded central high vowel (cardinal vowel no. 17)
    o                    o    rounded back high-mid vowel (cardinal vowel no. 7)
    \textbaro            ɵ    rounded central high-mid vowel
    \o                   ø    rounded front high-mid vowel (cardinal vowel no. 10)
    \oe                  œ    rounded front low-mid vowel (cardinal vowel no. 11)
    \textscoelig         ɶ    rounded front low vowel (cardinal vowel no. 12)
    \textopeno           ɔ    rounded back low-md vowel (cardinal vowel no. 6)
    u                    u    rounded back high vowel (cardinal vowel no. 8)
    \textbaru            ʉ    rounded central high vowel (cardinal vowel no. 18)
    \textupsilon         ʊ    rounded back semi-high vowel
    \textturnv           ʌ    unrounded back low-mid vowel (cardinal vowel no. 14)
    y                    y    rounded front high vowel (cardinal vowel no. 9)
    \textscy             ʏ    rounded front semi-high vowel

<a name="latex-ipa-implosives-clicks"/>

Implosives & Clicks
-------------------

    \texthtb             ɓ    voiced glottalic ingressive bilabial stop
    \texthtd             ɗ    voiced glottalic ingressive dental/postalveolar stop
    \texthtg             ɠ    voiced glottalic ingressive velar stop
    \texthtscg           ʛ    voiced glottalic ingressive uvular stop
    \textbullseye        ʘ    bilabial click
    \textpipe            ǀ    dental click
    \textdoublepipe      ǁ    lateral click
    !                    !    alveloar/postalveolar click



<a name="latex-astronomy"/>

Astronomy
=========

    \mercury           ☿                   \aries              ♈
    \venus             ♀                   \taurus             ♉
    \earth             ⊕                   \gemini             ♊
    \mars              ♂                   \cancer             ♋
    \jupiter           ♃                   \leo                ♌
    \saturn            ♄                   \virgo              ♍
    \uranus            ⛢                   \libra              ♎
    \neptune           ♆                   \scorpio            ♏
    \pluto             ♇                   \sagittarius        ♐
    \astrosun          ☉                   \capricornus        ♑
    \rightmoon         ☽                   \aquarius           ♒
    \leftmoon          ☾                   \pisces             ♓
    \ascnode           ☊
    \descnode          ☋
    \conjunction       ☌
    \opposition        ☍    

<a name="games"/>

Games
=====

    \blackbishop      ♝                       \epsdice{1}      ⚀
    \blackking        ♚                       \epsdice{2}      ⚁
    \blackknight      ♞                       \epsdice{3}      ⚂
    \blackpawn        ♟                       \epsdice{4}      ⚃
    \blackqueen       ♛                       \epsdice{5}      ⚄
    \blackrook        ♜                       \epsdice{6}      ⚅
    \whitebishop      ♗                       \clubsuit        ♣
    \whiteking        ♔                       \heartsuit       ♡
    \whiteknight      ♘                       \spadesuit       ♠
    \whitepawn        ♙                       \diamondsuit     ♢
    \whitequeen       ♕
    \whiterook        ♖

<a name="latex-keyboard"/>

Keyboard Symbols
================

The following notation can be added to a LaTeX distribution by installing [this package](http://tex.stackexchange.com/questions/19646/how-to-typeset-special-apple-mac-keyboard-symbols).

    \cmdkey            ⌘                   \tabkey             ⇥
    \optkey            ⌥                   \revtabkey          ⇤
    \shiftkey          ⇧                   \esckey             ⎋
    \delkey            ⌫                   \returnkey          ⏎
    \capslockkey       ⇪                   \enterkey           ⌤
    \ejectkey          ⏏                   \rightdelkey        ⌦

<a name="mac-install"/>

Mac OS X
========

installation
------------

    $ curl https://raw.githubusercontent.com/clarkgrubb/latex-input/master/latex.cin \
        > ~/Library/Input\ Methods/latex.cin

<a name="mac-howto"/>

how to use
----------

In

    System Preferences | Keyboard | Input Sources

you should see a new input source called `LaTeX`.  An input source
is what Mac OS X calls an input method.  If you check the box next
to `LaTeX` and if you make sure that `Show Input menu in menu bar` is
checked, then you can use the menu bar to set or unset LaTeX as the
input source.

When you type LaTeX notation it will be underlined.  When the notation
is finished, type `SPACE` to render it or `RETURN` to use it without rendering
it.  `SPACE` and `RETURN` are special when used in this manner and don't insert
a space or a newline in the document.  If you want a space or newline you
must press `SPACE` or `RETURN` again.

The Mac LaTeX input source is case insensitive.  In LaTeX, `\Delta` is used
for `Δ` and `\delta` is used for `δ`, but the Mac LaTeX input source will nevertheless
insist that you disambiguate.  It does this with a pop-up window.  Use the arrow
keys to select the correct symbol and press `RETURN`.

To set a Mac OS X keyboard shortcut for switching input source, go to:

    System Preferences | Keyboard | Shortcuts | Input Sources

<a name="windows-install"/>

Microsoft Windows
=================

installation
------------

Download [latex.exe](https://raw.githubusercontent.com/clarkgrubb/latex-input/master/latex.exe) and install it in your Startup folder.  Open the Startup folder in File Explorer by pressing `Cmd+R` and entering `shell:startup`.  The input method will run the next time you log in.  You can also start it by double-clicking it in File Explorer.

If you have [AutoHotkey](http://www.autohotkey.com/) installed, you can download and install [latex.ahk](https://raw.githubusercontent.com/clarkgrubb/latex-input/master/latex.ahk) instead.

<a name="windows-howto"/>

how to use
----------

The input method starts in an inactivate state.  Use `Ctrl+Alt+L` to toggle between active and inactive.

When the input method is active, type LaTeX notation followed by a `SPACE` to render a symbol.

<a name="emacs-install"/>

Emacs
=====

installation
-----------

*Note: Emacs already comes with an input method called* TeX.

Download the Emacs Lisp file to a place in your Emacs library path:

    $ wget https://raw.githubusercontent.com/clarkgrubb/latex-input/master/latex.el

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

how to use
----------

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
  rendering it by typing `RETURN`.
* The Emacs input method is case sensitive, so if you type `\Delta` or `\delta` you
  will get `Δ` or `δ` without any need to disambiguate.
* If you want to type some LaTeX notation without rendering it, type any key but
  `SPACE` when you are done.  The key that you press will be entered into the document.
  That means that if wanted the next character to be a `SPACE` you must delete the
  character you typed and then type a `SPACE`.
* The Emacs input method will show all possible completions for partially typed
  notation in a separate buffer if you type `TAB`.

In my experience Emacs uses a somewhat impoverished font, and as a result it doesn't
always render the symbol, even though the Unicode character was inserted into the
document.

<a name="x-install"/>

X Windows
=========

installation
------------

*Note: Ubuntu already comes with a package called* ibus-latex-table.

The following procedure works on Ubuntu 12.04.

Install the necessary packages:

    $ sudo apt-get install im-config ibus-table

This command launches a pop-up window to choose the input method configuration.  Choose `ibus`:

    $ im-config

The above command should also create the file `.xinputrc` if it does not exist and add this line:

    run_im ibus

Then install the input method

    $ sudo ./ibus-install.sh

*If you want to install both the* `ibus-latex-table` *input method and the input method provided
by this repository, you must give it a name other than the default* `latex`.  *Do something like this instead:*

    $ sudo ./ibus-install.sh latex2

Log out of X Windows and log back in.  There should be a keyboard symbol in the menu bar.  Click on the symbol and select `Preferences`.  Under the `Input Methods` tab, select the `Customize active input methods` checkbox.  Then in the `Select an input method` drop down, select `Other`.  Find the latex input method and add it.


<a name="x-howto"/>

how to use
----------

There should be an iBus icon in the menu bar which changes depending upon the input method that is in effect.  When no input method is in effect, the icon is a keyboard.  The input method can be changed by clicking the icon and selecting from the drop down.  The input method is set per application.

When the latex input method is in effect, one types LaTeX notation, following by `SPACE` to render or `RETURN` to accept the LaTeX notation literally.

<a name="apl"/>

APL Input Methods
=================

[APL input methods](apl/README.md)

The programming language APL uses 85 non-ASCII Unicode characters.  This repository provides input methods for entering them using an ASCII keyboard.  The input notation starts with an ampersand `@` followed by a name used in the APL community for the symbol.

Since LaTeX input notation usually starts with a backslash and never with an ampersand, it is disjoint from the APL input notation.  Hence we are able to provide a single input method for both.


