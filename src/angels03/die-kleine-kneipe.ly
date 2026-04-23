\language "english"
\version "2.24.4"



% Refrain
%----------------------------------------------------------------------

"refrain text" = \lyricmode {
    Die klei -- ne
    | Kir -- che in
    | uns -- rer Ge --
    | mein -- de,

    da wo das
    | Le -- ben noch
    | le -- bens -- wert
    | ist.

    Dort in der
    | Kir -- che in
    | uns -- rer Ge --
    | mein -- de,

    da fragt dich
    | kei --  ner was du
    | hast    o -- der
    | bist.
}


refrain = \relative c' {
    \key g \major
    b8^"Refrain" d <e g>
    | <g b>4. <g b>4 <d g>8
    | d4. d4 e8
    | d4. d4. ~
    | 4 r8

    b8 d <e g>
    | <g b>4. <g b>4 <d g>8
    | d4. d4 e8
    | d2. ~
    | 4.

    d8 d d
    | e4. e4 e8
    | e4. g4 c8
    | b4. g4.
    | r4.

    d8 d d
    | d8 d4  r8 d8 d
    | fs4. ~ 8 e8 fs8
    | g2.
    | r4.
}





% Verse
%----------------------------------------------------------------------

verse = \relative c' {
    \key g \minor
    r4 r16 d16^"Verse"
    | bf'8 bf bf   bf bf  a16 g16 ~
    | 8    g  g    g  g8.  d16
    | d8   d  d    d  f ef
    | d4. ~ 4

    r16 d16
    | a'8 a  a    a  a8  g16 fs16 (
    | fs8) fs fs   fs fs8. d16
    | d8 ~ 8  d   d  f  ef
    | d4.

    r4 r16 d16
    | bf'8 bf bf   bf bf   a16 g16 ~
    | 8    g  g    g  g8.  d16
    | d8   d  d    d  g    d
    | ef4. ~ 4

    r16 d16
    | a'8  a a    a  a g16 fs16 (
    | fs8) fs fs   fs fs8. d16
    | d8  d  d    d  e  fs
    | g4.
}


"stanza 1" = \lyricmode {
    Von
    | fern hört man längst schon das
      Tö -- nen der Glo -- cke, sie
    | läu -- tet den Got -- tes -- dienst
    | ein.


    Herr
    | Schmid und Frau Braun sind auch
      schon auf dem We -- ge, zur
    | Tho -- mas -- kir -- che in
    | Mainz.

    So
    | fül -- len sich bald die oft
      noch kal -- ten Bän -- ke, mal
    | mehr und mal we -- ni -- ger
    | an.

    Und
    | pünkt -- lich halb zehn schließt der
      Vor -- stand die Tü -- re, denn
    | jetzt fängt der Got -- tes -- dienst
    | an.
}


"stanza 2" = \lyricmode {
    Die
    | Tho -- mas -- ge -- mein -- de, die
      ist oh -- ne Pfar -- rer, ab
    | und zu kommt ei -- ner vor --
    | bei.

    Das
    | ken -- nen wir schon und drum
      ma -- chen wir wei -- ter, was
    | hilft da auch Jam -- me --
    | rei.

    Ge --
    | mein -- sam wird vie -- les ge --
      plant und ge -- ma -- acht, ab
    | und an geht auch mal was
    | schief.

    Viel
    | Grup -- pen gibts e -- wig, sowie
      Hea -- ven -- sieben-und -- neun -- zig, die
    | sind zwan -- zig  Jah -- re ak --
    | tiv.
}


"stanza 3" = \lyricmode {
    Der
    | Se -- gen er -- teilt und die
      Mes -- se vo -- rü -- ber, doch
    | vie -- le gehn nicht gleich nach
    | Haus,

    denn
    | drü -- ben schallt aus ei -- ner
      of -- fe -- nen Tü -- re, noch
    | hei-te -- res Trei -- ben her --
    | aus.

    Kommt's
    | vom Weih -- nachts -- ba -- zaar oder
      vom O -- ster -- feu -- er, oder
    | gibt es gar was kos -- ten --
    | los,

    nein
    | heu -- te da schallt es vom
      Krep -- pel -- ka -- fe -- e, denn-in
    | Tho -- mas ist im -- mer was
    | los.
}










\header {
    title    = "Die kleine Kirche"
    composer = "Petrus Pierre Kartner"
    poet     = "Text ????"
    tagline  = ""
}


\score {
  \new Staff {
    \time 6/8
    \tempo 4. = 60
    \partial 4.

    \verse

    \refrain
  }

  \addlyrics { \set stanza = "1. " \"stanza 1" \"refrain text"}

  \addlyrics { \set stanza = "2. " \"stanza 2"}

  \addlyrics { \set stanza = "3. " \"stanza 3"}


  \layout {}
  \midi   {}
}
