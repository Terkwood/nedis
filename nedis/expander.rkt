#lang br/quicklang

(define-macro 
  (nedis-module-begin PARSE-TREE)
  #'(#%module-begin PARSE-TREE ))
(provide (rename-out [nedis-module-begin #%module-begin]))

(define program (lambda (arg . rest) (display (list arg))))

(define (instruction arg) (display arg))

(define (set token-type key val) (display (list token-type key val)))
(define (get token-type key) (display (list token-type key)))
(define (del token-type key) (display (list token-type key)))

(provide program instruction set get del)