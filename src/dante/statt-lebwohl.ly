\version  "2.24.4"
\language "english"
\include "../scheme-functions.ly"

\header {
    title   = "Statt Lebwohl"
    composer = "Irische Volksweise (The Leaving of Liverpool)"
    arranger  = "Ulrike Wenckebach"
    tagline = ""
}

\paper {
    page-count = #1
}






% Structure
% ----------------------------------------------------------------------

%{
    intro       4 measures

    verse 1     16 measures
    refrain 1   16 measures

    verse 2     16 measures
    refrain 2   18 measures

%}






% Intro
% ----------------------------------------------------------------------

"text intro" = \lyricmode {
    Du du
    | du du du du
    | du du
    | du. __
}



"text intro empty" = \lyricmode {
    "" ""
    | "" "" "" ""
    | "" ""
    | ""
}


"soprano intro" = \relative {
    \section
    \sectionLabel "Intro"
    \partial 2

    c'4^\p d
    | e4 g g e
    | d2. c4
    | c1 ~
    | 2^\fermata
}

"alto intro" = \relative c' {
    \partial 2

    c2
    | c1
    | c4 b a a
    | g1 ~
    | 2
}

"bass intro" = \relative c' {
    \partial 2
    c4 b
    | a2 f
    | g2 f
    | e1 ~
    | 2
}





% Verse
% ----------------------------------------------------------------------


"text 1" = \lyricmode {
    Statt Leb' --
    | wohl, statt
    | Ab -- schied ein 'Auf
    | Wie -- der --
    | sehn'
        denn der
    | Ab -- schied
    | fällt _ doch sehr
    | schwer. __

    Um so
    | mehr ge --
    | lei -- ten in Ge --
    | dan -- ken wir
    | dich,
            den -- noch:
    | Feh -- len wirst Du
    | sich -- er --
    | lich. __

}

"text 2" = \lyricmode {
    Uns -- re
    | Her -- zen,
    | die be -- hal -- ten
    | gern __ ein
    | Stück
            von all --
    | dem,  das
    | wir mit dir ge --
    | teilt.
            Und so
    | man -- cher
    | hät -- te,  wenn er
    | ehr _ -- lich
    | ist,  lie -- ber
     län -- ger hier mit
    | Dir ver --
    | weilt. __
}


"soprano verse" = \relative c' {
    \section
    \sectionLabel "Verse"
    c4^\mf d
    | e2. g4
    | f4^\< e d c\!
    | c'2. a4
    | g2  c,4 d
    | e2. g4
    | a4 a g e
    | d1 ~
    | 4 r
            c4 d
    | e2. g4
    | f4^\< e d c\!
    | c'2 c4 a
    | g2 \breathe
        c,4^\> d\!
    | e4 g g e
    | d2. c4
    | c1 ~
    | c4 r
}


"alto verse" = \relative c' {
        g4 c |
    c2. e4 |
    c4 c c c |
    a'2( g4) f |
    f4( e)
            c4 d |
    c2. e4 |
    c4 c c c |
    c2( a2 |
    b4) r4
            g4 c |
    c2. c4 |
    c4 c c c |
    f4( e) g f |
    d4( e)
            c4 c |
    c4 c c c |
    c2. a4 |
    g1 ~ |
    4 r



}


"bass verse" = \relative c {
    e4 f
    | g2. c4
    | a4 g f e
    | f4 ( g a) c
    | c2 c4 c
    | c4( b a) g
    | f4 f e f
    | g1 ~
    | g4 r
          e4 f
    | g2  c
    | bf4 bf bf bf
    | a2  a4 c
    | c2
            c4 b
    | a4 a e f
    | g2 f
    | e1 ~
    | e4 r

}







% Refrain
% ----------------------------------------------------------------------

"text refrain 1: 1" = \lyricmode {
    Dei -- nen
    | Blick vor --
    | aus
            ziehst du
    | nun __  hi --
    | naus, __
                neu -- e
    | We -- ge, neu -- e
    | Zie -- le war -- ten
    | schon __
}

"text refrain 2: 1" = \lyricmode {
    Dei -- nen
    | Blick vor --
    | aus
            ziehst du
    | nun __  hi --
    | naus, __
                neu -- e
    | Men -- schen, neu -- e
    | Freun -- de war -- ten
    | "(schon auf dich)" __
}

"text refrain 2.1" = \lyricmode {
    Und wenn wir
    | uns dann
    | hof -- fent --lich bald
    | wie -- der --
    | seh'n,
            dann er --
    | war -- ten off -- 'ne
    | Ar -- me
    | Dich!
}

"text refrain 2.2" = \lyricmode {
    war -- ten off -- 'ne
    Ar -- me
    dich,
          dann er --
    war -- ten off -- 'ne
    Ar -- me
    Dich!
}


"soprano refrain 1" = \relative c'' {
    \section
    \sectionLabel "Refrain"
    b4^\f c
    | d2. b4
    | g2  b4 d  \pageBreak
    | c2. a4
    | g2 \breathe
        c,4^\mf d
    | e4 g g4. g8
    | a4 g f^\> e
    | d1 ~
    | 4 \! \breathe
            g4^\mp g^\< f
    | e2. g4
    | f4 e d c
    | c'2.\!  a4
    | g2 \breathe
            c,4 d
}


"soprano refrain 2.1" = \relative c' {
    e4 g g e
    | d2. c4
    | c1
    | r2
}

"soprano refrain 2.2" = \relative c' {
    e4 g g a
      g2 c4( b)
     \time 3/2
      c1^\fermata
            c,4^\p e
      \time 2/2
      e4 g g e
      d2. c4
      c2^\fermata
}


"alto refrain 1" = \relative c' {
        d4 e |
    f2. f4 |
    f4( e) d f |
    f4( e f) f |
    f4( e) c c |
    c4 c c4. c8 |
    c4 c c c |
    c2 a4 c ~ |
    c4
        b4 a b |
    c2. c4 |
    c4 c c c |
    f4( e g) f |
    d4( e)
            c c
}



"alto refrain 2.1" = \relative c' {
    c4 c c c |
    c4( b a) a |
    g1 |
    r2
}



"alto refrain 2.2" = \relative c' {
    c4 c c c
    c4( d) e2
    e1
        c4 c
    c4 c c c
    c4( b a) a
    g2
}




"bass refrain 1" = \relative c' {
          g4 g  |
    g2.      g4 |
    g2    g4 g  |
    a2.      b4 |
    c2
          c4 b  |
    a4 e  f4. e8 |
    f4 e  d  c   |
    f1 ( |
    g4)
        g4 g g  |
    c,2  c'     |
    bf4 bf bf bf |
    a2. c4 |
    c2
        c4 b |
}


"bass refrain 2.1" = \relative c' {
    a4 a e f |
    g2 f |
    e1 |
    r2
}


"bass refrain 2.2" = \relative c' {
    a4 a g f
    e4( f) g2
    a1
        c4 b
    a4 a e f
    g2 f2
    e2
}







% Complete Voices
% ----------------------------------------------------------------------


soprano = {
    \voiceOne
    \"soprano intro"

    \repeat volta 2 {
        \"soprano verse"
        \"soprano refrain 1"

        \alternative {
            \volta 1 \"soprano refrain 2.1"
            \volta 2 \"soprano refrain 2.2"

        }
    }
}


alto = {
    \voiceTwo
    \"alto intro"

    \repeat volta 2 {
        \"alto verse"
        \"alto refrain 1"

        \alternative {
            \volta 1 \"alto refrain 2.1"
            \volta 2 \"alto refrain 2.2"
        }
    }
}


bass = {
    \"bass intro"

    \repeat volta 2 {
        \"bass verse"
        \"bass refrain 1"

        \alternative {
            \volta 1 \"bass refrain 2.1"
            \volta 2 \"bass refrain 2.2"
        }
    }
}



makeVoice =
#(define-music-function
    (name music instrument volume)
    (string? ly:music? string? number?)
    #{
        \new Voice = $name \with {
            midiInstrument    = $instrument
            midiMaximumVolume = $volume
        }
        { $music }
    #}
)



makeScoreMusic =
#(define-music-function
    (select) (number?)
    #{
    \new ChoirStaff
    <<
        \new Staff \with {instrumentName = "S/A"}
        <<
            \tempo 2 = 60

            \makeVoice
                "soprano"
                \soprano
                "violin"
                #(voice-volume "soprano" select)

            \makeVoice
                "alto"
                \alto
                "oboe"
                #(voice-volume "alto" select)


            \new Lyrics \lyricsto "soprano" {
                \"text intro"
                \"text 1"
                \"text refrain 1: 1"
                \"text refrain 2.1"
                \"text refrain 2.2"
            }

            \new Lyrics \lyricsto "soprano" {
                \"text intro empty"
                \"text 2"
                \"text refrain 2: 1"
            }
        >>

        \new Staff \with {instrumentName = "B"} {
            \clef bass

            \makeVoice
                "bass"
                \bass
                "cello"
                #(voice-volume "bass" select)
        }
    >>
    #}
)






% Score
% ----------------------------------------------------------------------

\midi   {
    \context {
        \Staff
        \remove "Staff_performer"
    }
    \context {
        \Voice
        \consists "Staff_performer"
    }
}


\book {
    \score {
        \makeScoreMusic 0

        \layout { }
    }

    \score {
        \unfoldRepeats {#(makeScoreMusic 0)}

        \midi {}
    }
}






\book {
    \bookOutputSuffix "soprano"
    \score {
        \unfoldRepeats {#(makeScoreMusic 1)}

        \midi {}
    }
}






\book {
    \bookOutputSuffix "alto"
    \score {
        \unfoldRepeats {#(makeScoreMusic 2)}

        \midi {}
    }
}






\book {
    \bookOutputSuffix "bass"
    \score {
        \unfoldRepeats {#(makeScoreMusic 4)}

        \midi {}
    }
}
