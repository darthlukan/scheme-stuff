#!/usr/bin/guile -s
!#

(begin
  (define add2
    (lambda (x) 
      (+ x 2)))

  (display (add2 10)) ;=> 12
  (newline))
