;expand T twice, factor by a and b : 
;find p' and q' by comparing b <- bp + aq 
;with the result of T applied twice : b" = b(q^2 + p^2) + a(2qp + q^2)
(define (fib n)
    (fib-iter 1 0 0 1 n))
(define (square x) (* x x))
(define (fib-iter a b p q count)
    (cond   ((= count 0) b)
            ((even? count)
                (fib-iter   a
                            b
                            (+ (square q) (square p))
                            (+ (* 2 q p) (square q))
                            (/ count 2)))
            (else (fib-iter (+ (* b q)  (* a q) (* a p))
                            (+ (* b p) (* a q))
                            p
                            q
                            (- count 1)))
        ))