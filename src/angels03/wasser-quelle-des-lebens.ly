\language "english"
\version  "2.24.4"


strophe = \relative d' {
    d8   | d8 (g) fs e ~ 4 r8
    d8   | d8. g16 ~ 8 a8 ~ 4 r8

    d,8  | b'8. g16 ~ 8 c ~ 4  b
         | a8. g16 ~ 8  fs ~ 4 r8

    d8   | b'8. d16 ~ 8  a ~ 4 r8
    fs8  | g8. b16 ~ 8 fs ~ 4  r8

    d8   | e4 fs g g
         | g4 fs g2
}


\score {
    \new Staff {
        \key g \major
        \tempo 4=114

        \partial 8 \strophe
    }


    \layout {}
    \midi   {}
}
