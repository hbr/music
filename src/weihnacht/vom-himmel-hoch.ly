\version  "2.24.4"
\language "english"




sopran =
    \relative c'' {
        c4 | b a b4 g | a b c4 \breathe
        c4 | c4 g g e | g4 f e4 \breathe

        e4 | a4 a g4  b | c4 a g4  \breathe
        c4 | b4 a g  a  | f8(e8)d4 c2


    }
    \addlyrics {
        \set stanza = "1. "
        Vom   | Him -- mel hoch da   | komm ich her,
        ich   | bring euch gu -- te  | neu -- e Mär,

        der   | gu -- ten Mär bring  | ich so -- viel,
        da -- | von ich sing'n und   | sa -- gen will.
    }
    \addlyrics {
        \set stanza = "2. "
        Euch  | ist ein Kind -- lein   | heut ge -- born,
        von   | ei -- ner Jung -- frau | aus -- er -- korn,

        ein   | Kin -- de -- lein so   | zart und fein,
        das   | soll eur Freud und     | Son -- ne sein.
    }
    \addlyrics {
        \set stanza = "13. "
        Ach   | mein herz -- lie -- bes | Je -- su -- lein,
        mach  | dir  ein rein sanft     | Bet -- te --lein,
        zu    | ru -- hen in meins      | Her -- zens -- schrein,
        dass  | ich nim -- mer ver --   | ges -- se dein.
    }
    \addlyrics {
        \set stanza = "15. "
        Lob,  | Ehr sei Gott im         | höchs -- ten Thron,
        der   | uns schenkt sei -- ned  | eig -- nen Sohn,
        des   | freu -- en sich der     | En -- gel -- schar'
        und   | sin -- gen uns solch    | neu -- es Jahr.
    }



\header {
    title = "Vom Himmel hoch"
    composer = "Martin Luther (1539)"
    poet     = "Martin Luther (1535)"
    tagline  = ""
}



\score {
    {
        \time 2/2
        \tempo 4 = 100

        \partial 4
        \"sopran"
    }

    \layout {}
    \midi   {}
}
