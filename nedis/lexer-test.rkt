#lang br
(require "lexer.rkt" brag/support rackunit)

(define (lex str)
  (apply-port-proc basic-lexer str))

(define (lex str)
  (apply-port-proc basic-lexer str))

(check-equal? (lex "") empty)
(error "todo")