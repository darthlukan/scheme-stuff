#!/usr/bin/guile -s
!#

;; Loops don't actually exist, but recursion does!
;; Calc factorial example
(define factorial                               ;function name
  (lambda (n)                                   ;initial closure
    (define internal                            ;internal var
      (lambda (x current)                       ;function that actually performs work
        (if (= x 0)                             ;base case
          current                               ;return for base case
          (internal (- x 1) (* x current)))))   ;else recurse
    (internal n 1)))                            ;initial call

(display (factorial 5))                         ; => 120
(newline)


;; "for element in list"
(define exists-in?
  (lambda (i l)
    (cond ((null? l) #f)
          ((equal? i (car l)) #t)
          (else (exists-in? i (cdr l))))))

(define z (list "one" "two" "three"))

(display (exists-in? "four" z))                 ; => #f
(newline)
(display (exists-in? "two" z))                  ; => #t
(newline)
