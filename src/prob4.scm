(import srfi-1)
(import streams)
(import (streams utils))

(define (palindrome? x)
  (string=? (number->string x)
  (list->string (reverse (string->list (number->string x))))))

(define (cprod lst1 lst2)
  (if (or (null? lst1) (null? lst2)) '()
      (append (apply list (map (lambda (x) (list (car lst1) x)) lst2))
            (cprod (cdr lst1) lst2))))


(define nums (reverse (stream->list (stream-range 100 1000))))

(display (apply max (filter palindrome?
 (map (lambda (x) (apply * x)) (cprod nums nums)))))
(display "\n")
