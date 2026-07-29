\version  "2.24.4"
\language "english"

"empty part" = { s4 | s1*3 | s2 s4}



"alto part" = \relative g' {
        r4 |
    g8( fs g d  e2) |
    d8[c]b d4 d4. |
    g8( fs g d  e2) |
    fs8 fs4 g8 ~ 4
}

"alto text" = \lyricmode {
    Rain |
    co -- ming down co -- ming. |
    Rain |
    co -- ming down.
}



"soprano part" = \relative g' {
    r8 g8 |
    b4.( g8 c2) |
    b8[a]g a4 a8 r8
            g8 |
    b4.( g8 c2) |
    b8 a4 g8 ~ 4
}

"soprano text" = \lyricmode {
        The | rain __ |
    co -- ming down co -- ming.
        The | rain __ |
    co -- ming down.
}


"tenor part" = \relative e' {
    e8 e |
    d4 d r4 g,4 |
    r4 g'8 fs4 fs
        e8 |
    d4 d  g8(fs g4) |
    d8 c4 b4 r8
}

"tenor text" = \lyricmode {
    All the |
    rain rain rain
    is co -- ming, the |
    rain rain rain |
    co -- ming down.
}


"bass part" = \relative {
        r4 |
    g4 g8( b,8) c2 |
    g8 g4  d'8 ~ 2 |
    g4 g8( b,8) c2 |
    d8[d]d g,4 g8
}

"bass text" = \lyricmode {
    Rain, rain, rain |
    co -- ming down. |
    Rain, rain, rain |
    co -- ming down co -- ming.
}



\header {
    title = "The Rain Song"
    tagline  = ""
}


\score {
    \new ChoirStaff <<
        \new Staff  \with {
            instrumentName = "S"
            midiInstrument = "violin"
        }
        <<
            {
                \tempo 4 = 100
                \key g \major
                \partial 4
                \"empty part"
                \"soprano part"
                \"soprano part"
                \"soprano part"
            }

            \addlyrics {
                \"soprano text"
                \"soprano text"
                \"soprano text"
            }
        >>

        \new Staff \with {
            instrumentName = "A"
            midiInstrument = "oboe"
        }
        <<
            {
                \key g \major
                \partial 4
                \"alto part"
                \"alto part"
                \"alto part"
                \"alto part"
            }

            \addlyrics {
                \"alto text"
                \"alto text"
                \"alto text"
                \"alto text"
            }
        >>

        \new Staff \with {
            instrumentName = "T"
            midiInstrument = "tenor sax"
        }
        <<
            {
                \key g \major
                \partial 4
                \"empty part"
                \"empty part"
                \"tenor part"
                \"tenor part"
            }

            \addlyrics {
                \"tenor text"
                \"tenor text"
            }
        >>

        \new Staff \with {
            instrumentName = "B"
            midiInstrument = "cello"
        }
        <<
            \clef bass
            {
                \key g \major
                \partial 4
                \"empty part"
                \"empty part"
                \"empty part"
                \"bass part"
            }

            \addlyrics {
                \"bass text"
            }
        >>
    >>


    \layout {}

    \midi {}
}
