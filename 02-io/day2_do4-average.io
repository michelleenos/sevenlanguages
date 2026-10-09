/*
4. Add a slot called `myAverage` to a list that computes the average of all the
   numbers in a list. What happens if there are no numbers in a list? (Bonus:
   Raise an Io exception if ay item in the list is not a number.)
*/

myListWithAverage := List clone 

myListWithAverage myAverage := method(
	thelist := call target
	notNumber := thelist detect(v, v isKindOf(Number) not)
	return if(notNumber, "ERROR", thelist average)
)

// a list of all numbers
list1 := myListWithAverage clone
list1 append(2)
list1 append(7)
list1 append(4)
list1 append(10)

list1 myAverage println


// a list with numbers and a string
list2 := myListWithAverage clone 
list2 append(2)
list2 append(7)
list2 append(4)
list2 append("oops")
list2 append(3)

list2 myAverage println