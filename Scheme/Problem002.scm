(define (Problem002)

	(define (nextFibonacci last1 last2 accumulator)
		(if (>= (+ last1 last2) 4000000)
			accumulator
			(if (even? (+ last1 last2))
				(nextFibonacci last2 (+ last1 last2) (+ accumulator (+ last1 last2)))
				(nextFibonacci last2 (+ last1 last2) accumulator))))




	(nextFibonacci 0 1 0))

(printf "~a\n" (Problem002))