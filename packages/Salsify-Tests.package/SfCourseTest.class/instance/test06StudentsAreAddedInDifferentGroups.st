tests
test06StudentsAreAddedInDifferentGroups
	| course student1 student2 |
	course := SfCourse new.
	student1:= SfUser new.
	student2:= SfUser new.
	course 	
		addStudent: student1;
		addStudent: student2.
	self assert: ((course findGroupByUser: student1) ~= (course findGroupByUser: student2))