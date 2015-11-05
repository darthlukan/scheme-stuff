#!/usr/bin/guile \
-e main -s
!#

; The following code works because we used the meta switch
; and told guile to invoke "main" upon execution.

; main is the most basic of echos
(define (main args)
  (map (lambda (arg) (display arg) (display " "))
       (cdr args))
  (newline))
