(load "util.ss")
(define (p7 i n)
  (if (= n 0)
      i
      (if (prime? (+ 1 i))
          (p7 (+ 1 i) (- n 1))
          (p7 (+ 1 i) n))))
(p7 1 10001)
          
      