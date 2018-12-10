#lang sicp
(define (sin x)
  (if (< (abs x) 0.1)
      x
      (iter-sin x)))
(define (iter-sin x)
  (- (* 3 (sin (/ x 3))) (* 4 (cube (sin (/ x 3))))))
(define (cube x)
  (* x x x))
(sin 12.15)
