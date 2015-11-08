#!/usr/bin/guile \
-e main -s
!#

(use-modules (ice-9 rw))


(define (main args)
  (map
    (lambda (arg)
      (define in-file (open-file arg "r"))
      
      (map
        (lambda (line)
          (if (eof-object? line)
               (display line)
               (newline))) (list in-file))

      (close-input-port in-file))
    (cdr args)))
