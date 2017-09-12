#lang racket

(define (tail-list lst n)
  (if (null? lst)
      '()
      (if (= n 0)
          lst
          (tail-list (cdr lst) (- n 1)))))

(define (prefix-list lst n)
  (if (null? lst)
      '()
      (if (= n 0)
          '()
          (cons (car lst) (prefix-list (cdr lst) (- n 1))))))
          