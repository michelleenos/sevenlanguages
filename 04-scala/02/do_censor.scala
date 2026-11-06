trait Censor:
	val text: String
	var replacements = Map("shoot" -> "pucky", "darn" -> "beans")

	def censor(): String = {
		replacements.foldLeft(text)((currentText, r) => {
			val word = r._1 
			val regexp = s"""(?i)$word"""
			currentText.replaceAll(regexp, r._2)
		})
	}


class Book(val text: String) extends Censor {

}

def main() = {
	val mybook = new Book("Well, shoot! SHOOT! he said as he slipped over the ice and his darned sweater fell into the mud. Gosh darn it!")
	println(mybook.censor())
}