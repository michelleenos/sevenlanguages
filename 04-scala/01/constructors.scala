class Person(first_name: String) {
	println("Outer constructor - first_name: " + first_name)

	def this(first_name: String, last_name: String) = {
		this(first_name)
		println("Inner constructor - first_name: " + first_name + "; last_name: " + last_name)
	}

	def talk() = println("hi")
}

def main() = {
	val bob = new Person("Bob")
	val bobTate = new Person("Bobby", "Tate")
}