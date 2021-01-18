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

(check-equal?
 (lex "del")
 (list (srcloc-token (token "DEL" "del")
                     (srcloc 'string 1 0 1 3))))
(check-equal?
 (lex "DEL")
 (list (srcloc-token (token "DEL" "DEL")
                     (srcloc 'string 1 0 1 3))))

(check-equal?
 (lex "set")
 (list (srcloc-token (token "SET" "set")
                     (srcloc 'string 1 0 1 3))))
(check-equal?
 (lex "SET")
 (list (srcloc-token (token "SET" "SET")
                     (srcloc 'string 1 0 1 3))))

(check-equal?
 (lex "sEt")
 (list (srcloc-token (token "SET" "sEt")
                     (srcloc 'string 1 0 1 3))))

(check-equal?
    (lex "this")
(list (srcloc-token (token "STRING" "this") (srcloc 'string 1 0 1 4)))
    )
