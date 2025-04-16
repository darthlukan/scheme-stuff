#!/usr/bin/guile -s
!#

(begin
  (define x 10)

  (define (doubler i)
    (if (number? i)             ; condition
        (* x 2)                 ; then
        #f))                    ; else is optional

  (display (doubler x))         ; => 20
  (newline)
  (display (doubler "hello")))  ; => #f
