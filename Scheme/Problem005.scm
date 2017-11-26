(define (Problem005)
	;; Naive, inefficient solution. Has to process all modulo
	;; operations for a given x value before determining that
	;; it must try a larger x value. Also quite slow.

	(define (isDivisible x range)
		(if (= 0 (foldl + 0 (map (lambda (y) (modulo x y)) range))) 
		x
		(isDivisible (+ x 2) range)))

	;; Works fine but is messy and not a general solution

	(define (isDivisible2 x)
		(cond
			[(not (= 0 (modulo x 20))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 19))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 18))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 17))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 16))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 15))) (isDivisible2 (+ 2 x))]
	        [(not (= 0 (modulo x 14))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 13))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 12))) (isDivisible2 (+ 2 x))]
			[(not (= 0 (modulo x 11))) (isDivisible2 (+ 2 x))]
			[else x]))

	(isDivisible2 20))


(printf "~a\n" (Problem005))