#lang br
(require "parser.rkt")
(parse-to-datum #<<delim
SET myname bun
GET myname
DEL myname
delim
)
(print "ok")