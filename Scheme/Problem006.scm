(define (Problem006)

	(define (sum-of-integers n)
 		(* (+ 1 n) n (/ 1 2)))

	(define (sum-of-squares n x accumulator)
		(if (<= n x)
			(sum-of-squares (+ n 1) x (+ (expt n 2) accumulator))
			accumulator))

	(define (square-of-sum n)
		(expt (sum-of-integers n) 2))


	(- (square-of-sum 100) (sum-of-squares 1 100 0))
)

(printf "~a\n" (Problem006))