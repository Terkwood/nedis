#lang br
(require "lexer.rkt" brag/support)

(define (make-tokenizer ip)
  (port-count-lines! ip)
  (define (next-token) (nedis-lexer ip))
  next-token)

(provide make-tokenizer)

