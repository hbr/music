\version  "2.24.4"
\language "english"



"text o tannenbaum" = \lyricmode {
    O | Tan -- nen -- baum,
    O | Tan -- nen -- baum,
    wie | grün sind dei -- ne
    | Blät -- ter.
}

"text du grünst nicht nur" = \lyricmode {
    Du | grünst nicht nur
    zur | Som -- mers -- zeit,
    nein | auch im Win --
    ter  | wenn es schneit.
}



"sopran o tannenbaum" = \relative d' {
    d8 | g8. g16 g4 r8
    a8 | b8. b16 b4 r8
    b8 | a8 b8 c4 fs,4
    | a4 g4 r8
} \addlyrics \"text o tannenbaum"



"sopran du grünst nicht nur" = \relative d'' {
    d8 | d8 b8 e4.
    d8 | d8 c8 c4 r8
    c8 | c8 a8 d4.
    c8 | c8 b8 b4 r8

} \addlyrics \"text du grünst nicht nur"



\header {
    title = "O Tannenbaum"
    composer = "Volksweise"
    poet     = "August Zarnack, Ernst Anschütz"
    tagline  = ""
}


\score {
    {
        \set Score.barNumberVisibility = #first-bar-number-invisible
        \override Score.BarNumber.break-visibility = ##(#f #f #t)
        \transpose g' f' {
            \time 3/4
            \key g \major
            \tempo 4 = 120

            \partial 8
            \"sopran o tannenbaum"
            \break
            \"sopran du grünst nicht nur"
            \break
            \"sopran o tannenbaum"
        }
    }

    \layout {}
    \midi {}
}
