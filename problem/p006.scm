(define (p6 n)
  (- (* (/ (* (+ 1 n) n) 2) (/ (* (+ 1 n) n) 2)) (/ (* n (+ n 1) (+ n n 1)) 6)))
(p6 100)