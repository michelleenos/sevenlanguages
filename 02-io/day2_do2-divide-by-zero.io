/* 

Do Day 2 #2: How would you change `/` to return 0 if the denominator is zero?


Sort of works. It successfully returns 0 if you attempt to divide by zero. But
if the denominator is NOT 0, I want to fall back to regular division, and I
can't figure out how to do that since I've just overriden the division operator.
So right now I am doing a naive brute-force implementation of division but
without the remainder. 

I feel like there must be a way to do this that doesn't involve literally
re-implementing division in our code but I don't know how!
*/

Number / := method(denom,
	if (denom == 0, 
		0, 
		num := call target
		done := false 
		i := 0
		while(
			done != true,
			if (num >= denom, num = num - denom; i = i + 1, done = true)
		)
		i
	)
)

(20 / 0) println 
// 0

(30 / 5) println
// 6

(9 / 2) println
// 4