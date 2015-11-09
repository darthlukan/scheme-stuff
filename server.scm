#!/usr/bin/guile \
-e main -s
!#

(use-modules (web server))


(define (hello-handler request requests-body)
  (values '((content-type . (text/plain)))
          "Hello World!"))


(define (main args)
  ;; The simplest of webservers
  (run-server hello-handler))
