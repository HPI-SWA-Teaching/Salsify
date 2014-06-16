tests
test01addAndRemoveAssignment
	| course assignment |
	course := SfCourse new.
	assignment := SfUser new.
	course addAssignment: assignment.
	self assert: (course assignments includes: assignment).
	course removeAssignment: assignment.
	self assert: (course assignments isEmpty)