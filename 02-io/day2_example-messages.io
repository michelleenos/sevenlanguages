myObject := Object clone 

myObject getSender := method(call sender)
myObject getTarget := method(call target)

myObject getMessage := method(call message)
myObject getMessageArgs := method(call message arguments)

writeln("SENDER: \n", myObject getSender)

writeln("TARGET: ", "\n", myObject getTarget)

writeln("MESSAGE: \n")
myObject getMessage("blah") println
writeln(myObject getMessage("blah"))


// writeln("MESSAGEARGS: \n", myObject getMessageArgs("blah"))
