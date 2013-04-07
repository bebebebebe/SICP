#lang planet neil/sicp

(define (make-monitored f count)
  (lambda (n)
    (cond ((eq? n 'how-many-calls?) count)
          ((eq? n 'reset-count)
          (begin (set! count 0)
                count))
          (else (begin (set! count (+ count 1))
                             (f n))))))
(define s (make-monitored sqrt 0))

