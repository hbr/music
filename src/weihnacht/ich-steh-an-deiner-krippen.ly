\version "2.24.3"
\language "english"

global = {
  \key d \minor
  \time 4/4
  \tempo 4 = 95
}


\header {
    title = "Ich steh an deiner Krippen hier"
    composer = "J.S. Bach"
    arranger = ""
    poet = "Paul Gerhard"
    tagline = #f
}



"sopran Ich steh" = \relative d'' {
       % d               C       F
    a4 | d e f d       | c4. bf8 a4 \breathe
       % d       Bf      A
    c  | f,4. e8 f4 g4 | a2 a4 \breathe
}


"alto Ich steh" = \relative f' {
    f4 | f a a a | g e f
    e  | d4. e8 d4 d | e2 e4
}


"tenor Ich steh" = \relative d' {
    d4 | a4 cs d f  | c4 c c
    c  | d  d d d  | d (b) cs
}


"bass Ich steh" = \relative d {
    d4 | d a' d, d | e c f
    a  | d c  bf bf | a2 a4
}




"sopran Nimm hin" = \relative d'' {
   % C   F    Bf               g       F
    c4 | f4 c d c            | bf4. c8 a4 \breathe
   %     d    Bf               g       F
    c4 | f4 c d c            | bf4. c8 a4 \breathe
   %     G  A   Bf             A    d
    a4 | b4 cs4 d8 (f) e (d) | cs2  d4\fermata
}


"alto Nimm hin" = \relative f' {
    f4 | a f f f  | f e f
    g  | f e f f  | f e f
    f  | g g a bf | a2 a4
}


"tenor Nimm hin" = \relative c' {
    c4 | c c bf c | d c c
    c  | a c bf c | d c c
    c  | d e d g  | e2 f4
}


"bass Nimm hin" = \relative d' {
    a4 | f a bf a  | g g f
    e  | d a' bf a | g c, f
    d  | g e f g   | a2 d,4

}



"sopran" = {
    \partial 4
    \"sopran Ich steh"
    \"sopran Ich steh"
    \"sopran Nimm hin"
}



"alto" = {
    \partial 4
    \"alto Ich steh"
    \"alto Ich steh"
    \"alto Nimm hin"
}



"tenor" = {
    \partial 4
    \"tenor Ich steh"
    \"tenor Ich steh"
    \"tenor Nimm hin"
}


"bass" = {
    \partial 4
    \"bass Ich steh"
    \"bass Ich steh"
    \"bass Nimm hin"
}








"stanza 1" = \lyricmode {
    Ich | steh an dei -- ner | Krip -- pen hier
    o   | Je -- su du mein    | Le -- ben.

    Ich | kom -- me bring und | schen -- ke dir,
    was | du mir hast ge --   | ge -- ben.

    Nimm  | hin es ist mein       | Geist und Sinn,
    Herz, | Seel und Mut, Nimm    | al -- les hin
    und   | lass dir's wohl ge -- | fal -- len
}


"stanza 2" = \lyricmode {
    Da  | ich noch nicht ge -- | bo -- ren war,
    da  | bist du mir ge --    | bo -- ren
    und | hast mich dir zu | Ei -- gen gar,
    eh  | ich dich kannt, er | ko -- ren.

    Eh | Ich durch dei -- ne | Hand ge -- macht,
    da | hast du schon bei   | dir be -- dacht,
    wie | du mein woll -- test | wer -- den.
}


"stanza 3" = \lyricmode {
    Ich | lag in tief -- ster | To -- des -- nacht,
    du  | war -- est mei -- ne | Son -- ne,
    die | Son -- ne, die mir | zu -- ge -- bracht
    Licht, | Le -- ben, Freud und | Won -- ne.

    Oh  | Son -- ne, die das | wer -- te Licht
    des | Glau -- bens in mir | zu -- ge -- richt',
    wie | schön sind dei -- ne | Strah -- len.
}


"stanza 4" = \lyricmode {
    Ich | se -- he dich mit | Freu -- den an
    und | kann mich nicht satt | se -- hen;
    und | weil ich nun nicht | wei -- ter kann,
    bleib | ich an -- be -- tend | ste -- hen.

    Oh | dass mein Sinn ein  | Ab -- grund wär
    und | mei -- ne Seel ein | wei -- tes Meer,
    dass | ich dich möch -- te | fas -- sen.
}


"stanza 5" = \lyricmode {
    Eins | a -- ber, hoff ich, | wirst du mir,
    mein | Hei -- land, nicht ver -- | sa -- gen:
    dass | ich dich mö -- ge | für und für
    in,  | bei und an mir | tra -- gen.

    So  | lass mich doch dein | Kripp -- lein sein;
    komm, | komm und le -- ge | bei mir ein
    dich  | und all dei -- ne | Freu -- den.
}









\score {
    \new ChoirStaff <<
        \new Staff <<
            \global
            \new Voice = "sopranos" {
                \voiceOne
                %\set midiInstrument = "organ"
                \set midiMaximumVolume = 1.5
                \sopran
            }

            \new Voice = "altos" {
                \voiceTwo
                \set midiInstrument = "flute"
                \set midiMaximumVolume = 1.0
                \alto
            }
        >>

        \addlyrics {
            \set associatedVoice = "sopranos"
            \set stanza = "1. "
            \"stanza 1"
        }


        \addlyrics {
            \set associatedVoice = "sopranos"
            \set stanza = "2. "
            \"stanza 2"
        }


        \addlyrics {
            \set associatedVoice = "sopranos"
            \set stanza = "3. "
            \"stanza 3"
        }


        \addlyrics {
            \set associatedVoice = "sopranos"
            \set stanza = "4. "
            \"stanza 4"
        }


        \addlyrics {
            \set associatedVoice = "sopranos"
            \set stanza = "5. "
            \"stanza 5"
        }

        \new Staff <<
            \global
            \clef bass

            \new Voice = "tenor" {
                \voiceOne
                \set midiInstrument = "tenor sax"
                \set midiMaximumVolume = 1.0
                \tenor
            }

            \new Voice = "bass" {
                \voiceTwo
                \set midiInstrument = "cello"
                \set midiMaximumVolume = 1.0
                \bass
            }
        >>
    >>




  \layout {}
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
}
