tests
test11setGroupNumbers
	| course groupNumbers|
	course := NDCourse new.
	course addStudent: NDUser new.
	course addStudent: NDUser new.
	course addStudent: NDUser new.
	course setGroupNumbers.
	groupNumbers := course groups collect: [:each | each number].
	self assert: (groupNumbers size = groupNumbers asSet size).
	self assert: (groupNumbers allSatisfy: [:each | each between: 1 and: course groups size])