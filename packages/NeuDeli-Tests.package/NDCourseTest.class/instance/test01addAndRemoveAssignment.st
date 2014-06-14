tests
test01addAndRemoveAssignment
	| course assignment |
	course := NDCourse new.
	assignment := NDUser new.
	course addAssignment: assignment.
	self assert: (course assignments includes: assignment).
	course removeAssignment: assignment.
	self assert: (course assignments isEmpty)