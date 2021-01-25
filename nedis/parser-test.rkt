#lang br
; see https://beautifulracket.com/bf/the-tokenizer-and-reader.html
; see https://beautifulracket.com/basic/the-parser.html
(require nedis/parser nedis/tokenizer brag/support)


(define str1 #<<!STOP
SET myname bun
GET myname
DEL myname
!STOP
)

(define str2 #<<!STOP
SET myname "bun bing"
GET myname
DEL myname
!STOP
)

(define str3 #<<!STOP
set "my name" 'bun bing'
get 'my name'
del "my name"
!STOP
)

(parse-to-datum (apply-tokenizer make-tokenizer str1))
(parse-to-datum (apply-tokenizer make-tokenizer str2))
(parse-to-datum (apply-tokenizer make-tokenizer str3))
