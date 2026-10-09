fib := method(n, if(n == 0, 0, if(n == 2 or n == 1, 1, fib(n - 1) + fib(n - 2))))

if(System args at(1) == nil, 
	"specify a number pls" println, 
	n := System args at(1) asNumber; fib(n) println
)