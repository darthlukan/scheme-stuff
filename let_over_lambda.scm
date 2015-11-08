#!/usr/bin/guile \
-e main -s
!#

;; Number -> Number
;; return Number y + 5
;; Uses "let over lambda" or lexical closure.
(define add5 
          (let ((x 5)) 
            (lambda (y)
              (+ x y))))

(define (main args)
  ; Functional map for iterating over args
  ; map takes a function as a handler and an iterable (cdr args)
  ; where args is a list of args
  (map 
    (lambda (arg)
      ; the shell passes args as strings, convert to number
      ; NOTE: This will fail if an arg cannot be parsed as a number!
      (display (add5 (string->number arg))) (display " "))
    (cdr args))
  (newline))
