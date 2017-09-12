#lang racket
(define (islist l)
  (or (null? l) (and (pair? l) (islist (cdr l)))))

; We define a function islist that takes a single argument.
; and/or works as we know
; (null? l) checks if the list is null,it is this if we are at the end of the list
; (pair? l) checks if there are two elements left. If this isn't the case, it is a improper list.
; We then use recursion on the tail of the list, and try again.