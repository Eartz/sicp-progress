(define (square n) (* n n))
(define (sum-sq-largest a b c )
    (cond ( (and (> a b) (> b c)) (+ (square a) (square b)) )
          ( (and (> b a) (> c a)) (+ (square b) (square c)) )
          ( (and (> c b) (> a b)) (+ (square c) (square a))))
)