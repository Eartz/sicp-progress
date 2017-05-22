(define (prod term a next b)
    (accumulate * 1.0 term a next b))
(define (sum term a next b)
    (accumulate + 0 term a next b))

(define (accumulate combiner null-value term a next until) 
    (define (iter a res) 
      (if (> a until) res 
          (iter (next a) (combiner res (term a))))) 
    (iter a null-value))

(define (filtered-accumulate combiner null-value term a next until filter)
    (define (filter-combiner res x)
            (cond   ((filter x) (combiner res (term x)))
                    (else (combiner res null-value))
                ))
    (define (iter a res) 
      (if (> a until) res 
          (iter (next a) (filter-combiner res a)))) 
    (iter a null-value))

(define (smallest-div n) 
    (define (divides? a b) 
        (= 0 (remainder b a))) 
(define (find-div n test) 
    (cond ((> (sq test) n) n) ((divides? test n) test) 
            (else (find-div n (+ test 1))))) 
(find-div n 2)) 

(define (prime? n) 
    (if (= n 1) false (= n (smallest-div n)))) 
(define (sq x)
    (* x x))
(define (inc a)
    (+ a 1))

(define (testsum)
    (filtered-accumulate + 0 sq 1 inc 5 prime?))