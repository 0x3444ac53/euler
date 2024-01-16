;; By considering the terms in the Fibonacci
;; sequence whose values do not exceed four
;; million, find the sum of the even-valued terms.
(import srfi-1)

(define (fib-to-limit limit current)
  (if (>= (car (reverse current)) limit)
      (cdr (reverse current))
      (fib-to-limit limit
                    (reverse
                     (cons (+ (car (reverse current))
                              (car (cdr (reverse current))))
                           (reverse current))))))


(define nums (fib-to-limit 4000000 '(0 1)))
(display nums)
(display "\n")
(display (filter even? nums))
(display "\n")
(display (foldl + 0 (filter even? nums)))
(display "\n")
