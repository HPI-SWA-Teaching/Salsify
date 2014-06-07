removing
removeEmptyAssignments 
	self assignments do: [:each | each title = '' ifTrue: [self removeAssignment: each]]