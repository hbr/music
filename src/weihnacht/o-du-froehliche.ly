\language "english"
\version  "2.24.42"




"text O du fröhliche" = \lyricmode {
    O du
    | fröh -- li -- che,
    | o du
    | se -- li -- ge

    | Gna -- den
    | brin -- gen -- de
    | Weih -- nachts --
    | zeit!
}

"text Freue dich" = \lyricmode {
    | Freu -- e,
    | freu -- e dich, o
    | Chris -- ten
    | heit!
}


sopran =
    \relative g' {
        g2 a
        | g4. f8 e4(f)
        | g2 a
        | g4. f8 e4(f)

        | g2 g
        | a2 b4 c
        | b2 a
        | g1

        | d4.(e8)d4 e
        | f4.(g8)f2
        | e4.(f8)e4 f
        | g4.(a8)g2

        | c4(b)a(g)
        | c4 a g f
        | e2 d
        | c1
    }
    \addlyrics {
        \set stanza = "1. "
        \"text O du fröhliche"

        | Welt ging ver --
        | lo -- ren,
        | Christ ist ge --
        | bo -- ren:

        \"text Freue dich"
    }
    \addlyrics {
        \set stanza = "2. "
        \"text O du fröhliche"

        | Christ ist er --
        | schie -- nen,
        | um-uns zu ver --
        | süh -- nen:

        \"text Freue dich"
    }
    \addlyrics {
        \set stanza = "3. "
        \"text O du fröhliche"

        | Himm -- li -- sche
        | Hee -- re,
        | jauch -- zen dir
        | Eh -- re:

        \"text Freue dich"
    }


\header {
    title    = "O du fröhliche"
    composer = "Sizilianisches Schifferlied"
    poet     = "Johannes Daniel Falk (1816) Heinrich Holzschuher (1826)"
    tagline  = ""
}



\score {
    {
        \tempo 4 = 110

        \sopran
    }

    \layout {}
    \midi   {}
}
