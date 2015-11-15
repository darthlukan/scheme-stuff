#!/usr/bin/guile \
-e main -s
!#

; String -> UserObject
;                   username     UID GID $HOME            $SHELL
; "darthlukan" -> #(darthlukan x 100 100 /home/darthlukan /bin/zsh)
(define getuser
  (lambda (username)
    (getpwnam username)))


(define user)
(define userinfo
  (lambda (username)
    (set! user (getpw username))
    ; -> darthlukan
    (display (passwd:name user))
    (newline)
    ; -> 100
    (display (passwd:uid user))
    (newline)
    ; -> 100
    (display (passwd:gid user))
    (newline)
    ; -> /home/darthlukan
    (display (passwd:dir user))
    (newline)
    ; -> /bin/zsh
    (display (passwd:shell user))
    (newline)))


(define (main args)
  (map 
    (lambda (arg)
      (display (getuser arg))
      (newline)
      (userinfo arg)
      (newline))
    (cdr args)))
