(define (average x y) (/ (+ x y) 2))
(define (cube x) (* x x x))
(define (square x) (* x x))

(define (improve y x) 
    (/  (+ (/ x (square y)) (* 2 y))
        3)
    )

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))
(define (cubert x) (cube-iter 1.0 x))