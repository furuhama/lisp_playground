#!/usr/local/bin/clisp


(print "hello, world")

(format t "hello, world\n")

(setq x 10)
;; set y after eval x
(setq y x)
(print y)
;; set y before eval x
(setq y 'x)
(print y)
