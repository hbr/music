\version "2.24.3"

\header {
    title =     "Alle meine Entchen"
    composer =  "Ernst Anschütz (1780-1861)"
}

\score {
    \new PianoStaff <<
        \new Staff {
            \time 2/4

            \relative c' {
                c8 d e f | g4 g |
                \repeat unfold 2 {
                    a8 a a a | g2 |
                }
                f8 f f f | e4 e |
                d8 d d d | c2
            }

        }

        \addlyrics {
            \set stanza = "1. "

            \lyricmode {
                Al -- le mei -- ne | Ent -- chen |
                \repeat unfold 2 {
                    schwim -- men auf dem | See, |
                }
                Köpf -- chen in das | Wa -- sser, |
                Schwänz -- chen in die | Höh'. |
            }
        }

        \addlyrics {
            \set stanza = "2. "

            \lyricmode {
                Al -- le mei -- ne | Täub -- chen |
                \repeat unfold 2 {
                    gur -- ren auf dem | Dach, |
                }
                eins fliegt in die | Lüf -- te, |
                flie --- gen alle  | nach. |
            }
        }

        \addlyrics {
            \set stanza = "3. "

            \lyricmode {
                Al -- le mei -- ne | Hüh -- ner |
                \repeat unfold 2 {
                    schar -- ren in dem | Stroh, |
                }
                fin -- den sie ein | Körn -- chen, |
                sind sie al -- le  | froh.
            }
        }

        \addlyrics {
            \set stanza = "4. "

            \lyricmode {
                Al -- le mei -- ne | Gäns -- chen |
                \repeat unfold 2 {
                    wat -- scheln durch den | Grund, |
                }
                su -- chen in dem  | Tüm -- pel,
                wer -- den ku -- gel -- | rund.
            }
        }

        \new Staff {
            \clef bass
            \time 2/4

            \relative {
                c2 | e2 |
                \repeat unfold 2 {
                    f2 e
                }
                d2 | c2 |
                b  | c  |

            }
        }
    >>
}
