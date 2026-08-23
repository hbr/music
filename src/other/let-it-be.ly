\language "english"
\version  "2.24.4"


%{

    8 Bars Klaviervorspiel

    1. When I find myself in times of trouble,
    Mother Mary comes to me,
    speaking words of wisdom,
    let it be.

    And in my hour of darkness,
    she is standing right in front of me,
    speaking words of wisdom,
    let it be.


    Let it be, let it be,
    let it be, let it be,
    whisper words of wisdom,
    let it be.



    2. And when the broken hearted people
    living in the world agree,
    there will be an answer,
    let it be.

    But though they may be parted,
    there is still a chance that they will see,
    there will be an answer,
    let it be.


    Let it be, let it be,                       -- mit Drums und Bass
    let it be, let it be,
    there will be an answer,
    let it be.

    Let it be, let it be,                       -- full power
    let it be, let it be,
    whisper words of wisdom,
    let it be.


    2x Zwischenspiel, das 2. Mal mit Orgel

    Gitarrensolo 2 Strophen

    Let it be, let it be,
    let it be, let it be,
    whisper words of wisdom,
    let it be.


    3. And when the night is cloudy            -- mezzo piano
    there is still a light that shines on me,
    shine until tomorrow,
    let it be.

    I wake up to the sound of music
    mother Mary comes to me,
    speaking words of wisdom,
    let it be.


    Let it be, let it be,                       -- 2x
    let it be, let it be,
    there will be an answer,
    let it be.

    Let it be, let it be,
    let it be, let it be,
    whisper words of wisdom,
    let it be.

    Zwischenspiel als Abschluss.
%}



% Chords
%------------------------------------------------------------

%{
    Verse
    C2  G2 |
    Am2 F2 |
    C2  G2 |
    F2  C2


    Refrain
    Am2 G2 |
    F2  C2 |
    C2  G2 |
    F2  C2 |
%}





% Bass line
%------------------------------------------------------------

"bass verse" = \relative c {
    c8 c4 c16 fs, (g8) g4 g8 |
    a4 g          f2 |
    c'8 c4 c16 fs, (g8) g4 g8 |
    % f'4 e8 d8     c2  % simple
    % <f' a>4   <e g>8  <d f>8   <c e>2   % like piano
    <a f'>4   <g e'>8 <f d'>8  <e c'>2  % inverted
}


"bass refrain" = \relative a, {
    a4 a g g |
    f4 f c' c |
    c4 c b  b |
    a4 g8 f8 e2 |
}




% Backing vocals refrain
%------------------------------------------------------------

"backing vocal low" = \relative e' {
    e4. f16 e d2 |
    c2 c |
    c2 b |
    a2 g |
}

"backing vocal high" = \relative c'' {
    c2 b |
    a2 g |
    g2 f |
    f2 e |
}

"backing vocal organ" = \relative e'' {
    e2  e |
    c2  c |
    c2  b |
    a2  g |
}



% Zwischenspiel
%------------------------------------------------------------



"riff high" = \relative f'' {
    f4 e8 d c4 bf8 a |
    g4 f4 c2
}


"riff low" = \relative a' {
    a4 g8 f e4 d8 c |
    b4 a4 g2
}



% Lead vocal
%------------------------------------------------------------

"lead vocal verse" = \relative g' {
    g16 g |
    g8 g16 a ~ 8 e8 g8. g16 c d8. |
    d16 e   e4   d8   d    c16 c8. r8 |

    e16 e8.  f8  e16 e ~ e16 d8. r16 e16 d d ~ |
    16 (c8.) r4 r4 r8.

    fs,16 | g16 g8. a16 c8 a16 g8  c16 d d e



}

"lead vocal text" = \lyricmode {
    When I | find my -- self in times of trou -- ble |
    mo -- ther Ma -- ry comes to me |
    spea -- king words of wis -- dom
    let it be

    and | in my hour of dark -- ness she is stan -- ding
}







% Solo
%------------------------------------------------------------


solo = \relative g' {
    \acciaccatura <g c>16^"L1" <a c>8
    <g c>16 e16 (d8) |
    c4

    \acciaccatura d16^"L2" e16 g g e g4 ~ 16

    g16^"L3" (a) c |
    \acciaccatura d16^"bend" e4 ~ 16 e (d)  c ~ 4 ~ 16 (d8.) |

    r8
    \acciaccatura d16^"L4,5"  e16 c' e, (d) c (d)
    \acciaccatura d16^"bend" e16 a8 e16 (d) c8. |

    a16^"L6" (g) a (g)   e (d) c (d)   c4

    r16 g'16^"L7" (a) c | c8 a16 c
    \acciaccatura d16 e16 g8.
    \acciaccatura d16 e16 g8.
    \acciaccatura d16 e16 g8. |
    a4

    r16 g16^"L8" a c
    \acciaccatura d16^"bend" e8. r16
    e16 (d) c (d) | c4.

    r8^"L9" \acciaccatura g'16^"bend" a8 (g4.) |


    \acciaccatura d16^"bend" e16 d c d
    \acciaccatura d16^"bend" e16 d c d
    c4. r8 |
}




% Scores
%======================================================================

\header {
    title    = "Let it be"
    composer = "Paul McCartney"
    tagline  = ""
}


\book {
    \score {
        \header {piece = "Lead vocal verse"}

        \new Staff {
            \partial 8
            \"lead vocal verse"
        }

        \addlyrics { \"lead vocal text" }
    }



    \score {
        \header {piece = "Backing vocals refrain"}

        \new Staff <<
            \new Voice = "organ" {
                \voiceOne
                \"backing vocal organ"
            }
            \new Voice = "high" {
                \voiceOne
                \"backing vocal high"
            }
            \new Voice = "low" {
                \voiceTwo
                \"backing vocal low"
            }
        >>

    }



    \score {
        \header {piece = "Bass verse"}

        \new Staff {
            \clef bass
            \"bass verse"
        }
    }



    \score {
        \header {piece = "Bass refrain"}

        \new Staff {
            \clef bass
            \"bass refrain"
        }
    }



    \score {
        \header {piece = "Riff"}

        \new Staff <<
            \new Voice {
                \voiceOne
                \"riff high"
            }
            \new Voice {
                \voiceTwo
                \"riff low"
            }
        >>
    }


    \score {
        \header {piece = "Solo"}

        \new Staff {
            \partial 4.
            \solo
        }
    }
}






\book {
    \bookOutputSuffix "text"

    \markup \column \string-lines
        "
        1. When I find myself in times of trouble,
        Mother Mary comes to me,
        speaking words of wisdom,
        let it be.
        .
        And in my hour of darkness,
        she is standing right in front of me,
        speaking words of wisdom,
        .
        .
        Let it be, let it be,
        let it be, let it be,
        whisper words of wisdom,
        let it be
        .
        .
        2. And when the broken hearted people
        living in the world agree,
        there will be an answer,
        let it be.
        .
        But though they may be parted,
        there is still a chance that they will see,
        there will be an answer,
        let it be.
        .
        .
        Let it be, let it be,                       -- mit Drums und Bass
        let it be, let it be,
        there will be an answer,
        let it be.
        .
        Let it be, let it be,                       -- full power
        let it be, let it be,
        whisper words of wisdom,
        let it be.
        .
        .
        2x Zwischenspiel, das 2. Mal mit Orgel
        .
        Gitarrensolo 2 Strophen
        .
        Let it be, let it be,
        let it be, let it be,
        whisper words of wisdom,
        let it be.
        "
}
