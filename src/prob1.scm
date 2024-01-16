;;If we list all the natural numbers below 10 that are
;;multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of
;;these multiples is 23
;;Find the sum of all the multiples of 3 or 5 below 1000

(define (member? look-for nums)
  (not (equal? #f (member look-for nums))))

(define (div? num divisors)
  (member? 0 (map (lambda (x) (modulo num x)) divisors)))

(define (find-multiples limit current divisors)
  (if (>= current limit)
      '()
      (cons
       (if (div? current divisors) current 0)
        (find-multiples limit (+ 1 current) divisors))))

(display
 (foldl + 0 (find-multiples 1000 0 '(5 3))))
