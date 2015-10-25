#!/usr/bin/guile -s
!#

(begin
  (define add2
    (lambda (x) 
      (display (+ x 2))
      (newline)))
  (add2 10)) ; => 12
