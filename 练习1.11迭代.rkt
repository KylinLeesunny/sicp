#lang sicp
(define (f n)
  (iter-f 2 1 0 1 n))
(define (iter-f a b c i n)
  (if (= i n)
      a
      (iter-f (+ a
                 (* 2 b)
                 (* 3 c))
              a
              b
              (+ 1 i)
              n)))
(f 1)
(f 3)
(f 4)