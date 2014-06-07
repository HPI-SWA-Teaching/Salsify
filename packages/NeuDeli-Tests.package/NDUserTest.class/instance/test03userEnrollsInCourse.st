testing
test03userEnrollsInCourse
	| user |
	user := NDUser new.
	user enrollIn: self course.
	self assert: (user studentIn includes: self course).
	self assert: (user isEnrolledIn: self course)