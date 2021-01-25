# nedis

This is just a tiny experiment with Racket. The idea is to implement a language that accepts some Redis-like commands:

```text
#lang nedis
SET myname bun
GET myname
DEL myname
```

## running tests

You can test the lexer!

```sh
cd nedis
racket lexer-test.rkt
```

You can also "test" the parser:

```sh
racket parser-test.rkt
```

## formatting

We found that one way to nicely format our files was
by using [vim-racket](https://github.com/wlangstroth/vim-racket). We installed [pathogen.vim](https://github.com/tpope/vim-pathogen) and ran `:wq` on each file that we wanted to format.
