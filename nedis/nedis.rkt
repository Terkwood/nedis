#lang racket/base

(provide (except-out (all-from-out racket/base)
                        #%module-begin)
   (rename-out [module-begin #%module-begin]))
