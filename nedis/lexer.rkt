#lang br
; e.g. https://beautifulracket.com/basic/the-lexer.html
(require brag/support)
(define nedis-lexer
    (lexer-srcloc 
        ["\n" (token 'NEWLINE lexeme)]))
(provide nedis-lexer)