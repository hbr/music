\version  "2.24.4"
\language "english"








% General Music Variables
% ----------------------------------------------------------------------


"4 measures nothing" = {
    s2. | s2. | s2. | s2. |
}



"soprano a ya do a ye" = \relative {
    g'8. g16  e8 a   g4
}



"alto a ya do a ye" = \relative {
    e'8. e16  c8 e  e4
}



"tenor a ya do a ye" = \relative {
    c'8. c16   g8 c  c4
}



"bass a ya do a ye" = \relative {
    c8. c16  c8 c  c4
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
        r4 r8  a'16^"a-ya-coo-ah-eh" a  fs8  b16 a ~ |
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

"text D" = \lyricmode {
    a -- na -- ma -- ne  coo -- le  ra -- we |
    a -- ka -- la |
    a -- ya  doo   a -- ye |
    a -- ya  doo   a -- ye |
}


"soprano D" = \relative b' {
    \section \sectionLabel "D"

    bf16^\f bf  bf  bf    bf8[bf]  g8[bf] |
    c8. f,16  f2 |
    \"soprano a ya do a ye" |
    \"soprano a ya do a ye" |

}


"high soprano D" = \relative {
    s2. |
    r4 r8  c''16^"a-ya-coo-ah-eh" c  a8 d16 ( c ) ~ |
    4 s2 |
    s2. |
}


"alto D" = \relative {
    g'16 g  g  g  g8[g] d[g] |
    a8. c,16  c2 |
    \"alto a ya do a ye" |
    \"alto a ya do a ye" |
}


"tenor D" = \relative {
    d'16  d  d  d   d8[d]  bf8[d] |
    f8. a,16 a2 |
    \"tenor a ya do a ye" |
    \"tenor a ya do a ye" |
}


"bass D" = \relative {
    g16  g  g  g   g8[g] g[g] |
    f8. f16 f2 |
    \"bass a ya do a ye" |
    \"bass a ya do a ye" |
}





% Complete Voices
% ----------------------------------------------------------------------

makeVoice = #(define-music-function
    (intro a b c d e f g)
    (ly:music? ly:music? ly:music? ly:music?
     ly:music? ly:music? ly:music? ly:music?)
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


text = \makeVoice
    \"text intro"
    \"text A"
    \"text B"
    \"text C"
    \"text D"
    \"text A"
    \"text B"
    \"text C"


soprano = \makeVoice
    \"soprano intro"
    \"soprano A"
    \"soprano B"
    \"soprano C"
    \"soprano D"
    \"soprano A"
    \"soprano B"
    \"soprano C"


alto = \makeVoice
    \"4 measures nothing"
    \"4 measures nothing"
    \"alto B"
    \"alto C"
    \"alto D"
    \"4 measures nothing"
    \"alto B"
    \"alto C"


"tenor A with alto" = <<
    {\new Voice {\voiceThree \"alto A"}}
    \"tenor A"
>>

tenor = \makeVoice
    \"4 measures nothing"
    \"tenor A with alto"
    \"tenor B"
    \"tenor C"
    \"tenor D"
    \"tenor A with alto"
    \"tenor B"
    \"tenor C"


bass = \makeVoice
    \"4 measures nothing"
    \"bass A"
    \"bass B"
    \"bass C"
    \"bass D"
    \"bass A"
    \"bass B"
    \"bass C"









% Scores
% ----------------------------------------------------------------------


ScoreMusic =
    \new ChoirStaff
    <<
        \new Staff = "main" \with { instrumentName = "S/A" }
        <<
            \time 3/4
            \tempo 4 = 76
            \new Voice = "high soprano" \with {midiInstrument = "piano"} {
                \voiceOne
                \"high soprano"
            }

            \new Voice = soprano \with {midiInstrument = "violin"} {
                \voiceOne
                \soprano
            }
            \new Voice = alto \with {midiInstrument = "oboe"} {
                \voiceTwo
                \alto
            }
        >>

        \new Lyrics \lyricsto soprano {
            \text
        }

        \new Staff \with { instrumentName = "T/B" }
        <<
            \clef bass
            \new Voice = tenor \with {midiInstrument = "tenor sax"}{
                \voiceThree
                \tenor
            }
            \new Voice = bass \with {midiInstrument = "cello"}{
                \voiceFour
                \bass
            }
        >>
    >>



\book {
    \header {
        title    = "Adiemus"
        composer = "Karl Jenkins"
        arranger = "Nicholas Hare"
        tagline  = ""
    }

    \score {
        \ScoreMusic

        \layout {}
    }

    \score {
        \unfoldRepeats \ScoreMusic

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
