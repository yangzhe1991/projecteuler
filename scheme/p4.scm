(define (palin x)
  (let loop ((a x) (b 0))
    (if (= 0 a)
        b
        (loop (floor(/ a 10)) (+ (* 10 b) (modulo a 10))))))
(define p4
  (let loop ((a 100)(b 100)(max 0))
    (if (= a 1000)
        max
        (if (and (= (* a b) (palin(* a b))) (> (* a b) max))
            (if (= b 999)
                (loop (+ a 1) 0 (* a b))
                (loop a (+ b 1) (* a b)))
            (if (= b 999)
                (loop (+ a 1) 0 max)
                (loop a (+ b 1) max))))))
p4
            