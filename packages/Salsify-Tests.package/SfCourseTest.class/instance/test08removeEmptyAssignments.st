tests
test08removeEmptyAssignments
	| course |
	course := SfCourse new.
	"The title of Assignments is '' initially"
	course addAssignment: SfAssignment new.
	course addAssignment: SfAssignment new.
	self assert: (course assignments size = 2).
	course removeEmptyAssignments.
	self assert: (course assignments isEmpty)