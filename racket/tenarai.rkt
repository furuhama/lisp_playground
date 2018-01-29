#lang racket

(define atom? (lambda (x)
  (and (not (pair? x))
       (not (null? x)))))

(atom? (quote 0)) ; #t

(quote atom) ; 'atom

(quote (atom turkey or)) ; '(atom turkey or)

(quote (car (a b c))) ; '(car (a b c))

(car '(a b c)) ; 'a  ;; correct usage for 'car' method

