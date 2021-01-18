#lang br
; e.g. https://beautifulracket.com/bf/the-tokenizer-and-reader.html
(require brag/support)
(require "parser.rkt")

(define r (parse-to-datum #<<delim
SET myname bun
GET myname
DEL myname
delim
))
(display r)