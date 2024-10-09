\version  "2.24.3"
\language "english"


\header {
    title = "Tritonus"
    composer = "Sam"
    tagline = #f
}




\score {
    <<
        \new Voice = "one" {
            \tempo 4 = 160
            \key f \major
            \relative c' {
                \partial 2
                f4 c |
                f c f c |
                g' c, g' c, |
                g' c, g' c, |
                f c c c |
                c c e g |
                bf2. c4 |
                bf4 a g f |
                e d
                    c c
                f f e f |
                g c,2 c4 |
                g' g f g |
                a4 f2 f4 |
                \time 3/4
                b4 f f |
                b f f
            }
        }

        \new Lyrics \lyricsto "one" { \lyricmode {
            Suchst du |
            Quar -- ten o -- der |
            Quin -- ten, sind sie |
            nicht so schwer zu |
            fin -- den, ei -- ne |
            Prim und ei -- ne |
            Terz, da |
            rei -- chen fünf Se -- |
            kun -- den,
                    doch ich |
            hab es nie ge -- |
            fun -- den, das |
            ei -- ne mit dem |
            Bo -- nus das |
            Lied mit dem |
            Tri -- to -- nus
        }}
    >>

    \layout {}
    \midi {}
}
