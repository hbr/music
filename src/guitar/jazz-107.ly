\language "english"
\version  "2.24.3"




lick = \relative c'' {
    % '        '       '       '
    | r8  c8   d4      f       d
    | c8  af4.         g8 f    d8 f
    | a4       a       f       e8 ef~
    | 2.                       r4
}

mychords = \chordmode {
    | f1:7
    | bf1:7
    | f1:7
    | f1:7

}

\score {
    <<
    \new ChordNames { \mychords }
    \new Staff {
        \tempo 4 = 120
        \key f \major
        \lick
    }
    >>

    \layout {}
    \midi   {}
}
