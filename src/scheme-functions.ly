#(define
    (voice-volume-detailed voice mute low high select)
    ( let
       ((sopranoVolume
            (lambda (x)
              (cond ((= x -1) mute)
                    ((<= x 0) high)
                    ((= x  1) high)
                    (#t low))))
        (altoVolume
            (lambda (x)
              (cond ((= x -2) mute)
                    ((<= x 0) high)
                    ((= x  2) high)
                    (#t low))))
        (tenorVolume
            (lambda (x)
              (cond ((= x -3) mute)
                    ((<= x 0) high)
                    ((= x  3) high)
                    (#t low))))
        (bassVolume
            (lambda (x)
              (cond ((= x -4) mute)
                    ((<= x 0) high)
                    ((= x  4) high)
                    (#t low))))
       )
       (cond ((string=? voice "soprano") (sopranoVolume select))
             ((string=? voice "alto")    (altoVolume select))
             ((string=? voice "tenor")   (tenorVolume select))
             ((string=? voice "bass")    (bassVolume select))
       )
    )
)

#(define
    (voice-volume voice select)
    (voice-volume-detailed voice 0.0 0.5 1.0 select)
)
