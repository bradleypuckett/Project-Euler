(define (Problem014)

	(define (nextCollatz n)
		(if (even? n)
			(/ n 2)
			(+ (* n 3) 1)))

	;; This collatzCount function works and executes relatively quickly even for large numbers
	;; but often recomputes the same sequence over and over.
	;; Execution takes 5.044 seconds

	(define (collatzCount n iters)
		(if (= n 1)
			iters
			(collatzCount (nextCollatz n) (+ iters 1))))

	;; This can be improved through memoization by adding a global hash table, which is checked
	;; whenever a collatz calculation is performed. Results are added to the table for each new value.
	;; This isn't exactly pure functional programming, but is an improvement for the sake of efficiency.
	;; Execution takes 2.876 seconds

	(define hashtbl (make-hash))

	(define (collatzCount2 n iters startnum)
		(if (= n 1)
			(begin (hash-set! hashtbl startnum iters)
			iters)
			(if (hash-has-key? hashtbl n)
				(let ()
					(define y (- (+ (hash-ref hashtbl n) iters) 1))
					(hash-set! hashtbl startnum y)
					y)
				(collatzCount2 (nextCollatz n) (+ iters 1) startnum))))


	(define (longestChain currlong currval testval range)
		(if (>= testval range)
			currlong 
			(let ()
				(define x (collatzCount2 testval 1 testval))
				(if (>= x currlong)
					(longestChain x testval (+ testval 1) range)
					(longestChain currlong currval (+ testval 1) range)))))

	(longestChain 0 0 1 1000000))

(printf "Longest chain has length ~a\n" (Problem014))