\version "2.24.3"
\language "english"
\include "../scheme-functions.ly"








% Score inner part
% ======================================================================


makeScoreInner =
#(define-music-function
    (select) (number?)
    #{
        \relative c' { c2. }
    #}
)







% Books
% ======================================================================



\book {
    \header {
        title    = "Night of Silence / Stille Nacht"
        composer = ""
        arranger = ""
        tagline  = ""
    }
    \score {
        \new ChoirStaff
        <<
            \new Staff
            <<
                \clef treble
                \time 3/4
                \key a \major
                \tempo 4 = 120

                \new Voice = "soprano" {
                    %\set Staff.midiInstrument = "choir aahs"
                    \set Staff.midiInstrument = "voice oohs"
                    \relative c' {
                        | cs4 a'4. gs8
                        | a8 e8~ e2
                        | cs4 a'4. gs8
                        | a2

                        a4
                        | gs4. fs8 e4
                        | gs4  a b
                        | fs4 e d
                        | cs2.

                        | r4 d8 e fs gs
                        | a2 d4
                        | b4 a2
                        | gs4 fs2

                        | r4 d8 e fs gs
                        | a4 d b
                        | b2.
                        | as2.

                        | r4 b4 a
                        | gs4. fs8 e4~
                        | e4 cs e
                        | a2.

                        | cs4 b a
                        | e4 fs gs
                        | a2 a4
                        | a2.
                    }
                }
                \new Lyrics \lyricsto "soprano" {
                    | mi do ti
                    | do so
                    | mi do ti
                    | do

                    do
                    | ti la so
                    | ti do re
                    | la so fa
                    | mi

                    fa so la ti
                    | do fa
                    | re do
                    | ti la

                    fa so la ti
                    | do fa re
                    | re
                    | di

                    re do
                    | ti la so __
                    mi so
                    | do

                    | mi re do
                    | so la ti
                    | do do
                    | do

                }
                \new Lyrics \lyricsto "soprano" {
                    | Cold are the
                    | peo -- ple,
                    | Win -- ter of
                    | life,

                    We
                    | trem -- ble in
                    | sha -- dow this
                    | cold end -- less
                    | night,

                    Fro -- zen in the
                    | snow lie
                    | ro -- ses
                    | sleep -- ing,

                    Flow -- ers that will
                    | ech -- o the
                    | sun
                    | rise,

                    Fire of
                    | hope is our __
                    on -- ly
                    | warmth

                    | Wea -- ry, it's
                    | flame will be
                    | dy -- ing
                    | soon.
                }
            >>
        >>

        \layout {}
        \midi   {}
    }
}


\book {
    \bookOutputSuffix "soprano"

    \score {
        #(makeScoreInner 1)
        \midi {}
    }
}
