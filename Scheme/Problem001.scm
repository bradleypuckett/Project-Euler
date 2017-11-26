(define (Problem001)

	(define (isMultiple current end accumulator)
		(if (>= current end)
			accumulator
			(if (or (= 0 (modulo current 3)) (= 0 (modulo current 5)))
				(isMultiple (+ 1 current) end (+ current accumulator))
				(isMultiple (+ 1 current) end accumulator))))

	(isMultiple 1 1000 0))

(printf "~a\n" (Problem001))