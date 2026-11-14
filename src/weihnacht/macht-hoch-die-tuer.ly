\language "english"
\version  "2.24.42"



"sopran Macht hoch die Tür" =
    \relative f' {
        a4 | c2  bf4  a2 g4 | f4(g) a  g2
        c4 | bf2 bf4  a2 a4 | g4(f)g   f2

    }
    \addlyrics {
        Macht | hoch die Tür die   | Tor macht weit.
        Es    | kommt der Herr der | Herr -- lich -- keit.
    }


"sopran ein König aller Königreich" =
    \relative g' {
        a4 | g2 g4   a4(b)c | c4(d)b  c2
        a4 | g2 g4   a4(b)c | c4(d)b  c2
    }
    \addlyrics {
        Ein | Kö -- nig al -- ler   | Kö -- nig -- reich,
        ein | Hei -- land al -- ler | Welt zu -- gleich.
    }


"sopran der Heil und Segen" =
    \relative  c'' {
        c4 | d2 c4    d2 c4 | d4(c)bf  a2
        c4 | d2 c4    d2 c4 | d4(c)bf  a2
    }
    \addlyrics {
        der    | Heil und Se -- gen      | mit sich bringt;
        der -- | hal -- ben jauchzt, mit | Freu -- den singt:
    }


"sopran Gelobet sei mein Gott" =
    \relative c'' {
        c4 | f,2 f4   bf2 a4  | g2.  r2
        c4 | bf2 a4   g4( f)g | f2.

    }
    \addlyrics {
            Ge --
        | lo -- bet sei mein
        | Gott,
            mein
        | Schö -- pfer reich von
        | Rat.
    }



\header {
    title = "Macht hoch die Tür"
    composer = "Johann Freylinghausen (1704)"
    poet     = "Georg Weissel (1623)"
    tagline  = ""
}



\score {
    {
        \set Score.barNumberVisibility = #first-bar-number-invisible
        \override Score.BarNumber.break-visibility = ##(#f #f #t)

        %\transpose f' d' {
            \key f \major
            \time 6/4
            \tempo 4 = 150

            \partial 4
            \"sopran Macht hoch die Tür"
            \break
            \"sopran ein König aller Königreich"
            \break
            \"sopran der Heil und Segen"
            \break
            \"sopran Gelobet sei mein Gott"
        %}
    }

    \layout {}
    \midi   {}
}
