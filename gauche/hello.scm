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

;; Pair with dot annotation

(define lis2 '((1 . 2) . 3))
(print lis2) ; ((1 . 2) . 3)

(print (car lis2)) ; (1 . 2)
(print (car (car lis2))) ; 1
(print (cdr (car lis2))) ; 2
(print (cdr lis2)) ; 3

;; Pair with `cons` function

(define lis3 (cons 1 2))
(print lis3) ; (1 . 2)

(define lis4 (cons (cons 1 2) 3))
(print lis4) ; ((1 . 2) . 3)

;; Global procedure definition

(define (times x y) (* x y))
(print (times 19 19)) ; 361

;; Global prosedure definition with some other procedures

(define (my-sqrt x)
  (define (square x)
    (* x x))
  (define (average p q)
    (/ (+ p q) 2))
  (define (good-enough? guess target)
    (< (abs (- (square guess) target))
       0.001))
  (define (improve guess target)
    (average guess
             (/ target guess)))
  (define (sqrt-iter guess target)
    (if (good-enough? guess target)
      guess
      (sqrt-iter (improve guess target) target)))
  (sqrt-iter 1.0 x))

(print (my-sqrt 5)) ; 2.2360688956433634
(print (my-sqrt 120)) ; 10.954451151558928
