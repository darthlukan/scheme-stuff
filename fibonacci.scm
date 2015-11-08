#!/usr/bin/guile \
-e main -s
!#

(define fib
  (lambda (n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else
             (+ (fib (- n 1))
                (fib (- n 2)))))))

(define (main args)
  (map
    (lambda (arg)
      (display (fib (string->number arg))) (display " "))
    (cdr args))
  (newline))
