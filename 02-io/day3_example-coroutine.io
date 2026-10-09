vizzini := Object clone

vizzini talk := method(
	"fezzik, are there rocks ahead" println
	yield
	"no more rhymes now, i mean it" println
	yield
)

fezzik := Object clone
fezzik rhyme := method(
	yield 
	"if there are we'll all be dead" println 
	yield 
	"anybody want a peanut?" println
)

vizzini @@talk; fezzik @@rhyme

Coroutine currentCoroutine pause
