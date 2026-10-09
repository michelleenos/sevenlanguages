slower := Object clone 
faster := Object clone 

slower start := method(wait(1); writeln("slowly"))
faster start := method(wait(1); writeln("quickly"))

// waits for slower to finish, then faster
slower start; faster start

// starts both and continues
// slower @@start; faster @@start; wait(3)



// this example doesn't work 
// futureResult := Object clone
// futureResult := URL with("http://google.com/") @fetch

// writeln("do something immediately while fetch is happening...")
// writeln("fetched ", futureResult size, " bytes")
