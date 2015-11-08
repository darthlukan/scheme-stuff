#!/usr/bin/guile -s
!#

(define key 1)
(case key
  ((0) (display "ZERO"))
  ((1) (display "ONE")))

; => "ONE"
