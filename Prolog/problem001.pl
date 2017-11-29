problem001 :-
	iterate_numbers(1, 1000, 0).

valid_multiple(C) :-
	0 is C mod 3;
	0 is C mod 5.

iterate_numbers(C, M, A) :-
	C >= M,
	write(A).

iterate_numbers(C, M, A) :-
	C < M,
	not(valid_multiple(C)),
	C1 is C + 1,
	iterate_numbers(C1, M, A).

iterate_numbers(C, M, A) :-
	C < M,
	valid_multiple(C),
	A1 is A + C,
	C1 is C + 1,
	iterate_numbers(C1, M, A1).
