\version "2.24.3"
\language "english"
\include "../scheme-functions.ly"








% Voices and Texts
% ======================================================================

soprano = \relative c' {
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

sopranoDoReMi = \lyricmode {
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

sopranoText = \lyricmode {
    | "1. Cold" are the
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


bass = \relative {
    | e4. ( fs8 )  e4
    | cs2.
    | e4. ( fs8 )  e4
    | cs2.


    | b'2 b4
    | gs2.
    | a2 a4
    | e2.

    | fs2 fs4
    | a4. (gs8) fs4
    | e4.  fs8 e4
    | cs2.

    | fs2 fs4
    | a4. gs8 fs4
    | e4.  fs8 e4
    | cs2.

    | b'2 b4
    | d4. b8 gs4
    | a2. (
    | cs2. )

    | a4 (e) cs
    | e4. d8 b4
    | a2.
    | r2.
}


bassDoReMi = \lyricmode {
    | sola so
    | mi
    | so-la so
    | mi

    | re re
    | ti
    | do do
    | so

    | la la
    | do-ti la
    | so la so
    | mi

    | la la
    | do ti la
    | so la so
    | mi

    | re re
    | fa re ti
    | domi

    | do-so mi
    | so fa re
    | do
}



bassText = \lyricmode {
    | "3. Si" -- lent
    | night
    | Ho -- ly
    | night

    | All is
    | calm
    | all is
    | bright

    | Round yon
    | vir -- gin
    | moth -- er and
    | child!

    | Ho -- ly
    | in -- fant os
    | ten -- der and
    | mild

    | Sleep in
    | heav -- en -- ly
    | peace

    sleep __  in
    | heav -- en -- ly
    | peace


}





% Score inner part
% ======================================================================



makeScoreInner =
#(define-music-function
    (select) (number?)
    #{
        \new ChoirStaff
        <<
            \new Staff
            <<
                \clef treble
                \time 3/4
                \key a \major
                \tempo 4 = 90

                \new Voice = "soprano" {
                    \set Staff.midiInstrument = "flute"
                    %\set Staff.midiInstrument = "voice oohs"
                    \set Staff.midiMaximumVolume =
                        #(voice-volume "soprano" select)

                    \soprano
                }
                \new Lyrics \lyricsto "soprano" { \sopranoDoReMi }
                \new Lyrics \lyricsto "soprano" { \sopranoText }
            >>

            \new Staff
            <<
                \clef bass
                \time 3/4
                \key a \major

                \new Voice = "bass" {
                    \set Staff.midiInstrument = "cello"
                    \set Staff.midiMaximumVolume =
                        #(voice-volume "bass" select)
                    \bass
                }
                \new Lyrics \lyricsto "bass" { \bassDoReMi }
                \new Lyrics \lyricsto "bass" { \bassText }
            >>
        >>
    #}
)







% Books
% ======================================================================



\book {
    \header {
        title    = "Night of Silence / Stille Nacht"
        composer = "Daniel Kantor"
        arranger = ""
        tagline  = ""
    }
    \score {
        #(makeScoreInner 0)
        %{
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

                    \soprano
                }
                \new Lyrics \lyricsto "soprano" { \sopranoDoReMi }
                \new Lyrics \lyricsto "soprano" { \sopranoText }
            >>

            \new Staff
            <<
                \clef bass
                \time 3/4
                \key a \major

                \new Voice = "bass" {
                    \set Staff.midiInstrument = "cello"
                    \bass
                }
                \new Lyrics \lyricsto "bass" { \bassDoReMi }
                \new Lyrics \lyricsto "bass" { \bassText }
            >>
        >>
        %}

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


\book {
    \bookOutputSuffix "bass"

    \score {
        #(makeScoreInner 4)
        \midi {}
    }
}
