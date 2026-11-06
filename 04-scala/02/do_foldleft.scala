def main() = {
	val list = List("hello", "goodbye", "maybe", "sunshine", "yo")

	val totalSize = list.foldLeft(0)((total, cur) => total + cur.size)

	println(totalSize)
}