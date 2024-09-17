\version "2.24.3"
\language "english"

%{
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}
%}

global = {
  \key f \major
  \time 4/2
  \tempo 4 = 120
}








% Soprano
%----------------------------------------------------------------------

"soprano 1" = \relative {
    f'2 f4 (g) a2  g4 (f)
    |
    bf2  a4 (g)  a2  a
    |
    g2   a4 (bf) a2  g4 (f)
    |
    g4 (bf)  a4 (f)  f2  f
    |
    c'  c4 (d)    bf1
    |
    c4 (bf) a (g)  a2  a
    |
    g4 (f)  bf (g)  f2  bf4 (a)
    |
    g4 (f)  bf (g)  f2  f
}

"soprano 2" = \relative {
    c''2   c4 (d) bf2   c4 (d)
    |
    ef4 (d)   c (a)   bf2 g
    |
    f2   g4 (a)   bf2  a
    |
    g4 (f)   bf (g)  f2  f
}


sopranoMusic =
    {
        \repeat volta 2 \"soprano 1"
        \repeat volta 2 \"soprano 2"
    }











% Alto
%----------------------------------------------------------------------

"alto 1" = \relative {
    c'2 c4 (e) f2 e4 (f)
    |
    f2 f4 (e) f2 f
    |
    e2 f f e4 (f)
    |
    e4 (f) f (e) c2 c
    |
    a'2  a  g1
    |
    g2   f4 (e)  f2  f
    |
    e4 (d)  d (e)  f2  f
    |
    e4 (d)  d (e)  c2  c
}


"alto 2" = \relative {
    a'2  a4 (f)  g2  g4 (bf)
    |
    c4 (bf)  g (f)  f2  e
    |
    c2  e4 (f)  f2  f
    |
    e4 (d)   d (e)  c2  c
}

altoMusic = {\"alto 1" \"alto 2"}








% Tenor
%----------------------------------------------------------------------

"tenor 1" = \relative {
    a2 a4 (c)  c2 c
    |
    d2  c  c  c
    |
    c2  c4 (d)  c2  c4 (a)
    |
    c4 (d)  c2  a  a
    |
    f'2  f  d1
    |
    e2  c  c  c
    |
    c4 (a)  bf (c)  c2  d4 (c)
    |
    c4 (a)  d (c)  a2  a
}

"tenor 2" = \relative {
    f'2  f  d  ef4 (f)
    |
    g4 (f)  ef (c)  d2  c
    |
    a2  c  d  c
    |
    c4 (a)  bf (c)  a2 a
}


tenorMusic = { \"tenor 1"  \"tenor 2"}






% Bass
%----------------------------------------------------------------------

"bass 1" = \relative {
    f2 f4 (c)  f2 c4 (f)
    |
    bf,2  f'4 (c)  f2 f
    |
    c2  f4 (bf,)  f'2  c4 (d)
    |
    c4 (bf)  f' (c)  f,2  f
    |
    f'  f4 (d)  g1
    |
    c,2  f4 (c)  f2  f
    |
    c4 (d)  g, (c)  f2  bf,4 (f')
    |
    c (d)  g, (c)  f2  f
}


"bass 2" = \relative {
    f2  f4 (d)  g2  ef4 (d)
    |
    c4 (d)   ef (f)  bf,2   c
    |
    f2  c4 (f)   bf,2   f'
    |
    c4 (d)  g,4 (c)  f,2  f

}


bassMusic =
    {
        \"bass 1"
        \"bass 2"
    }





% Text
%----------------------------------------------------------------------

"text 1" = \lyricmode {
    %\set associatedVoice = "sopranos"
    Al -- ta    Tri -- ni --  | ta   be -- a -- ta,
    |
    da  noi  sem -- pre       | a -- do -- ra -- ta
    |
    Tri -- ni -- ta           | glo -- ri -- o -- sa
    |
    u -- ni -- ta  ma --      | ra -- vi -- glio -- sa
}

"text 2" = \lyricmode {
    Tu sei man -- na     |  sa -- po -- ro -- sa
    |
    e  tut -- ta  de --  |  si -- de -- ro -- sa.
}

text = {\"text 1" \"text 2"}








% Header
%----------------------------------------------------------------------

\header {
    title = "Alta Trinità Beata"
    composer = "Musik: 15. Jh"
    arranger = "Satz: Anonymus 19. Jh"
    poet = "Text: Lauda, 15. Jh"
}




% Score
%----------------------------------------------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        \set midiInstrument = "choir aahs"
        %\set midiMaximumVolume = 0.0
        { \global \sopranoMusic }
      }
      \new Voice = "altos" {
        \voiceTwo
        \set midiInstrument = "violin"
        %\set midiMaximumVolume = 0.0
        << \global \altoMusic >>
      }
    >>
    \addlyrics {\set associatedVoice = "sopranos" \text}


    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        \set midiInstrument = "tenor sax"
        %\set midiMaximumVolume = 0.0
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \set midiInstrument = "contrabass"
        %\set midiMaximumVolume = 0.0
        \voiceTwo << \global \bassMusic >>
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
