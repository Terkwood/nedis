#lang br
(require "lexer.rkt" brag/support rackunit)

(define (lex str)
  (apply-port-proc nedis-lexer str))

(check-equal? (lex "") empty)
