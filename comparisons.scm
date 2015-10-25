#!/usr/bin/guile -s
!#

(begin
  (char? #\a)         ; => #t, predicates like type checkers
  (char? "a")         ; => #f, string is not char, but is a sequence of char
  (char=? #\a #\a)    ; => #t, case sensitive
  (char-ci=? #\a #\A) ; => #t, case insensitive
  (= 1 2)             ; => #f
  (<= 1 2)            ; => #t
  (>= 1 2)            ; => #f
  (newline))
