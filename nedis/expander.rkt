#lang br/quicklang

(define-macro (nedis-module-begin PARSE-TREE)
  #'(#%module-begin
     PARSE-TREE 
     (display "hello")
     ))
(provide (rename-out [nedis-module-begin #%module-begin]))

(define (program args) (display args))

(provide program)

(define (instruction token-type arg) (display token-type arg))

(provide instruction)

(define (set token-type key val) (display token-type key val))
(define (get token-type key) (display token-type key))
(define (del token-type key) (display token-type key))

(provide set get del)