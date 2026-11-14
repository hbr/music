\language "english"
\version  "2.24.42"



% G Major, Septime, d'-c'', 6/8

sopran =
    \relative g' {
        b4 b8    a8 b a
        | g4. ~  4 r8
        | g4 e8  g8 fs e
        | d4. ~ 4 r8

        | a'8 gs a  c b a
        | g4. ~ 4 r8
        | a8. e16 e8  fs e fs
        | g4. ~ 4
    }
    \addlyrics {
        Lei -- se rie -- selt der
        | Schnee.
        | Still und starr ruht der
        | See.

        | Weih -- nacht -- lich glän -- zet der
        | Wald.
        | Freu g8-- e dich s'Christ -- kind kommt
        | bald.
    }


\header {
    title    = "Leise rieselt der Schnee"
    composer = "Eduard Ebel (1895)"
    poet     = "Eduard Ebel"
    tagline  = ""
}


\score {
    {
        \key g \major
        \time 6/8
        \tempo 8 = 150

        \sopran
    }

    \layout {}
    \midi   {}
}
