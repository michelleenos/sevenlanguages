def doChore(chore: String): String = chore.match {
	case "clean dishes" => "scrub, dry"
	case "cook dinner" => "chop, sizzle"
	case _ => "whine, complain"
}

def factorial(n: Int): Int = n match {
	case 0 => 1 
	case x if x > 0 => factorial(n - 1) * n
}

def main() = {
	println(factorial(3))
	println(factorial(0))
	println(factorial(-1))
	// println(doChore("clean dishes"))
	// println(doChore("cook dinner"))
	// println(doChore("blah"))
}