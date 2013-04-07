#lang planet neil/sicp
(#%require r5rs/init)

; return list consisting of last element of nonempty list 
(define (last-pair list)
  (if (eq? (cdr list) '())
      list
      (cdr list)))