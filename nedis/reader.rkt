#lang br/quicklang
(require nedis/tokenizer nedis/parser)

(define (read-syntax path port)
  (define parse-tree (parse path (make-tokenizer port)))
  (define module-datum `(module nedis-module nedis/expander
                          ,parse-tree))
  (datum->syntax #f module-datum))
(provide read-syntax)