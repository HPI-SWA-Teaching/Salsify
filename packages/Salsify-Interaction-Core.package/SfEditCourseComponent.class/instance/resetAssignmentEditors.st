initialization
resetAssignmentEditors
	self course removeEmptyAssignments.
	self course addAssignment: (SfAssignment new).

	self assignmentEditors: OrderedCollection new.
	self course assignments do: [:each | self addAssignmentEditor assignment: each].
	self distributeAssignmentEditorIDs