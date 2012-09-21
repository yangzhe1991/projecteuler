(define (p2 a b sum)
  (if (> a 4000000) sum
  (if (= (modulo a 2) 0)(p2 (+ a b) a (+ sum a))
      (p2 (+ a b) a sum))))
(p2 2 1 0)
