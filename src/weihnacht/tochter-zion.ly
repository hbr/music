\version "2.24.3"
\language "english"

global = {
  \key ef \major
  \time 2/2
  \tempo 4 = 120
}


\header {
    title = "Tochter Zion"
    composer = "Georg Friedrich Händel 1747"
    arranger = ""
    poet = "Friedrich Heinrich Ranke 1826"
    tagline = #f
}



"sopran Tochter Zion" = \relative bf' {
    bf2          g4. (af8) | bf2 ef,2 |
    f8 (g af bf  af4) g    | f1       |
    g8 (af bf c  bf4) bf   | ef2 bf2  |
    af4 (g f4.) ef8        | ef1      |
}


"alto Tochter Zion" = \relative ef' {
    ef2         ef4. (d8)  | ef2 bf2  |
    d8 (ef f g  f4)  ef    | d1       |
    ef2.             ef4   | ef2 ef2  |
    d4  (ef2)        d4    | ef1      |
}


"tenor Tochter Zion" = \relative {
    g2          bf4. (af8) | g2 bf2   |
    af4 (f bf)  bf         | bf1      |
    bf2. bf4               | bf2  g2  |
    af4 (bf2)   af4        | g1       |
}


"bass Tochter Zion" = \relative {
    ef2         g4.  (f8) | ef2 g2    |
    f4. (ef8 d4)     ef4  | bf1       |
    ef8 (f g af) g4  g    | g2 ef2    |
    f4  (g8 af)  bf4 bf,  | ef1       |
}




"sopran Sieh, dein König" = \relative g' {
    g8 (f g af     g4) g  | f2 ef |
    af4 (g f) ef          | d1    |
    ef8 (d ef f   ef4) ef | c'2 a |
    bf4 (c8 bf a4.)  bf8  | bf1   |
}



"alto Sieh, dein König" = \relative ef' {
    ef8 (d ef f   ef4) ef | d2 c2 |
    f4 (ef d) c           | b1    |
    c8 (b c d     c4)  c  | ef2. ef4 |
    d4 (ef8 d c4)  f      | f1    |
}


"tenor Sieh, dein König" = \relative c' {
    bf2. bf4              | af2 g2 |
    b4 (c af) g           | g1     |
    g2.       g4          | f2 c'2 |
    bf4 (g c) c           | d1     |
}


"bass Sieh, dein König" = \relative {
    ef2. ef4              | bf2 c2 |
    d4 (ef f) c           | g'1    |
    c,2.  bf4             | a2 f'2 |
    g4 (ef f) f           | bf,1   |
}



"sopran" = {
    \"sopran Tochter Zion"
    \"sopran Sieh, dein König"
    \"sopran Tochter Zion"
}



"alto" = {
    \"alto Tochter Zion"
    \"alto Sieh, dein König"
    \"alto Tochter Zion"
}



"tenor" = {
    \"tenor Tochter Zion"
    \"tenor Sieh, dein König"
    \"tenor Tochter Zion"
}


"bass" = {
    \"bass Tochter Zion"
    \"bass Sieh, dein König"
    \"bass Tochter Zion"
}








"stanza 1 Tochter Zion" = \lyricmode {
    Toch -- ter | Zi -- on    | freu -- e   | dich  |
    jauch -- ze | laut, Je -- | ru -- sa -- | lem   |
}

"stanza 1 Sieh, dein König" = \lyricmode {
    Sieh, dein  | Kö -- nig   | kommt zu    | dir   |
    ja er       | kommt, der  | Frie -- de  | Fürst |
}

"stanza 1" = {
    \"stanza 1 Tochter Zion"
    \"stanza 1 Sieh, dein König"
    \"stanza 1 Tochter Zion"
}




"stanza 2 Hosianna" = \lyricmode {
    Ho -- si -- | an -- na,   | Da -- vids  | Sohn, |
    sei ge --   | seg -- net  | dei -- nem  | Volk! |
}

"stanza 2 Gründe nun" = \lyricmode {
    Grün -- de  | nun dein    | e -- wig    | Reich, |
    Ho -- si -- | an -- na    | in der      | Höh!   |
}

"stanza 2" = {
    \"stanza 2 Hosianna"
    \"stanza 2 Gründe nun"
    \"stanza 2 Hosianna"
}




"stanza 3 Hosianna" = \lyricmode {
    Ho -- si -- | an -- na,   | Da -- vids  | Sohn, |
    sei ge --   | grü -- ßet, | Kö -- nig   | mild! |
}

"stanza 3 Ewig steht" = \lyricmode {
    E -- wig    | steht dein  | Frie -- dens -- | thron, |
    du, des     | ew -- gen   | Va -- ters      | Kind.  |
}

"stanza 3" = {
    \"stanza 3 Hosianna"
    \"stanza 3 Ewig steht"
    \"stanza 3 Hosianna"
}







\score {
    \new ChoirStaff <<
        \new Staff <<
            \global
            \new Voice = "sopranos" {
                \voiceOne
                %\set midiInstrument = "organ"
                \set midiMaximumVolume = 1.5
                \sopran
            }

            \new Voice = "altos" {
                \voiceTwo
                \set midiInstrument = "flute"
                \set midiMaximumVolume = 1.0
                \alto
            }
        >>

        \addlyrics {
            \set associatedVoice = "sopranos"
            \set stanza = "1. "
            \"stanza 1"
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


        \new Staff <<
            \global
            \clef bass

            \new Voice = "tenor" {
                \voiceOne
                \set midiInstrument = "tenor sax"
                \set midiMaximumVolume = 1.0
                \tenor
            }

            \new Voice = "bass" {
                \voiceTwo
                \set midiInstrument = "cello"
                \set midiMaximumVolume = 1.0
                \bass
            }
        >>
    >>




  \layout {}
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
