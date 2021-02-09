#lang br
(require "lexer.rkt" brag/support)

(define (make-tokenizer ip [path #f]) ; optional path argument
  (port-count-lines! ip)
  (lexer-file-path path)
  (define (next-token) (nedis-lexer ip))
  next-token)

(provide make-tokenizer)

