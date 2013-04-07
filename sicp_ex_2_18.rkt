#lang planet neil/sicp
(#%require r5rs/init)

; return reverse (nonempty) list
(define (revers lst)
  (if (eq? (cdr lst) '())
      lst
        (append (revers (cdr lst)) (cons (car lst) '()))))
        
      

; return reversed (nonempty) list, using helper functions below
(define (rev lst)
  (if (eq? (cdr lst) '())
      list
  (cons (car (last-pair lst)) (rev (remlast lst)))))

; Ex 2.17
(define (last-pair list)
  (if (eq? (cdr list) '())
      list
      (last-pair (cdr list))))

(define (remlast lst)
  (if (eq? (cdr lst) '())
      '()
      (cons (car lst) (remlast (cdr lst)))))


      
      
      
      