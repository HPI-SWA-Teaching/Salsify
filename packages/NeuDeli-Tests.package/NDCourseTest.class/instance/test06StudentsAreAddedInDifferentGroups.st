tests
test06StudentsAreAddedInDifferentGroups
	| course student1 student2 |
	course := NDCourse new.
	student1:= NDUser new.
	student2:= NDUser new.
	course 	
		addStudent: student1;
		addStudent: student2.
	self assert: ((course findGroupByUser: student1) ~= (course findGroupByUser: student2))