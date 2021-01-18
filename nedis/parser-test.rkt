#lang br
; see https://beautifulracket.com/bf/the-tokenizer-and-reader.html
; see https://beautifulracket.com/basic/the-parser.html
(require nedis/parser nedis/tokenizer brag/support)


(define str #<<!STOP
SET myname bun
GET myname
DEL myname
!STOP
)

(parse-to-datum (apply-tokenizer make-tokenizer str))
