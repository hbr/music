\version  "2.24.4"
\language "english"


\header {
    title = "Happy Birthday - 7 Modes"
    tagline = ""
}




text = \lyricmode {
    Hap -- py |
    birth -- day to |
    you.  Hap -- py |
    birth -- day to |
    you.  Hap -- py |
    birth -- day hap -- py |
    birth -- day hap -- py |
    birth -- day to |
    you.
}


"no text" = \lyricmode { }




%----------------------------------------------------------------------
% Ionian
%----------------------------------------------------------------------


"ionian voice" = \relative g' {
    \partial 4
        g8. g16 |
    a4 g c  |
    b2
        g8. g16 |
    a4 g d' |
    c2
        g8. g16 |
    g'4 e c8. c16 |
    b4 a\fermata

        f'8. f16 |
    e4 c d |
    c2.
}

"ionian alt" = \relative c' {
    \partial 4
        r4 |
    e2. |
    d2. |
    f2. |
    e2. |
    g2. |
    f2. |
    g2 f4 |
    e2.
}


"ionian bass" = \relative c {
    \partial 4
        r4 |
    < c g'>2. |
    < g g'>2. |
    < b g'>2.  |
    < c g'>2.  |
    < e g>2.   |
    < f, c'>2.  |
    < g' c>2 <g b>4 |
    < c, g'>2.
}







%----------------------------------------------------------------------
% Dorian
%----------------------------------------------------------------------


"dorian voice" = \relative g' {
    \partial 4
        g8. g16 |
    a4 g c  |
    bf2
        g8. g16 |
    a4 g d' |
    c2
        g8. g16 |
    g'4 ef c8. c16 |
    bf4 a\fermata

        f'8. f16 |
    ef4 c d |
    c2.
}

"dorian alt" = \relative c' {
    \partial 4
        r4 |
    ef2. |
    d2. |
    f2. |
    ef2. |
    g2. |
    f2. |
    g2 f4 |
    ef2.
}


"dorian bass" = \relative c {
    \partial 4
        r4 |
    < c g'>2. |
    < g g'>2. |
    < bf g'>2.  |
    < c g'>2.  |
    < ef g>2.   |
    < f, c'>2.  |
    < g' c>2 <g bf>4 |
    < c, g'>2.
}








%----------------------------------------------------------------------
% Phrygian
%----------------------------------------------------------------------


"phrygian voice" = \relative g' {
    \partial 4
        g8. g16 |
    af4 g c  |
    bf2
        g8. g16 |
    af4 g df' |
    c2
        g8. g16 |
    g'4 ef c8. c16 |
    bf4 af\fermata

        f'8. f16 |
    ef4 c df |
    c2.
}

"phrygian alt" = \relative c' {
    \partial 4
        r4 |
    ef2. |
    df2. |
    f2. |
    ef2. |
    g2. |
    f2. |
    g2 f4 |
    ef2.
}


"phrygian bass" = \relative c {
    \partial 4
        r4 |
    < c g'>2. |
    < g g'>2. |
    < bf g'>2.  |
    < c g'>2.  |
    < ef g>2.   |
    < f, c'>2.  |
    < g' c>2 <g bf>4 |
    < c, g'>2.
}







%----------------------------------------------------------------------
% Lydian
%----------------------------------------------------------------------


"lydian voice" = \relative g' {
    \partial 4
        g8. g16 |
    a4 g c  |
    b2
        g8. g16 |
    a4 g d' |
    c2
        g8. g16 |
    g'4 e c8. c16 |
    b4 a\fermata

        fs'8. fs16 |
    e4 c d |
    c2.
}

"lydian alt" = \relative c' {
    \partial 4
        r4 |
    e2. |
    d2. |
    fs2. |
    e2. |
    g2. |
    fs2. |
    g2 fs4 |
    e2.
}


"lydian bass" = \relative c {
    \partial 4
        r4 |
    < c g'>2. |
    < g g'>2. |
    < b g'>2.  |
    < c g'>2.  |
    < e g>2.   |
    < fs, c'>2.  |
    < g' c>2 <g b>4 |
    < c, g'>2.
}







%----------------------------------------------------------------------
% Aolian
%----------------------------------------------------------------------


"aolian voice" = \relative g' {
    \partial 4
        g8. g16 |
    af4 g c  |
    bf2
        g8. g16 |
    af4 g d' |
    c2
        g8. g16 |
    g'4 ef c8. c16 |
    bf4 af\fermata

        f'8. f16 |
    ef4 c d |
    c2.
}

"aolian alt" = \relative c' {
    \partial 4
        r4 |
    ef2. |
    d2. |
    f2. |
    ef2. |
    g2. |
    f2. |
    g2 f4 |
    ef2.
}


"aolian bass" = \relative c {
    \partial 4
        r4 |
    < c g'>2. |
    < g g'>2. |
    < bf g'>2.  |
    < c g'>2.  |
    < ef g>2.   |
    < f, c'>2.  |
    < g' c>2 <g bf>4 |
    < c, g'>2.
}








%----------------------------------------------------------------------
% Mixolydian
%----------------------------------------------------------------------


"mixolydian voice" = \relative g' {
    \partial 4
        g8. g16 |
    a4 g c  |
    bf2
        g8. g16 |
    a4 g d' |
    c2
        g8. g16 |
    g'4 e c8. c16 |
    bf4 a\fermata

        f'8. f16 |
    e4 c d |
    c2.
}

"mixolydian alt" = \relative c' {
    \partial 4
        r4 |
    e2. |
    d2. |
    f2. |
    e2. |
    g2. |
    f2. |
    g2 f4 |
    e2.
}


"mixolydian bass" = \relative c {
    \partial 4
        r4 |
    < c g'>2. |
    < g g'>2. |
    < bf g'>2.  |
    < c g'>2.  |
    < e g>2.   |
    < f, c'>2.  |
    < g' c>2 <g bf>4 |
    < c, g'>2.
}







%----------------------------------------------------------------------
% Locrian
%----------------------------------------------------------------------


"locrian voice" = \relative g' {
    \partial 4
        gf8. gf16 |
    af4 gf c  |
    bf2
        gf8. gf16 |
    af4 gf df' |
    c2
        gf8. gf16 |
    gf'4 ef c8. c16 |
    bf4 af\fermata

        f'8. f16 |
    ef4 c df |
    c2.
}

"locrian alt" = \relative c' {
    \partial 4
        r4 |
    ef2. |
    df2. |
    f2. |
    ef2. |
    gf2. |
    f2. |
    gf2 f4 |
    ef2.
}


"locrian bass" = \relative c {
    \partial 4
        r4 |
    < c gf'>2. |
    < gf gf'>2. |
    < bf gf'>2.  |
    < c gf'>2.  |
    < ef gf>2.   |
    < f, c'>2.  |
    < gf' c>2 <gf bf>4 |
    < c, gf'>2.
}








%----------------------------------------------------------------------
% Main
%----------------------------------------------------------------------




makeMusic =
#(define-music-function (text sopran alt bass) (ly:music? ly:music? ly:music?  ly:music?)
    #{
        \new PianoStaff <<
            \new Staff <<
                \time 3/4
                \tempo 4 = 120

                \new Voice = "voice" { \voiceOne $sopran }

                \new Voice  { \voiceTwo $alt }
            >>

            \new Lyrics \lyricsto "voice" $text

            \new Staff {
                \clef bass
                $bass
            }
        >>
    #}
)


\score {
    \header {
        piece = "Dur" 
    }

    \makeMusic \"text" \"ionian voice" \"ionian alt" \"ionian bass"

    \layout {}
    \midi {}
}


\score {
    \header {
        piece = "Dorian" 
    }

    \makeMusic \"no text" \"dorian voice" \"dorian alt" \"dorian bass"

    \layout {}
    \midi {}
}


\score {
    \header {
        piece = "Phrygian" 
    }

    \makeMusic \"no text" \"phrygian voice" \"phrygian alt" \"phrygian bass"

    \layout {}
    \midi {}
}


\score {
    \header {
        piece = "Lydian" 
    }

    \makeMusic \"no text" \"lydian voice" \"lydian alt" \"lydian bass"

    \layout {}
    \midi {}
}


\score {
    \header {
        piece = "Mixolydian" 
    }

    \makeMusic \"no text" \"mixolydian voice" \"mixolydian alt" \"mixolydian bass"

    \layout {}
    \midi {}
}


\score {
    \header {
        piece = "Aolian" 
    }

    \makeMusic \"no text" \"aolian voice" \"aolian alt" \"aolian bass"

    \layout {}
    \midi {}
}


\score {
    \header {
        piece = "Locrian" 
    }

    \makeMusic \"no text" \"locrian voice" \"locrian alt" \"locrian bass"

    \layout {}
    \midi {}
}
