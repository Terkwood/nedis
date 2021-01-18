#lang br
; see https://beautifulracket.com/basic/the-lexer.html
; see https://github.com/racket/syntax-color/blob/master/syntax-color-lib/syntax-color/racket-lexer.rkt
; see http://matt.might.net/articles/lexers-in-racket/
; see https://gist.github.com/danking/1068185/b93e3bfc77ccfe58a35179c8502d834c0016adcf
; see https://stackoverflow.com/questions/40194249/in-racket-how-do-i-set-a-lexer-to-recognize-an-identifier-with-a-combination-of
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
        [(repetition 1 +inf.0 (char-complement whitespace)) (token 'STRING lexeme)]
        [(:or (from/to "\"" "\"") (from/to "'" "'"))
                    (token 'STRING
                        (substring lexeme
                            1 (sub1 (string-length lexeme))))]
    ))

(provide nedis-lexer)
