\version "2.24.3"
\language "english"
\include "../scheme-functions.ly"

%{
Deutscher Text

Freue dich Welt, dein König kommt
Lasst alle Welt es hören
Macht eure Herzen weit und lasst euch auf ihn ein
Die ganze Schöpfung singt, die ganze Schöpfung singt
Die ganze Schöpfung singt ihm zu.

Freue dich Welt, dein Retter kommt
Lasst neue Lieder klingen
Wie Flüsse und Felder und Berge und Täler
Vor Freude Lobpreis bring, vor Freude Lobpreis bring
Vor Freude, vor Freude ihm Lobpreis bring.

Jesus regiert in seiner Pracht
Die ganze Welt erzählt (skrr, skrr)
Von seiner großen Macht, Gerechtigkeit und Gnade
Wie liebevoll er ist (wie liebevoll), wie liebevoll er ist (wie liebevoll)
Wie liebe-, wie liebevoll doch Jesus ist.


%}


"stanza 1" = \lyricmode {
          Joy to the world,        the    | lord is come,
    let | earth re -- ceive        a      | king.
    Let | e -- vry heart           pre -- |  pare him room
    and | heav'n and na -- ture sing, and | heav'n and na -- ture sing,
    and | hea -- 'vn and hea -- 'vn,  and | na -- ture sing.
}


soprano = \relative {
    %         do ti   la sol            fa    | mi re do
    % sol   | la la  ti                 ti    | do
    % do    | do ti la sol sol fa mi    do    | do ti la sol sol fa mi
    % mi    | mi mi  mi  mi fa   sol    fa mi | re  re  re  re mi   fa
    % mi re | do do   la sol fa mi      fa    | mi re do


    d''4 cs8. b16 a4.  g8 | fs4 e d4.

    a'8   | b4. b8 cs4. cs8 | d2. r8

    d8    | d8 (cs)  b  (a)   a8. (g16  fs8\noBeam)
    d'8   | d8 (cs)  b  (a)   a8. (g16  fs8\noBeam)

    fs8      | fs8 fs  fs  fs16 (g)  a4.
    g16 (fs) | e8  e   e   e16 (fs)  g4.

    fs16 (e) | d8 d'4  b8 a8. (g16) fs8  g8 | fs4 e d2
}



alto = \relative {
% 1-2:            mi sol fa mi           re    | do ti do
% 3-4:    sol   | fa fa fa               fa    | mi
% 5-6:    mi    | mi sol fa mi mi re do  mi    | mi sol fa mi mi re do
% 7-8:    do    | do do do do re mi      re do | ti ti ti ti do re
% 9-10:   do ti | do mi fa mi re do      re    | do ti do


                       fs'4 a8. g16 fs4.     e8   | d4 cs d4.

            a'8      | g4. g8  g4.           g8   | fs2. r8

            fs8      | fs (a) g (fs) fs8. (e16 d8\noBeam)
            fs8      | fs (a) g (fs) fs8. (e16 d8\noBeam)

            d8       | d8  d  d   d16 (e)  fs4.
            e16 (d)  | cs8 cs cs  cs16 (d) e4.

            d16 (cs) | d8  fs4 g8 fs8. (e16) d8   e8 | d4 cs d2
}




"stanza 1: low" = \lyricmode {
    and heav'n and na -- ture | sing, and heav'n and na -- ture | sing
    and heav'n and  | na -- ture sing.

}


tenorOne = \relative {
% 1-2               sol sol do do             la | sol fa mi
% 3-4       do    | do  do re                 re | sol
% 5-6       sol   | sol do  do la sol         sol| sol do do la sol

                    a4  a8. d16 d4.          b8  | a4. g8 fs4.

            d'8   | d4. d8 e4.               e8  | a,2. r8

            a8    | a4  d  d8. (b16 a8\noBeam)
            a8    | a4  d  d8. (b16 a8\noBeam) r8
}

tenorTwo = \relative {
% 7-8          r4 r8 sol sol sol sol sol | sol   sol sol sol sol sol fa |
% 9-10         mi sol do do do la sol la  | sol fa mi

    r4 r8 a8 a a a a | a4. a8 a a a a16 (g) |
    fs8 (a4) d8  d8. (b16 a8) b\noBeam | a4. g8 fs2
}


bassOne = \relative {
% 1-2               do do do do               fa | sol sol do
% 3-4       mi    | fa fa re                  re | do
% 5-6       do    | do do do                  do | do do do

                    d4 d8. d16 d4.            g,8| a4 a4 d4.
            fs8   | g4. g8 e4.                e8 | d2. r8
            d8    | d4 d d ~ 8\noBeam         d8 | d4 d d ~ 8 r8  |
}

bassTwo = \relative {
% 7-8       do    | do do do                  mi | sol
% 9-10

             r4 r8 d8 d d d fs | a4. a8 a,8 [a] a [a] |
             d4. d8 d4 ~ 8 g,8\noBeam  | a4 a4 d2
}








\header {
    title    = "Joy to the World"
    composer = "Georg Friedrich Händel (1685 - 1759)"
    poet     = "Isaac Watts (nach Psalm 98)"
    arranger = "Siegfried Singer"
    tagline  = #f
}


makeScoreInner =
#(define-music-function
    (select) (number?)
    #{
        \new ChoirStaff
        <<
            \new Staff <<
                \clef treble
                \key  d \major
                \time 4/4

                \new Voice = "soprano" {
                    \voiceOne
                    \set midiInstrument = "violin"
                    \set midiMaximumVolume = #(voice-volume "soprano" select)
                    \soprano
                }

                \new Voice = "alto" {
                    \voiceTwo
                    \set midiInstrument = "flute"
                    \set midiMaximumVolume = #(voice-volume "alto" select)
                    \alto
                }
            >>

            \new Lyrics \lyricsto "soprano" { \"stanza 1" }

            \new Staff <<
                \clef bass
                \key d \major
                \time 4/4

                {
                    \new Voice = "tenorOne" {
                        \voiceOne
                        \set midiInstrument = "tenor sax"
                        \set midiMaximumVolume = #(voice-volume "tenor" select)
                        \tenorOne
                    }
                    \new Voice = "tenorTwo" {
                        \voiceOne
                        \set midiInstrument = "tenor sax"
                        \set midiMaximumVolume = #(voice-volume "tenor" select)
                        \tenorTwo
                    }
                }

                {
                    \new Voice = "bassOne" {
                        \voiceTwo
                        \set midiInstrument = "cello"
                        \set midiMaximumVolume = #(voice-volume "bass" select)
                        \bassOne
                    }
                    \new Voice = "bassTwo" {
                        \voiceTwo
                        \set midiInstrument = "cello"
                        \set midiMaximumVolume = #(voice-volume "bass" select)
                        \bassTwo
                    }
                }

                \new Lyrics \lyricsto "tenorTwo" \"stanza 1: low"
            >>
        >>
    #}
)


\book {
    \score {
        #(makeScoreInner 0)

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


    \markup {
        \fill-line {
            \hspace #1
            \column {
                \line { 2. Joy to the world, the saviour reigns, }
                \line { that men their songs employ. }
                \line { While fields and floods, rocks, hills and plains }
                \line { ||: repeat the sounding joy, :|| }
                \line { repeat the sounding the sounding joy.}
            }
            \hspace #2
            \column {
                \line { 3. He rules the world with truth and grace }
                \line { and makes the nations prove }
                \line { ||: the glories of his righteousness :|| }
                \line { ||: and wonders of his love :|| }
                \line { and wonders and wonders of his love. }
            }
            \hspace #1
        }
    }
}





\book {
    \bookOutputSuffix "soprano"

    \score {
        #(makeScoreInner 1)

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
}





\book {
    \bookOutputSuffix "alto"

    \score {
        #(makeScoreInner 2)

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
}





\book {
    \bookOutputSuffix "tenor"

    \score {
        #(makeScoreInner 3)

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
}





\book {
    \bookOutputSuffix "bass"

    \score {
        #(makeScoreInner 4)

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
}
