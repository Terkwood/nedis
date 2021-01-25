#lang br/quicklang

(define-macro 
  (nedis-module-begin PARSE-TREE)
  #'(#%module-begin PARSE-TREE ))
(provide (rename-out [nedis-module-begin #%module-begin]))

(define program 
    (lambda (arg . rest) 
    (void)))

(define (instruction arg) (void))

(define state (make-hash))

(define (set token-type key val) (hash-set! state key val))
(define (get token-type key)
    (begin 
        (display (hash-ref state key))
        (display "\n")))
(define (del token-type key) (hash-remove! state key))

(provide program instruction set get del)