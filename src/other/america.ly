\language "english"
\version  "2.24.4"


\header {
    title = "America (West Side Story)"
    composer = "Leonard Berstein"
    poet = "Stephen Sondheim, Arthur Laurents"
    tagline =  ""
}





% Snippets
% ----------------------------------------------------------------------


"music empty 1 bar" = {
    s4*3
}


"music empty 2 bars" = {
    s4*6
}


"music empty 3 bars" = {
    s4*9
}



% Refrain
% ----------------------------------------------------------------------

%{
    3/4 Takt
    Refrain: 6 8th + 3 4th

    Chords:

        | C  | F
        | C  | G
        | Eb | Bb
        | Ab | C
%}



"text refrain 1" = \lyricmode {
    | I like to be in A --
    | me -- ri -- ca,

    | O -- kay by me in A --
    | me -- ri -- ca!

    | Ev' -- ri -- thing free in A --
    | me -- ri -- ca,

    | for a small fee in A --
    | me -- ri -- ca!
}


"text refrain 2" = \lyricmode {
    | Au -- to -- mo -- bil in A --
    | me -- ri -- ca,

    | Chro -- mi -- um steel in A --
    | me -- ri -- ca!

    | Wi -- re spoke wheel in A --
    | me -- ri -- ca,

    | ve -- ry big deal in A --
    | me -- ri -- ca!
}


"text refrain empty 0" = \lyricmode {
    | "" "" "" "" "" ""
    | "" "" ""
}

"text refrain empty" = \lyricmode {
    \"text refrain empty 0"
    \"text refrain empty 0"
    \"text refrain empty 0"
    \"text refrain empty 0"
}


"text refrain 3" = \lyricmode {
    | Im -- mi -- grant goes to A --
    | me -- ri -- ca,

    | Ma -- ny hel -- los in A --
    | me -- ri -- ca!

    | No -- bo -- dy knows in A --
    | me -- ri -- ca,

    | Puer -- to Ri -- co's in A --
    | me -- ri -- ca!
}


"text refrain 4" = \lyricmode {
    | I like the  shores of A --
    | me -- ri -- ca,

    | com -- fort is yours in A --
    | me -- ri -- ca!

    | Knobs in the doors in A--
    | me -- ri -- ca,

    | wall to wall floors in A --
    | me -- ri -- ca!
}


"text refrain Oh" = \lyricmode {
    | Oh, __ A --
    | me -- ri -- ca,

    | Oh, __ A --
    | me -- ri -- ca!

    | Oh, __ A --
    | me -- ri -- ca,

    | Oh, __ A --
    | me -- ri -- ca!
}

"text refrain Oh empty 0" = \lyricmode {
    | "" ""
    | "" "" ""
}

"text refrain Oh empty" = {
    \"text refrain Oh empty 0"
    \"text refrain Oh empty 0"
    \"text refrain Oh empty 0"
    \"text refrain Oh empty 0"
}



"sopran refrain" = \relative g' {
    | g8 g g c c c
    | a4 f c

    | g'8 g g c c c
    | d4 b g

    | bf8 bf bf ef ef ef
    | d4 bf f

    | ef8 ef ef af af af
    | g4 e'8 r8 c,4 ~
    | 2. ~
    | 2.
}


"alto refrain Oh" = \relative e' {
    | e2 ~ 8 e
    | f4 f c

    | e2 ~ 8 g8
    | d'4 g, d

    | ef4. ( g4 ) g8
    | f4 f d

    | ef2 ~ 8 ef
    | ef4 g8 r8 c,4 ~
    | 2. ~
    | 2.
}


"tenor refrain Oh" = \relative g {
    | g2 ~ 8 g
    | c4 a a

    | g2 ~ 8 e'8
    | d4 d b

    | g4. ( bf4 ) bf8
    | bf4 d bf

    | c2 ~ 8 c8
    | c4 c8 r8  c,4 ~
    | 2. ~
    | 2.
}


"bass refrain Oh" = \relative c {
    | c2 ~ 8 c
    | f4 f f

    | c2 ~ 8 g'8
    | g4 g g

    | ef2 ~ 8 ef
    | bf4 bf bf

    | af2 ~ 8 af
    | c4 c8 r8 c4 ~
    | 2. ~
    | 2.
}


"alto refrain" = \relative e' {
    | e8 e e e e e
    | f4 f c

    | e8 e e e e g
    | b4 g d

    | ef8 ef ef g g g
    | f4 f d

    | ef8 ef ef ef ef ef
    | e4 g8 r8 c,4 ~
    | 2. ~
    | 2.
}


"tenor refrain" = \relative g {
    | g8 g g g g g
    | c4 a a

    | g8 g g g g e'
    | d4 d b

    | g8 g g bf bf bf
    | bf4 d bf

    | c8 c c c c c
    | c4 c8 r8 c,4 ~
    | 2. ~
    | 2.
}


"bass refrain" = \relative c {
    | c8 c c c c c
    | f4 f f

    | c8 c c c c g'
    | g 4 g g

    | ef8 ef ef ef ef ef
    | bf4 bf bf

    | af8 af af af af af
    | c4 c8 r8 c4 ~
    | 2. ~
    | 2.
}






% Verse
% ----------------------------------------------------------------------


"text verse empty" = \lyricmode {
    | "" "" "" "" "" ""
    | "" ""
}


"text verse alto 1" = \lyricmode {
    | I like the ci -- ty of
    | San Juan.
}


"text verse bass 1" = \lyricmode {
    | I know a boat you can
    | get on.
}

"text verse sopran 1" = \lyricmode {
    | Hun -- dreds of flow -- ers in
    | full bloom.
}

"text verse tenor 1" = \lyricmode {
    | Hun -- dreds of peo -- ple in
    | each room!
}



"text verse alto 2" = \lyricmode {
    | I'll drive a Bu -- ick through
    | San Juan.
}


"text verse bass 2" = \lyricmode {
    | If there's a road you can
    | drive on.
}

"text verse sopran 2" = \lyricmode {
    | I'll give my cou -- sins a
    | free ride.
}

"text verse tenor 2" = \lyricmode {
    | How you get all of them
    | in -- side?
}



"text verse alto 3" = \lyricmode {
    | I'll bring a T. V. to
    | San Juan.
}

"text verse bass 3" = \lyricmode {
    | If there's a cur -- rent to
    | turn on.
}

"text verse sopran 3" = \lyricmode {
    | I'll give them new wash -- ing
    | ma -- chine.
}

"text verse tenor 3" = \lyricmode {
    | What they got there to
    | keep clean?
}



"text verse alto 4" = \lyricmode {
    | When I will go back to
    | San Juan.
}

"text verse bass 4" = \lyricmode {
    | When will you shut up and
    | get gone?
}

"text verse sopran 4" = \lyricmode {
    | Ev' -- ri -- one there will give
    | big cheer.
}

"text verse tenor 4" = \lyricmode {
    | Ev' -- ri -- one there will have
    | moved here.
}




"alto verse 0" = \relative e' {
    | e8 a g e a g
    | e4 e8 ( c4.)
}


"text verse alto 3" = \lyricmode {
    | I'll bring a T. V. to
    | San Juan.
}


"text verse bass 3" = \lyricmode {
    | If there's a cur -- rent to
    | turn on.
}

"text verse sopran 3" = \lyricmode {
    | I'll give them new wash -- ing
    | ma -- chine.
}

"text verse tenor 3" = \lyricmode {
    | What they got there to
    | keep clean?
}


"alto verse 0" = \relative e' {
    | e8 a g e a g
    | e4 e8 ( c4.)
}


"text verse alto 3" = \lyricmode {
    | I'll bring a T. V. to
    | San Juan.
}


"text verse bass 3" = \lyricmode {
    | If there's a cur -- rent to
    | turn on.
}

"text verse sopran 3" = \lyricmode {
    | I'll give them new wash -- ing
    | ma -- chine.
}

"text verse tenor 3" = \lyricmode {
    | What have they got there to
    | keep clean?
}


"alto verse 0" = \relative e' {
    | e8 a g e a g
    | e4 e8 ( c4.)
}





"alto verse" = {
    \"alto verse 0"
    \"music empty 3 bars"
    \"music empty 2 bars"
    \"music empty 3 bars"
}

"bass verse 0" = \relative e {
    | e8 a g c a g
    | b4 b8 ( a4. )
}

"bass verse" = {
    \"music empty 2 bars"
    \"bass verse 0" \"music empty 1 bar"
    \"music empty 2 bars"
    \"music empty 2 bars"
}


"sopran verse 0" = \relative a' {
    | a8 d c  a d c
    | a4 a8 ( f4. )
}

"sopran verse" = {
    \"music empty 2 bars"
    \"music empty 3 bars"
    \"sopran verse 0"
    \"music empty 3 bars"
}

"tenor verse 0" = \relative a {
    | a8 d c f d c
    | b4 b8 ( g4. )
}

"tenor verse" = {
    \"music empty 2 bars"
    \"music empty 3 bars"
    \"music empty 2 bars"
    \"tenor verse 0" \"music empty 1 bar"
}







% Scores
% ----------------------------------------------------------------------


\midi   {
    \context {
        \Score
        midiChannelMapping = #'instrument
    }
    \context {
        \Staff
        \remove "Staff_performer"
    }
    \context {
        \Voice
        \consists "Staff_performer"
    }
}



\score {
    \new ChoirStaff <<
        \new Staff <<
            \time 3/4
            \tempo 4 = 150
            \new Voice = sopran \with {
                midiInstrument = "violin"
            }
            {
                \voiceOne
                \sectionLabel "Refrain 1,2"
                \"sopran refrain"
                \break

                \sectionLabel "Refrain 3,4"
                \"sopran refrain"
                \break

                \"sopran verse"
            }

            \new Voice = alto  \with {
                midiInstrument = "clarinet"
            }
            {
                \voiceTwo
                \"alto refrain Oh"
                \"alto refrain"

                \sectionLabel "Verse"
                \"alto verse"
            }

            \new Lyrics \lyricsto "sopran" {
                \set stanza = "1. " \"text refrain 1"
                \set stanza = "3. " \"text refrain 3"

                \"text verse sopran 1"
            }

            \new Lyrics \lyricsto "sopran" {
                \set stanza = "2. " \"text refrain 2"
                \set stanza = "4. " \"text refrain 4"

                \"text verse sopran 2"
            }

            \new Lyrics \lyricsto "sopran" {
                \"text refrain empty"
                \"text refrain empty"

                \"text verse sopran 3"
            }

            \new Lyrics \lyricsto "sopran" {
                \"text refrain empty"
                \"text refrain empty"

                \"text verse sopran 4"
            }

            \new Lyrics \lyricsto "alto" {
                \"text refrain Oh"
                \"text refrain empty"

                \set stanza = "1. " \"text verse alto 1"
            }

            \new Lyrics \lyricsto "alto" {
                \"text refrain Oh empty"
                \"text refrain empty"

                \set stanza = "2. " \"text verse alto 2"
            }

            \new Lyrics \lyricsto "alto" {
                \"text refrain Oh empty"
                \"text refrain empty"

                \set stanza = "3. " \"text verse alto 3"
            }

            \new Lyrics \lyricsto "alto" {
                \"text refrain Oh empty"
                \"text refrain empty"

                \set stanza = "4. " \"text verse alto 4"
            }
        >>

        \new Staff <<
            \clef bass
            \new Voice = tenor \with {
                midiInstrument = "tenor sax"
            }
            {
                \voiceThree
                \"tenor refrain Oh"
                \"tenor refrain"

                \"tenor verse"
            }
            \new Voice = bass \with {
                midiInstrument = "cello"
            }
            {
                \voiceFour
                \"bass refrain Oh"
                \"bass refrain"

                \"bass verse"
            }

            \new Lyrics \lyricsto tenor {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse tenor 1"
            }

            \new Lyrics \lyricsto tenor {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse tenor 2"
            }

            \new Lyrics \lyricsto tenor {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse tenor 3"
            }

            \new Lyrics \lyricsto tenor {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse tenor 4"
            }

            \new Lyrics \lyricsto bass {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse bass 1"g
            }

            \new Lyrics \lyricsto bass {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse bass 2"g
            }

            \new Lyrics \lyricsto bass {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse bass 3"g
            }

            \new Lyrics \lyricsto bass {
                \"text refrain Oh empty"
                \"text refrain empty"

                \"text verse bass 4"g
            }
        >>
    >>

    \layout {}
    \midi {}
}
