(load "util.ss")
(define (p3 x)
  (let loop ((i 2) (ans 0))
    (if (> i (sqrt x))
        ans
        (if (and (= 0 (modulo x i))(prime? i))
            (loop (+ i 1) i)
            (loop (+ i 1) ans)))))
(p3 600851475143)