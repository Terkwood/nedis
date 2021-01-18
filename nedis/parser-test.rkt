#lang br
(require brag/support)
(require "parser.rkt")

(define r (parse-to-datum #<<delim
SET myname bun
GET myname
DEL myname
delim
))
(display r)