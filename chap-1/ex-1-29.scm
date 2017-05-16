; 1.30 as well
(define (cube x) (* x x x))

(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))))
    (iter a 0))


(define (integral f a b n)
    (define (getn a) (+ a 1))
    (define h (/ (- b a) n))
    (define (iter k)
        ( * (getnum k) (f (+ a (* k h)))))
    (define (getnum a)
        (cond ((= 0 a) 0)
              ((odd? a) 4)
              (else 2)))
    (* (/ h 3) (sum iter 0 getn n))
    )

    ;(integral cube 0 1 100)