#lang br
(require "lexer.rkt" brag/support rackunit)

(define (lex str)
  (apply-port-proc nedis-lexer str))

(check-equal? (lex "") empty)
(check-equal?
 (lex " ")
 (list (srcloc-token (token " " #:skip? #t)
                     (srcloc 'string 1 0 1 1))))
(check-equal?
 (lex "get")
 (list (srcloc-token (token "GET" "get")
                     (srcloc 'string 1 0 1 3))))
(check-equal?
 (lex "GET")
 (list (srcloc-token (token "GET" "GET")
                     (srcloc 'string 1 0 1 3))))