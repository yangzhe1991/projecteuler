(define (p1 x) 
  (if (>= x 1)(cond ((= 0 (modulo x 3))(+ x (p1 (- x 1))))
                    ((= 0 (modulo x 5))(+ x (p1 (- x 1))))
               (else (p1 (- x 1))))
      0))
(p1 999)