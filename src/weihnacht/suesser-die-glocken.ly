\version  "2.24.3"
\language "english"


"sopran Süsser die Glocken" =
    \relative f' {
        fs8. fs16 fs8   fs8 e fs
        | a4.           e4 r8
        | e8. e16 e8    e8 (d) e
        | fs4.          r4.

        | a8. a16 a8    a8 fs d
        | d'4.          b4 r8
        | a8. b16 a8    a8 g e
        | d4.           r4.
    }
    \addlyrics {
        Süs -- ser die Glo -- cken nie
        | klin -- gen,
        | als zu der Weih -- nachts
        | zeit.

        | Grad als ob  En -- ge -- lein
        | sin -- gen,
        | wie -- der von Frie -- de und
        | Freud.
    }


"sopran Wie sie gesungen" =
    \relative e' {
        e8. e16 e8    fs8 fs fs
        | a8. g16 e8  fs4 r8
    }
    \addlyrics {
        Wie sie ge -- sun -- gen in
        | hei -- li -- ger Nacht.
    }



"sopran Glocken mit heiligem" =
    \relative a' {
        a8. g16 fs8   fs8 e d
        | d'4.(       b4) r8
        | a8. b16 a8  a8 g e
        | d4.         r4.
    }
    \addlyrics {
        Glo -- cken  mit hei -- li -- gem
        | Klang
        | klin -- gen die Er -- de ent --
        | lang.
    }


\header {
    title    = "Süsser die Glocken nie klingen"
    composer = "Volksweise"
    poet     = "Friedrich Wilhelm Kritzinger"
    tagline  = ""
}

\score {
    {
        \time 6/8
        \key d \major
        \tempo 8 = 150

        \"sopran Süsser die Glocken"
        \break

        \repeat volta 2 \"sopran Wie sie gesungen"
        \break

        \"sopran Glocken mit heiligem"
    }

    \layout {}
    \midi   {}
}
