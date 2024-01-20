(import (streams derived))

(define (sos n)
  (/ (*
      (+ 1 n)
      (+ 1 (* 2 n))
      n) 6))



(display (-
          (expt (foldl + 0 (stream->list (stream-range 1 101))) 2)
          (sos 100)))
