#lang racket

; square

(define (square x) (* x x))

(square 10)

; average

(define (average x y)
  (/ (+ x y) 2))

(average 12 14)

; square-root

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt 2)
(sqrt 5)
