problem002 :-
	sum_of_fibonacci(1, 1, 0, 4000000).

sum_of_fibonacci(Last, Current, Sum, Max) :-
	Max =< Current + Last,
	write(Sum),
	! .

sum_of_fibonacci(Last, Current, Sum, Max) :-
	0 is Current mod 2,
	Next is Current + Last,
	sum_of_fibonacci(Current, Next, Sum, Max).	

sum_of_fibonacci(Last, Current, Sum, Max) :-
	1 is Current mod 2,
	Next is Current + Last,
	Summ is Sum + Current,
	sum_of_fibonacci(Current, Next, Summ, Max).	