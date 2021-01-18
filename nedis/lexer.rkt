#lang br
; see https://beautifulracket.com/basic/the-lexer.html
; see https://github.com/racket/syntax-color/blob/master/syntax-color-lib/syntax-color/racket-lexer.rkt
(require brag/support)
(define-lex-abbrevs 
    [d (char-set "dD")]
    [e (char-set "eE")]
    [g (char-set "gG")]
    [l (char-set "lL")]
    [s (char-set "sS")]
    [t (char-set "tT")]
    
    [get-cmd (:: g e t )]
    [set-cmd (:: s e t )]
    [del-cmd (:: d e l )]
    )

(define nedis-lexer
    (lexer-srcloc 
        ["\n"       (token 'NEWLINE lexeme)]
        [whitespace (token lexeme #:skip? #t)]
        [get-cmd    (token 'GET lexeme)]
        [set-cmd    (token 'SET lexeme)]
        [del-cmd    (token 'DEL lexeme)]
        [(:or (from/to "\"" "\"") (from/to "'" "'"))
                    (token 'STRING
                        (substring lexeme
                            1 (sub1 (string-length lexeme))))]
        [any-string (token 'STRING lexeme)]
    ))

(provide nedis-lexer)
