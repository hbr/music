\language "english"
\version  "2.24.4"


music = \relative c' {
    | c8 f a c  bf8 a16 f ~ 16 g8.
    | a4. f8 bf8 c16 c16 ~ 4
    | f,8 c f a d,8 f16 g ~ 16 e8.
    | c4 d  f8 c16 c ~ 4
}

chordmusic = \chordmode {
    \repeat unfold 4 {
    | f4 d:m7 bf c
    }
}


\score {
    <<
    \new ChordNames {
        \chordmusic
    }

    \new Staff {
        \key f \major
        \tempo 4 = 60

        \music
    }
    >>

    \layout {}
    \midi   {}
}
