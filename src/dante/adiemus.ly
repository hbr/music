\version  "2.24.4"
\language "english"
\include "../scheme-functions.ly"








% General Music Variables
% ----------------------------------------------------------------------


"4 measures nothing" = {
    s2. | s2. | s2. | s2. |
}

"text D1" = \lyricmode {
    a -- na -- ma -- ne  coo -- le  ra -- we |
    a -- ka -- la
}


"text a ya do a ye" = \lyricmode {
    a -- ya  doo   a -- ye
}


"text a ya do a ya" = \lyricmode {
    a -- ya  doo   a -- ya
}

"text a ya coo ah eh" =  \lyricmode {
    a -- ya -- coo -- ah -- eh
}


"high soprano ya ka ma" = \relative {
    r8 d''16^"ya-ka-ma ya-ma-ya-ka-ma" d   d8  d16 d  d8 d16 d
}

"high soprano me ma" = \relative {
    d''8^"me-ma" d s4 s4
}



"soprano D1" = \relative {
    \section \sectionLabel "D/H"

    bf'16^\f bf  bf  bf    bf8[bf]  g8[bf] |
    c8. f,16  f2
}


"soprano a ya do a ye" = \relative {
    g'8. g16  e8 a   g4
}


"soprano a ya do a ya long" = \relative {
    g'8. g16  e8 a   g4 ( | a2.) ~ | 2.
}


"soprano a ya coo ah eh" = \relative {
    g'8. g16  e8 a   g4 ( | a2.)
}



"alto D1" = \relative {
    g'16 g  g  g  g8[g] d[g] |
    a8. c,16  c2
}


"alto a ya do a ye" = \relative {
    e'8. e16  c8 e  e4
}


"alto a ya do a ya long" = \relative {
    e'8. e16  c8 e  e4 ( | fs2.) ~ | 2.
}


"alto a ya coo ah eh" = \relative {
    e'8. e16  c8 e  e4 ( | fs2.)
}



"tenor D1" = \relative {
    d'16  d  d  d   d8[d]  bf8[d] |
    f8. a,16 a2
}

"tenor a ya do a ye" = \relative {
    c'8. c16   g8 c  c4
}

"tenor a ya do a ya long" = \relative {
    c'8. c16   g8 c  c4 ( | d2.) ~ | 2.
}

"tenor a ya coo ah eh" = \relative {
    c'8. c16   g8 c  c4 ( | d2.)
}



"bass D1" = \relative {
    g16  g  g  g   g8[g] g[g] |
    f8. f16 f2 |
}

"bass a ya do a ye" = \relative {
    c8. c16  c8 c  c4
}

"bass a ya do a ya long" = \relative {
    c8. c16  c8 c  c4 ( | d2.) ~ | 2.
}

"bass a ya coo ah eh" = \relative {
    c8. c16  c8 c  c4 ( | d2.)
}






% Intro
% ----------------------------------------------------------------------


"text intro" = \lyricmode { Ah }


"soprano intro" = \relative c' {
    a2^\pp (d4 | e4 g2 | a2 g4 | c,4 e2) \break
}






% Part A
% ----------------------------------------------------------------------

"text A" = \lyricmode {
    a -- ri -- a -- di -- a -- mus  la -- te |
    a -- ri -- a -- di -- a -- mus  da |
    a -- ri -- a    na -- tus la -- te |
    a -- du -- a.
}


"soprano A" = \relative c' {
    d16^\p^"A/E" d d d  d8[d]  c8[c] |
    d16 d d d  d8 d  f4 |
    e16 e  e8  e[e]  c[c] |
    d8. d16 d2 |
}


"alto A" = \relative c' {
    a2 a4 |
    bf2.  |
    c2 g4 |
    b2.
}


"tenor A" = \relative {
    f2_"Du ..." e4 |
    f2 d4 |
    g2 e4 |
    fs2.
}

"bass A" = \relative {
    d2 a4 |
    bf2 g4 |
    a2. |
    b2.
}






% Part B
% ----------------------------------------------------------------------

"text B" = \lyricmode {
    A -- re -- va -- re  tu -- e  va -- te |
    a -- re -- va -- re  tu -- e  va -- te |
    a -- re -- va -- re  tu -- e  va -- te |
    la -- te -- a
}


"soprano B" = \relative c' {
    \section \sectionLabel "B/F"
    fs16^\p^"espress." fs fs fs  fs8[fs]  a8[a] |
    e16  e  e  e   e8[e]    g8[g] |
    d16  d  d  d   d8[d]    fs[fs] |
    cs8. cs16 cs2
}

"alto B" = \relative c' {
    d16 d  d  d   d8[d]  d[cs] |
    c16 c  c  c   c8[c]  c[b]  |
    b16 b  b  b   b8[b]  b[as] |
    a8. a16 a2
}


"tenor B" = \relative {
    fs2. |
    g2.  |
    fs2. |
    e2.
}


"bass B" = \relative c {
    b2  fs4 |
    c'2 g4  |
    b2  fs4 |
    a2.
}






% Part C
% ----------------------------------------------------------------------

"text C" = \lyricmode {
    A -- na -- ma -- na  coo -- le  ra -- we |
    a -- na -- ma -- na  coo -- le  ra |
    a -- na -- ma -- na  coo -- le  ra -- we |
    a -- ka -- la |
    a -- na -- ma -- na  coo -- le  ra -- we |
    a -- ka -- la __ |
}


"soprano C" = \relative c' {
    \section \sectionLabel "C/G"

    e16^\cresc e e e   e8[e]  fs8[fs] |
    g16  g  g  g   g8[g] a4 |
    b16  b  b  b   b8[b] c8[c] |
    b8.^\mf a16 g2 |
    g16  g  g  g   g8[g] e8[g] |
    a8. d,16 d2~ |
    2. |

}

"high soprano C" =
    \relative {
        s2.*5 |
        r4 r8  a''16^"a-ya-coo-ah-eh" a  fs8  b16 a ~ |
        4 s2
    }


"alto C" = \relative  {
    c'16 c  c  c   c8[c] c[c] |
    e16  e  e  e   e8[e] fs4 |
    g16  g  g  g   g8[g] g[g] ]
    g8. g16 d2 |
    e16  e  e  e   e8[e] b[e] |
    fs8. a,16  a2  ~
    2.
}


"tenor C" = \relative {
    g16  g  g  g   g8[g]  a8[a] |
    b16  b  b  b   b8[b]  d4  |
    d16  d  d  d   d8[d]  e8[e] |
    d8. c16 b2 |
    b16  b  b  b   b8[b] g8[b] |
    d8. fs,16 fs2 ~ |
    2. |
}


"bass C" = \relative {
    c16  c  c  c  c8[c]  a[a] |
    e'16 e  e  e  e8[e] d4 |
    g16  g  g  g  g8[g] c,8. d16 |
    g8. g16 g2 |
    e16  e  e  e  e8[e] e[e] |
    d8. d16  d2 ~ |
    2.
}





% Part D
% ----------------------------------------------------------------------


"text D" = {
    \"text D1" |
    \"text a ya do a ye" |
    \"text a ya do a ye" |
}


"soprano D" = {
    \"soprano D1" |
    \"soprano a ya do a ye" |
    \"soprano a ya do a ye" |
}


"high soprano D" = \relative {
    s2. |
    r4 r8  c'''16^"a-ya-coo-ah-eh" c  a8 d16 ( c ) ~ |
    4 s2 |
    s2.
}

"alto D" = {
    \"alto D1" |
    \"alto a ya do a ye" |
    \"alto a ya do a ye" |
}

"tenor D" = {
    \"tenor D1" |
    \"tenor a ya do a ye" |
    \"tenor a ya do a ye" |
}

"bass D" = {
    \"bass D1" |
    \"bass a ya do a ye" |
    \"bass a ya do a ye" |
}






% Part H
% ----------------------------------------------------------------------

"text H1" = {
    \"text D1" |
    \"text a ya do a ye" |
    \"text a ya do a ya" |
}

"soprano H1" = {
    \"soprano D1" |
    \"soprano a ya do a ye" |
    \"soprano a ya do a ya long" |
    s2.
}

"high soprano H1" = {
    \"high soprano D" | s2.*2 |
    \"high soprano ya ka ma"
}

"alto H1" = {
    \"alto D1" |
    \"alto a ya do a ye" |
    \"alto a ya do a ya long" |
    s2.
}

"tenor H1" = {
    \"tenor D1" |
    \"tenor a ya do a ye" |
    \"tenor a ya do a ya long" |
    s2.

}

"bass H1" = {
    \"bass D1" |
    \"bass a ya do a ye" |
    \"bass a ya do a ya long" |
    s2.

}



"text H2" = \"text a ya coo ah eh"

"high soprano H2" = {
    \"high soprano me ma"
    \"high soprano ya ka ma"
}

"soprano H2" = {
    \"soprano a ya coo ah eh"
}

"alto H2" = {
    \"alto a ya coo ah eh"
}

"tenor H2" = {
    \"tenor a ya coo ah eh"
}

"bass H2" = {
    \"bass a ya coo ah eh"
}




"text H3" = {
    \"text H2" |
    \"text H2" |
    \"text H2" |
    \"text H2" |
    \"text H2"
}

"high soprano H3" = {
    \"high soprano me ma" |
    \relative {
        r8 d''16^"ya-ka-ma_ya-ma ya-ka-ya" e f (e) d c  d8 d16 d
    } |
    \"high soprano me ma" |
    \relative {
        a''2^"ya-" g8^"ka-"(f)|
        g2^"ma" \tuplet 3/2 {e8^"me -" (d c)} |
        d2.^"ah __" ~ |
        2.
    } |
    \relative {
        a''2^"ya-" g8^"ka-"(f) |
        g2^"ma" \tuplet 3/2 {e8^"me -" (d c)} |
        d2.^\fermata^"-ah"
    }
}

"soprano H3" = {
    \"soprano a ya coo ah eh" |
    \"soprano a ya coo ah eh" |
    \"soprano a ya coo ah eh" |
    \"soprano a ya coo ah eh" |
    \"soprano a ya coo ah eh"
}

"alto H3" = {
    \"alto a ya coo ah eh" |
    \"alto a ya coo ah eh" |
    \"alto a ya coo ah eh" |
    \"alto a ya coo ah eh" |
    \"alto a ya coo ah eh"
}

"tenor H3" = {
    \"tenor a ya coo ah eh" |
    \"tenor a ya coo ah eh" |
    \"tenor a ya coo ah eh" |
    \"tenor a ya coo ah eh" |
    \"tenor a ya coo ah eh"
}

"bass H3" = {
    \"bass a ya coo ah eh" |
    \"bass a ya coo ah eh" |
    \"bass a ya coo ah eh" |
    \"bass a ya coo ah eh" |
    \"bass a ya coo ah eh"
}


% Complete Voices
% ----------------------------------------------------------------------

makeVoice = #(define-music-function
    (intro a b c d e f g h1 h2 h3)
    (ly:music? ly:music? ly:music? ly:music?
     ly:music? ly:music? ly:music? ly:music?
     ly:music? ly:music? ly:music?

    )
     #{
        $intro
        \repeat segno 2 {
            \repeat volta 2 {
                $a
                $b
            }
            $c
            $d \bar "||"
        }
        $e
        $f
        $g
        $h1
        \repeat volta 4 $h2
        $h3
     #}
)


"high soprano" = \makeVoice
    {s2.*4}
    {s2.*4}
    {s2.*4}
    \"high soprano C"
    \"high soprano D"
    {s2.*4}
    {s2.*4}
    \"high soprano C"
    \"high soprano H1"
    \"high soprano H2"
    \"high soprano H3"


text = \makeVoice
    \"text intro"
    \"text A"
    \"text B"
    \"text C"
    \"text D"
    \"text A"
    \"text B"
    \"text C"
    \"text H1"
    \"text H2"
    \"text H3"


soprano = \makeVoice
    \"soprano intro"
    \"soprano A"
    \"soprano B"
    \"soprano C"
    \"soprano D"
    \"soprano A"
    \"soprano B"
    \"soprano C"
    \"soprano H1"
    \"soprano H2"
    \"soprano H3"


alto = \makeVoice
    \"4 measures nothing"
    \"alto A"
    \"alto B"
    \"alto C"
    \"alto D"
    \"alto A"
    \"alto B"
    \"alto C"
    \"alto H1"
    \"alto H2"
    \"alto H3"


"tenor A with alto" = <<
    {\new Voice {\voiceThree \"alto A"}}
    \"tenor A"
>>

tenor = \makeVoice
    \"4 measures nothing"
    \"tenor A"
    \"tenor B"
    \"tenor C"
    \"tenor D"
    \"tenor A"
    \"tenor B"
    \"tenor C"
    \"tenor H1"
    \"tenor H2"
    \"tenor H3"


bass = \makeVoice
    \"4 measures nothing"
    \"bass A"
    \"bass B"
    \"bass C"
    \"bass D"
    \"bass A"
    \"bass B"
    \"bass C"
    \"bass H1"
    \"bass H2"
    \"bass H3"









% Scores
% ----------------------------------------------------------------------



makeVoice = #(define-music-function
    (name music instrument volume)
    (string? ly:music? string? number?)
    #{
        \new Voice = $name \with {
            midiInstrument    = $instrument
            midiMaximumVolume = $volume
        }
        { $music }
    #}
)


ScoreMusic = #(define-music-function
    (select) (number?)
    #{
    \new ChoirStaff
    <<
        \new Staff = "main" \with { instrumentName = "S/A" }
        <<
            \time 3/4
            \tempo 4 = 76

            \makeVoice
                "high soprano"
                \"high soprano"
                "acoustic grand"
                1.0

            \makeVoice
                "soprano"
                {\voiceOne \soprano}
                "violin"
                #(voice-volume "soprano" select)

            \makeVoice
                "alto"
                {\voiceTwo \alto}
                "oboe"
                #(voice-volume "alto" select)
        >>

        \new Lyrics \lyricsto soprano {
            \text
        }

        \new Staff \with { instrumentName = "T/B" }
        <<
            \clef bass

            \makeVoice
                "tenor"
                {\voiceThree \tenor}
                "tenor sax"
                #(voice-volume "tenor" select)

            \makeVoice
                "bass"
                {\voiceFour \bass}
                "cello"
                #(voice-volume "bass" select)
        >>
    >>
    #}
)



\book {
    \header {
        title    = "Adiemus"
        composer = "Karl Jenkins"
        arranger = "Nicholas Hare"
        tagline  = ""
    }

    \score {
        \ScoreMusic 0

        \layout {}
    }


    \score {
        \unfoldRepeats \ScoreMusic 0

        \midi   {
            \context {
                \Staff
                \remove "Staff_performer"
            }
            \context {
                \Voice
                \consists "Staff_performer"
            }
        }
    }
}






\book {
    \bookOutputSuffix "soprano"
    \score {
        \unfoldRepeats \ScoreMusic 1

        \midi   {
            \context {
                \Staff
                \remove "Staff_performer"
            }
            \context {
                \Voice
                \consists "Staff_performer"
            }
        }
    }
}






\book {
    \bookOutputSuffix "alto"
    \score {
        \unfoldRepeats \ScoreMusic 2

        \midi   {
            \context {
                \Staff
                \remove "Staff_performer"
            }
            \context {
                \Voice
                \consists "Staff_performer"
            }
        }
    }
}






\book {
    \bookOutputSuffix "tenor"
    \score {
        \unfoldRepeats \ScoreMusic 3

        \midi   {
            \context {
                \Staff
                \remove "Staff_performer"
            }
            \context {
                \Voice
                \consists "Staff_performer"
            }
        }
    }
}






\book {
    \bookOutputSuffix "bass"
    \score {
        \unfoldRepeats \ScoreMusic 4

        \midi   {
            \context {
                \Staff
                \remove "Staff_performer"
            }
            \context {
                \Voice
                \consists "Staff_performer"
            }
        }
    }
}
