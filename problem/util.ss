(define prime?
  (lambda (x)
    (cond
      ((< x 2) #f)
      ((= x 2) #t)
      (else
       (let loop ((i 2) (l (truncate (sqrt x))))
         (cond
           ((= (modulo x i) 0) #f)
           ((> i l) #t)
           (else (loop (+ i 1) l))))))))