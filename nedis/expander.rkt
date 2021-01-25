#lang br/quicklang

(define-macro (nedis-module-begin PARSE-TREE)
  #'(#%module-begin
     PARSE-TREE 
     ··· 
     (display "hello")
     ))
(provide (rename-out [nedis-module-begin #%module-begin]))
