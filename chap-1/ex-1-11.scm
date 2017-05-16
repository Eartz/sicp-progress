(define (fr n)
    (cond   ((< n 3) 
                n)
            (else
                (+  (fr (- n 1))
                    (* 2 (fr (- n 2)))
                    (* 3 (fr (- n 3)))
                    ))
        ))
; f-iter ????
(define (fiter n)
    (define (f-iter fi-1 fi-2 fi-3 counter)
        (define fi  (+ fi-1
                        (* 2 fi-2)
                        (* 3 fi-3)))
    (if (= counter n)
            fi
            (f-iter fi fi-1 fi-2 (+ counter 1))))
    (if (< n 3)
        n
        (f-iter 2 1 0 3)))