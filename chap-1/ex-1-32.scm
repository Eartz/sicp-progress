(define (prod term a next b)
    (accumulate * 1.0 term a next b))
(define (sum term a next b)
    (accumulate + 0 term a next b))

(define (accumulate combiner null-value term a next until) 
    (define (iter a res) 
      (if (> a until) res 
          (iter (next a) (combiner res (term a))))) 
    (iter a null-value)) 
;(define (teste a) (+ a 3))
;(define (inc a) (+ a 1))
;(prod teste 1 inc 2)