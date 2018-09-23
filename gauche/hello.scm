;; String literal
(print "hello, world") ; Hello, world

;; Starndard calculation
(print (/ (* (+ 1 2)
             (- 10 8))
          2)) ; 3

;; Simple global argument definition (x <- 3)
(define x 3)
(print x) ; 3

;; List with single element
(print 'x) ; x

;; Simple list definition literal
(define lis1 '(1 2 3))
(print lis1) ; (1 2 3)

;; Car & Cdr
(print (car lis1)) ; 1
(print (cdr lis1)) ; (2 3)
(print (cdr (cdr lis1))) ; (3)

;; List with dot annotation
(define lis2 '((1 . 2) . 3))
(print lis2) ; ((1 . 2) . 3)

(print (car lis2)) ; (1 . 2)
(print (car (car lis2))) ; 1
(print (cdr (car lis2))) ; 2
(print (cdr lis2)) ; 3

;; Global procedure definition
(define (square x) (* x x))
(print (square 19)) ; 361

;; Global prosedure definition with some other procedures
(define (my-sqrt x)
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
(print (my-sqrt 5)) ; 2.2360688956433634
