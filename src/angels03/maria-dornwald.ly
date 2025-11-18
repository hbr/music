\language "english"
\version  "2.24.4"
\include "../scheme-functions.ly"


%{
Sopran Alt: Maria durch ein ...

        sol4 | do4. re8 me4 sol  | me4 re8 do  re2
        sol4 | do8 te le4 sol ti | do4 (ti8 do4) la8 ti4
%}

%{
Kyrie:

    me4  me8 me fa2    | sol2.
    do4  re  do do     | do4 (ti8) la ti4
    sol4 sol fa fa8 me | re8 re ~ re2
    do4  te  la le     | sol8 sol ~ sol2
%}




%{
Jesus und Maria:

    do4. re8 me4 sol   | me8 re do2
    sol4 te  do  te    | do8 do ~ do2
    m4   fa  sol re    | do8 do ~ do2
    do   te  le  sol   | do,8 do ~ do2
%}


"soprano tenor: 5-8" = {
    bf8(c)|  d4. c8  d4 ef8 (d)| c4. bf8 c4
    d8 (c)|  bf4. a8 bf8 bf c bf | a4. g8 a4 a |
}

"soprano tenor text: 5-8" = \lyricmode {
    Ma --    | ri -- a   durch ein     | Dorn -- wald ging,
    der      | hat in sie -- ben Jahr kein | Laub ge -- tra -- gen,
}

"soprano: Kyrie" = {
    bf4 bf8 bf c2     | d2.
}

"alto: Kyrie" = {
    g4   a     g g    | g4 (fs8) e  fs4
}


"bass: Kyrie" = \relative {
    g4     f     e  ef      | d8\noBeam d ~ 2
}


"soprano: Jesus und Maria" = {
    g4. a8 bf4 d      | bf8 (a) g2
}


"alto: Jesus und Maria" = {
    d4 f g f          | g8 g ~ 2
}


"bass: Jesus und Maria" = {
    g4     f   ef  d  | g,8 g ~ 2
}

"alto bass text: 5-8" = \lyricmode {
               Ma --
               ri --                   | a!                    |
}

"Jesus und Maria text" = \lyricmode {
    Je -- sus und  Ma -- | ri -- a
}






% Voices
% ======================================================================



soprano = \relative {
    \key g \minor
    \tempo 4 = 70

    \partial 4
    d'4^"1."|g4. a8     bf4 d  | bf4  a8 (g)  a2 |
             \"soprano: Kyrie"
    \"soprano tenor: 5-8"
             \"soprano: Jesus und Maria"

    d4^"2." |  g4. a8     bf4 d  | bf8. bf16 a8 g a4 a |
             \"soprano: Kyrie"
    bf8(c)  |  d4. c8  d4 ef8 (d)   | c4. bf8 c4
    d8  c   |  bf4. a8 bf8 bf c bf | a4. g8 a4 a |
             \"soprano: Jesus und Maria"

    d4^"3." |  g4  g8 a  bf4 d      | f4 ef8 d c4 bf |
             \"soprano: Kyrie"
    bf8 c   |  d4. c8  d4 ef8 (d)   | c4. bf8 c4
    d8 (c)  |  bf4 bf8 a bf4 c8 (bf)| a4  a8 g a4 a |
             \"soprano: Jesus und Maria" r4 |
             \"soprano: Jesus und Maria"
}

sopranoText = \lyricmode {
    "1.Ma" --    | ri -- a  durch ein      | Dorn -- wald ging,    |
                   Ky -- ri -- e -- lei -- | son!
    \"soprano tenor text: 5-8"
    \"Jesus und Maria text"

    Was      | trug Ma -- ri -- a   | un -- ter  ih -- rem Her -- zen |
               Ky -- ri -- e -- lei -- | son!
    Ein      | klei -- nes Kind -- lein     | oh -- ne Schmer -- zen, das |
               trug Ma -- ri -- a un -- ter | ih -- rem Her -- zen        |
    \"Jesus und Maria text"

    Da       | ha -- ben die Dor -- nen | Ro -- sen ge -- tra -- gen  |
               Ky -- ri -- e -- lei -- | son!
    Als das  | Kind -- lein durch den  | Wald ge -- tragn, da         |
               ha -- ben die Dor -- nen | Ro -- sen ge -- tra -- gen  |
    \"Jesus und Maria text"
    \"Jesus und Maria text"
}






alto = \relative {
    \key g \minor

    \partial 4
    d'4   |   g8 (f) ef4 d fs   | g4 (fs8 g4) e8 fs4 |
              \"alto: Kyrie"
    r4    |   bf1( | a1) | g1  | fs1 |
              \"alto: Jesus und Maria"

    d4    |   g8 (f) ef4  d8 d fs fs | g4 fs8 g4 (e8) fs4 |
             \"alto: Kyrie"
    r4    |  g1 ~ | 1 ~ |  1 ~ | 1 ~ | 1 ~ | 2.

    d4    |  g4 g8 a bf4 d | bf4 g8 f a4 fs |
             \"alto: Kyrie"
    r4    |  g1 ~ | 1 ~ |  1 ~ | 1 |
              \"alto: Jesus und Maria" r4 |
              ef4 d d f | g8 g ~ 2
}

altoText = \lyricmode {
    Ma --    | ri -- a  durch ein      | Dorn -- wald ging,    |
               Ky -- ri -- e  e --     | le -- i -- son!       |
             \"alto bass text: 5-8"
             \"Jesus und Maria text"

    Was      | trug Ma -- ri -- a un -- ter | ih -- rem Her -- zen |
               Ky -- ri -- e  e --     | le -- i -- son!       |
               Ah

    Da       | ha -- ben die Dor -- nen | Ro -- sen ge -- tra -- gen  |
               Ky -- ri -- e  e --     | le -- i -- son!       |
               Ah |
               \"Jesus und Maria text"
               \"Jesus und Maria text"
}






tenor = \relative {
    \key g \minor
    \clef "treble_8"

    \partial 4
    r4    |  r1                       | r1                    |
             d'4     d     c  c8 (bf) | a8\noBeam a ~ 2
    \"soprano tenor: 5-8"
          |  bf4     c     d  a       | g8 g ~ 2

    r4    |  g1( | g1 | g1 | a2.)
    g8 (a)|  bf4. c8 bf4  c8 (bf) | a4. bf8 a4
    bf8 c |  d4 bf8(c)d4 c8(d)| c8. c16 c8 bf a4. d8 |
             bf4 c d a | g8 g ~ 2

    d4    |  g4 g8 a bf4 d | d4 c8 d c4 c |
             d d c  c8 (bf) | a8 a ~ a2
    g8 a  |  bf4. c8 bf4 c8 (bf) | a4. bf8 a4
    bf8(c)|  d4  bf8 c d4  c8 (d)| c4 c8 bf a4. d8 |
             b4 c d a  | g8 g ~ 2 r4 |
             bf4 a g a | g8 (a) b2
}


tenorText = \lyricmode {
    Ky -- ri -- e  -- e | lei -- son
    \"soprano tenor text: 5-8"
    \"Jesus und Maria text"

    Ahh
    Ein | klei -- nes Kind -- lein | oh -- ne Schmer -- zen,
    das | trug  Ma -- ri -- a      | un -- ter ih -- rem Her -- zen,
          Ky -- ri -- e   e | lei -- son!

    Da  | ha -- ben die Dor -- nen | Ro -- sen ge -- tra -- gen |
          Ky -- ri -- e   e | lei -- son!
    Als das | Kind -- lein durch den | Wald ge -- tra'n,
    da      | ha -- ben die Dor -- nen | Ro -- sen ge -- tra -- gen, |
               \"Jesus und Maria text"
               \"Jesus und Maria text"
}




bass = \relative {
    \key g \minor
    \clef bass

    \partial 4
    r4    |  r1                       | r1                    |
             \"bass: Kyrie"
    r4    |   g1 (              | f1)                 |
              ef1               | d1                  |
            \"bass: Jesus und Maria"

    r4 | r1 | r1 |
         \"bass: Kyrie"

    r4 | g'1( | f1 |  ef1 | d1) |
         g4 f ef  d | g,8 g ~ 2

    d'4| g4 g8 a bf4 d | bf4 bf8 bf f (ef) d4 |
         \"bass: Kyrie"
    r4 | g1( | f1 | ef1 | d1) |
         \"bass: Jesus und Maria" r4 |
         ef'4 f g d  | g,8 g ~ g2
}


bassText = \lyricmode {
    Ky -- ri -- e  -- e | lei -- son
    \"alto bass text: 5-8"
    \"Jesus und Maria text"
    Ky -- ri -- e  -- e | lei -- son
    Ah |
    Ky -- ri -- e  -- e | lei -- son

    Da | ha -- ben die Dor -- nen | Ro -- sen ge -- tra -- gen |
    Ky -- ri -- e  -- e | lei -- son
    Ah
    \"Jesus und Maria text" |
    \"Jesus und Maria text"
}






% Staff
% ======================================================================

makeStaff =
#(define-music-function
    (name music text instrument volume)
    (string? ly:music? ly:music? string? number?)
    #{
    <<
        \new Staff {
            \set Staff.midiInstrument     = $instrument
            \set Staff.midiMaximumVolume  = $volume
            \new Voice = $name { $music }
        }

        \new Lyrics \lyricsto $name { $text }
    >>
    #}
)








% Score inner part
% ======================================================================


makeScoreInner =
#(define-music-function
    (select) (number?)
    #{
    \new ChoirStaff
    <<
        #(makeStaff
            "soprano"
            soprano
            sopranoText
            "violin"
            (voice-volume "soprano" select))
        #(makeStaff
            "alto"
            alto
            altoText
            "flute"
            (voice-volume "alto" select))
        #(makeStaff
            "tenor"
            tenor
            tenorText
            "tenor sax"
            (voice-volume "tenor" select))
        #(makeStaff
            "bass"
            bass
            bassText
            "cello"
            (voice-volume "bass" select))
    >>
    #}
)







% Books
% ======================================================================



\book {
    \header {
        title    = "Maria durch ein Dornwald ging"
        composer = "Volkslied aus dem 16. Jhd."
        arranger = "Satz: Jan Wilken (2003)"
        tagline  = ""
    }
    \score {
        #(makeScoreInner 0)

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
    \bookOutputSuffix "alto"

    \score {
        #(makeScoreInner 2)
        \midi {}
    }
}




\book {
    \bookOutputSuffix "tenor"

    \score {
        #(makeScoreInner 3)
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
