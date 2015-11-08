#!/usr/bin/guile -s
!#


(define len
  (lambda (arg)
    ; length of a list and only a list
    (length arg)))

(display (len (list 1 2 3 4)))
(newline)
; (display (len "1 2 3 4")) ; This errors out: "Wrong type argument ... "
; (newline)
