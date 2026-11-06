def whileLoop() = {
	var i = 1 
	while (i <= 3) {
		println(i)
		i += 1 
	}
}

@main def doAWhileLoop() = {
	whileLoop()
}

// def forLoop = {
// 	println( "for loop using java-style iteration")
// 	for (i <- 0 until args.length) {
// 		println(args(i))
// 	}
// }

// @main def mainFn(args) = {
// 	println("for loop")
// 	for (i <- 0 until args.length) {
// 		println(args(i))
// 	}
// }