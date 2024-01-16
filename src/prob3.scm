(import (streams primitive))
(import (streams math))
(import (math number-theory))

(define (div? x y)
  (= 0 (modulo x y)))

(define (prime-factor num prime-stream)
  (let ((x (/ num (stream-car prime-stream))))
       (if (prime? num) num 
           (if (not (integer? x))
               (prime-factor num (stream-cdr prime-stream))
               (prime-factor x prime-numbers-stream)
               ))))

(display (prime-factor 600851475143 prime-numbers-stream ))
(display "\n")
