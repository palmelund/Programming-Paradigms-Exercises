#lang racket

(define (every-second-element l)
  (if (null? (car l)) '() ( cons (car l) (if (or (null? (cdr l)) (null? (cddr l))) '()  (every-second-element (cddr l))))))