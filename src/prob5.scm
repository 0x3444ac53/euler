(import (math number-theory))

(define (gcd a b)
  (if (= 0 b) a
      (gcd b (modulo a b))))

(define (lcm a b)
  (/
   (abs (* a b))
   (gcd a b)))

(display (foldl lcm 1 '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)))
