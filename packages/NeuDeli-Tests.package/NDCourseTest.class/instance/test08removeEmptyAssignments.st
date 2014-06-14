tests
test08removeEmptyAssignments
	| course |
	course := NDCourse new.
	"The title of Assignments is '' initially"
	course addAssignment: NDAssignment new.
	course addAssignment: NDAssignment new.
	self assert: (course assignments size = 2).
	course removeEmptyAssignments.
	self assert: (course assignments isEmpty)