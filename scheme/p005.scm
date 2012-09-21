(define p5
  (let loop ((x 2500) (a 2))
    (if (= a 21)
        x
        (if (= 0 (modulo x a))
            (loop x (+ 1 a))
            (loop (+ x 1) 2)))))
p5
        