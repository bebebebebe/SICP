#lang planet neil/sicp

(define (make-accumulator start)
  (lambda (supplement)
    (set! start (+ start supplement))
    start))

; in repl: (define A (make-accumulator 5))