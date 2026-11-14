\version  "2.24.4"
\language "english"



"sopran" =
    \relative a' {
        a4. b8   a4 g4
        | fs2    e2
        | d4 e8(fs) g4 fs
        | e2. r4

        | fs4. a8 b4 cs
        | d2(     cs4)b
        | a4 g8(fs) g4 a
        | fs2. r4
    }
    \addlyrics {
        Al -- le Jah -- re
        | wie -- der
        | kommt das Chris -- tus --
        | kind,

        | auf die Er -- de
        | nie -- der
        | wo wir Men -- schen
        | sind.
    }





\header {
    title = "Alle Jahre wieder"
    composer = "Friedrich Silcher (1842)"
    poet     = "Wilhelm Hey (1837)"
    tagline  = ""
}



\score {
    {
        \key d \major
        \tempo 4 = 120

        \"sopran"
    }

    \layout {}
    \midi   {}
}
