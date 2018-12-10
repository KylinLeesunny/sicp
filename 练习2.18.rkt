#lang sicp
(define a
  (list 1 2 3 4))
(define (reverse a)
  (define (swap-iter xa xb)
    (if (null? xa)
        xb
        (swap-iter (cdr xa) (cons (car xa) xb))))
  (let ((b (list )))
    (swap-iter a b)))
(reverse a)
