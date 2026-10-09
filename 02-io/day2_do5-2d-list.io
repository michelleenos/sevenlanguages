/*
Do #2: Write a prototype for a two-dimensional list. The `dim(x, y)` method
should allocate a list of `y` lists that are `x` elements long. `set(x, y,
value)` should set a value, and `get(x, y)` should return that value.
*/

List2d := List clone 

List2d dim := method(x, y, 
	self setSize(y)
	for(i, 0, y - 1, 1, 
		toAdd := List clone
		toAdd setSize(x)
		self atPut(i, toAdd)
	)
)

List2d set := method(x, y, value, 
	listx := self at(x)
	listx atPut(y, value)
)

List2d get := method(x, y, 
	listx := self at(x)
	return listx at(y)
)


/***** DEMO *****/

list2d := List2d clone 
list2d dim(2, 3)

list2d println
// list(list(nil, nil), list(nil, nil), list(nil, nil))

list2d set(1, 0, "bye")
list2d set(0, 0, "hi")
list2d set(0, 1, 2)

list2d println
// list(list(hi, 2), list(bye, nil), list(nil, nil))

list2d get(1, 0) println
// bye