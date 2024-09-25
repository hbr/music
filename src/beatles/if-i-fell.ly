\version "2.24.3"
\language "english"

\header {
    title = "If I fell"
    composer = "Lennon/McCartney"
}






%----------------------------------------------------------------------
% Intro
%----------------------------------------------------------------------

"intro: Lyrics" =
    \lyricmode {
        If I | fell in love with you
        would you | pro -- mise to be true

        and | help me | un -- der -- stand

        'cause I've | been in love be -- fore
        and I | know that love is more

        than | just hol -- ding hands
    }

"intro: Chords" = \chordmode {
    r4 | ef1:m |
    d1 |
    df1 | bf1:m |
    ef1:m |
    d1 |
    e1:m | a1 |
}

"intro: If I fell in love" =
    \relative c' {
        ef8 f |
        gf8 af ef f gf4 ef8 f |
        gf8 af d, e gf4.
    }

"intro: and help me" =
    \relative c' {
        d8 | df4  df'2. | c8 bf4 f8 ~ f4
    }

"intro: cause I've been" =
    \"intro: If I fell in love"

"intro: than just" =
    \relative c' {
        d8 | e4 r4  fs8 g4 a8 ~ | a2 r4
    }







%----------------------------------------------------------------------
% Main Part
%----------------------------------------------------------------------


% Verse 1
%----------------------------------------------------------------------

"verse 1" = \lyricmode {
    If I | give my |  heart
    to | you I | must be shure

    from the | ve -- ry | start
    that | you would | love me more

    than | her
}

"chords: If I give my heart ..." = \chordmode {
    d2 e2:m | fs1:m |
    e1:m | a1:7
}


"paul: If I give my heart ..." = \relative c'' {
    b8 cs | d2 e2 | cs2 r4
    b4 | d2 r4 r8 b8 | d4 cs b
}

"john: If I give my heart ..." = \relative c' {
    d8 e | fs2 g2 | a2 r4
    af4  | g2 r4 r8 b8 | d4 cs b
}

"paul: from the very start ..." =
    \"paul: If I give my heart ..."

"john: from the very start ..." =
    \"john: If I give my heart ..."


"chords: than her" = \chordmode {
    d1 | g2:m a2:7
}

"paul: than her" = \relative c'' {
    cs4 | d1 | r2 r4
}

"john: than her" = \relative c'' {
    cs4 | a1 | r2 r4
}







% Verse 2
%----------------------------------------------------------------------

"verse 2" = \lyricmode {
    If I | trust in | you,
    oh | please don't | run and hide,

    if I | love you | too,
    oh | please don't | hurt my pride

    like | her
}


"paul: If I trust in you ..." =
    \"paul: If I give my heart ..."

"john: If I trust in you ..." =
    \"john: If I give my heart ..."

"paul: If I love you too ..." =
    \"paul: If I give my heart ..."

"john: If I love you too ..." =
    \"john: If I give my heart ..."

"chords: than her 2" = \chordmode {
    d1:9
}

"paul: than her 2" = \relative c'' {
    cs4 | e2.
}

"john: than her 2" = \relative c'' {
    cs4 | c2.
}






% Verse 3
%----------------------------------------------------------------------

"verse 3" = \lyricmode {
    So I | hope you | see
    that | I would | love to love you |

    and that | she
    will | cry when | she learn we

    are | two
}

"chords: are two 2" = \chordmode { d1 }

"paul: So I hope you see ..." =
    \"paul: If I give my heart ..."

"paul: you, and that she will cry ..." = \relative c'' {
        cs4 | d2 e2 | cs2 r4
        b4 | d2. r8 b8 | d4 cs b
}

"paul: are two" =
    \"paul: than her 2"

"paul: are two 2" =
    \relative c'' {
        cs4 | d2.
}


"john: So I hope you see ..." =
    \"john: If I give my heart ..."

"john: you, and that she will cry ..." = \relative c' {
    e4 | fs2 g2 | a2 r4
    af4 | g2. r8 b8 | d4 cs b
}

"john: are two" =
    \"john: than her 2"

"john: are two 2" = \relative c'' {
    cs4 | a2.
}




% Bridge
%----------------------------------------------------------------------

bridge = \lyricmode {
    'cause I | coul -- dn't stand the  pain __
    and  I   __  would be | sad if our new | love
    was in | vain
}


"chords: bridge" = \chordmode {
    d1:9 | g1 |
    g1:m | g1:m | d1 |
    a1:7
}

"paul: Bridge" = \relative c'' {
    c8 d | e4 fs g a8 g8 ~  | g2 r4
    d8 d ~  | d2. bf8 c | d4 e fs g | fs2.
    e8 fs | g2.
}

"john: Bridge" = \relative c'' {
    a8 b | c4 d e fs8 b,8 ~ | b2 r4
    b8 bf8 ~ | bf2. g8 a | bf4 c d e | a,2.
    a8 a | a2.
}



% Outro
%----------------------------------------------------------------------

"outro: If I fell in love with you" = \lyricmode {
    If I | fell in love with | you
}

"chords: Outro" = \chordmode {
    g1:m | d2.
}


"john: Outro" = \relative c' {
    e8 fs | g4 a bf cs | a2.
}


"paul: Outro" = \relative c'' {
    g8 a | bf4 c d e | fs2.
}




\score {
    <<
        \new ChordNames {
            \set Staff.midiMaximumVolume = #0.0
            \"intro: Chords"

            % Verse 1
            \"chords: If I give my heart ..."
            \"chords: If I give my heart ..."
            \"chords: than her"

            % Verse 2
            \"chords: If I give my heart ..."
            \"chords: If I give my heart ..."
            \"chords: than her 2"

            % Bridge 1
            \"chords: bridge"

            % Verse 3 a
            \"chords: If I give my heart ..."
            \"chords: If I give my heart ..."
            \"chords: than her 2"

            % Bridge 2
            \"chords: bridge"

            % Verse 3 a
            \"chords: If I give my heart ..."
            \"chords: If I give my heart ..."
            \"chords: are two 2"
            \"chords: Outro"
        }

        \new Staff {
            \tempo 4 = 100

            % Intro
            <<
                \new Voice = "intro" {
                    \key bf \minor
                    \partial 4

                    \sectionLabel "Intro"
                    \"intro: If I fell in love"
                    \"intro: and help me"
                    \"intro: cause I've been"
                    \key d \major
                    \"intro: than just"
                }

                \new Lyrics \lyricsto "intro"
                    \"intro: Lyrics"
            >>

            % Rest
            <<
                \new Voice = "paul" {
                    \voiceOne

                    % Verse 1
                    \sectionLabel "Verse 1"
                    \"paul: If I give my heart ..."
                    \"paul: from the very start ..."
                    \"paul: than her"

                    % Verse 2
                    \sectionLabel "Verse 2"
                    \"paul: If I trust in you ..."
                    \"paul: If I love you too ..."
                    \"paul: than her 2"

                    % Bridge 1
                    \sectionLabel "Bridge 1"
                    \"paul: Bridge"

                    % Verse 3 a
                    \sectionLabel "Verse 3 a"
                    \"paul: So I hope you see ..."
                    \"paul: you, and that she will cry ..."
                    \"paul: are two"

                    % Bridge 2
                    \sectionLabel "Bridge 2"
                    \"paul: Bridge"

                    % Verse 3 b
                    \sectionLabel "Verse 3 b"
                    \"paul: So I hope you see ..."
                    \"paul: you, and that she will cry ..."
                    \"paul: are two 2"

                    % Outro
                    \sectionLabel "Outro"
                    \"paul: Outro"
                }

                \new Voice = "john" {
                    \voiceTwo

                    % Verse 1
                    \"john: If I give my heart ..."
                    \"john: from the very start ..."
                    \"john: than her"

                    % Verse 2
                    \"john: If I trust in you ..."
                    \"john: If I love you too ..."
                    \"john: are two"

                    % Bridge 1
                    \"john: Bridge"

                    % Verse 3
                    \"john: So I hope you see ..."
                    \"john: you, and that she will cry ..."
                    \"john: are two"

                    % Bridge 2
                    \"john: Bridge"

                    % Verse 3 second
                    \"john: So I hope you see ..."
                    \"john: you, and that she will cry ..."
                    \"john: are two 2"

                    % Outro
                    \"john: Outro"
                }

                \new Lyrics \lyricsto "paul"
                    {
                        \"verse 1"
                        \"verse 2"
                        \bridge
                        \"verse 3"
                        \bridge
                        \"verse 3"
                        \"outro: If I fell in love with you"
                    }
            >>
        }
    >>

    \layout {}
    \midi {}
}
