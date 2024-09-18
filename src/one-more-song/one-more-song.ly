\version "2.24.3"
\language "english"

\header {
    title = "There's one more song"
    composer = "Musik: Peter Hammersteen (*1956)"
    poet     = "Text: Peter Hammersteen"
}




"stanza 1" = \lyricmode {
    There's |
    one more song to |
    say Good -- bye! Dear |
    friends it's time to |
    say Good -- bye! I
}

"stanza 2" = \lyricmode {
    The |
    sun may set, the |
    moon may rise, the |
    moon may set, the |
    sun may rise! I
}

"stanza 3" = \lyricmode {
    Warm -- |
    heart -- ed feelings may |
    be with your, warm -- |
    heart -- ed feelings may |
    go with you! I
}


refrain = \lyricmode {
    tell you, I tell you, I
    tell you my dear, we'll |
    soon come to -- ge -- ther a -- |
    gain, a -- gain. I |
    gain, a -- gain
}


harmonies = \chordmode {
    \partial 8 r8 |
    f2 r4 |
    c4 r8 d4:m c8:7 |
    f4 r8 bf8 f4 |
    g4:7 r8 c4 c8:7 |
    f4 bf8 f4 bf8 |
    f4 c8 d4:m r8 |
    bf4 r8  f8 c4:7 |
    f4 r8  c4 c8:7 |
    f4
}

"sopran 1" = \relative c' {
    \partial 8  c8
    |
    f8 (e) f  f (a) c    |    a4 g8 f4 c'8
    |
    c4 a8  d (c) a       |    a8 (g) f  g4 c8
}

"alt 1" = \relative c' {
    \partial 8 c8\mf
    |
    f8 (e) d  c (c) f    |    e4 e8  d4 e8 \<
    |
    f4 \! f8  f (f) f    |    f8 (e) d \>  e4 \! e8\f
}

"bass 1" = \relative {
    \partial 8 c8
    |
    f4 g8  a (f) a  |  c4 bf8 a4 g8
    |
    a4 c8 bf8 (a) c |  b4 g8 c4 bf8
}



"sopran 2.1" = \relative c'' {
    |
    c8 a d  c8 a d       |    c8 a g  f4 f8
    |
    f8 f d  c f e
}
"alt 2.1" = \relative f' {
    |
    f8 f f  f f f        |    f8 \> f e  d4 \! d8
    |
    d8 d bf  a c c
}

"bass 2.1" = \relative {
    |
    a8 c bf  a c bf  | a8 f c  d4 a'8
    |
    bf8 bf f  f g bf
}


"sopran 2.2.1" = \relative f' {
    f4 f8 g4 c8
}

"alt 2.2.1" = \relative c' {
    c4 a8 c4 \< e8 \!
}

"bass 2.2.1" = \relative {
    a4 f8 e4 bf'8
}



"sopran 2.2.2" = \relative f' {
    f4 f8 f4
}

"alt 2.2.2" = \relative c' {
    c4 bf8 \> a4 \!
}

"bass 2.2.2" = \relative {
    a4 g8 f4
}



sopran = {
    \"sopran 1"

    \repeat volta 2 {
        \"sopran 2.1"
        \alternative {
            \"sopran 2.2.1"
            \"sopran 2.2.2"
        }
    }
}


alt = {
    \"alt 1"
    \repeat volta 2 {
        \"alt 2.1"
        \alternative {
            \"alt 2.2.1"
            \"alt 2.2.2"
        }
    }
}


bass = {
    \"bass 1"
    \repeat volta 2 {
        \"bass 2.1"
        \alternative {
            \"bass 2.2.1"
            \"bass 2.2.2"
        }
    }
}







global = {
    \key f \major
    \time 6/8
    \tempo 4 = 60
}


music = {
    \new ChoirStaff <<
        \new ChordNames {
            \set noChordSymbol = ""
            \harmonies
        }
        \new Staff = "women"
        <<
            \new Voice = "sopranos" {
                \voiceOne
                \set midiInstrument = "choir aahs"
                { \global   \sopran}
            }

            \new Voice = "alt" {
                \voiceTwo
                {\global \alt}
            }
            \addlyrics {
                \set associatedVoice = "sopranos"
                \set stanza = "1. "
                \"stanza 1"
                \"refrain"
            }
            \addlyrics {
                \set associatedVoice = "sopranos"
                \set stanza = "2. "
                \"stanza 2"
            }
            \addlyrics {
                \set associatedVoice = "sopranos"
                \set stanza = "3. "
                \"stanza 3"
            }
        >>

        \new Staff = "bass" {
            \clef bass
            \new Voice = "bass" {
                \voiceTwo
                \set midiInstrument = "contrabass"
                {\global  \bass}
            }
        }
    >>
}

\score {
    \music
    \layout {}
}


\score {
    \unfoldRepeats { \music }
    \midi {
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
