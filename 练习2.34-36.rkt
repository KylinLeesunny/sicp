#lang sicp
(define (horner x sequence)
  (accumulate (lambda (p q) (+ p (* x q)))
              0
              sequence))
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence) (accumulate op initial (cdr sequence)))))
(newline)
(display "练习2.34:")
(horner 2 '(1 3 0 5 0 1))
(define (count-leaves tree)
  (accumulate + 0 (map
                   (lambda (x)
                     (if (not (pair? x))
                         1
                         (count-leaves x)))
                   tree)))
(newline)
(display "练习2.35:")
(count-leaves '((1 2) 3 ((4 5 (6 (7 8 (9)))) 10) 11))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))
(display "练习2.36:")
(display (accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12))))