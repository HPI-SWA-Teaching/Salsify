tests
test05addAndRemoveStudent
	| course student |
	course := NDCourse new.
	student := NDUser new.
	course addStudent: student.
	self assert: (course groups notEmpty).
	self assert: (course groups first members includes: student).
	course removeStudent: student.
	self assert: (course groups isEmpty)