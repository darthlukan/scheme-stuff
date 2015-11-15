#!/usr/bin/guile \
-e main -s
!#


; cp file filecopy
(define copy
  (lambda (oldfd newfd)
    (copy-file oldfd newfd)))

; ln -s orig link
(define symbolic-link
  (lambda (oldpath newpath)
    (symlink oldpath newpath)))


; mkdir foo
(define make-dir
  (lambda (dirname)
    (mkdir dirname)))

; rmdir foo
; As with the coreutil, the dir must be empty
(define remove-dir
  (lambda (dirname)
    (rmdir dirname)))


; if [ -f $FILE ]; then; echo "True"; fi
; This function actually returns #t or #f
(define fexists?
  (lambda (filename)
    (file-exists? filename)))


(define (main args)
  (map
    (lambda (arg)
      (display (fexists? arg))
      (newline))
    (cdr args)))
