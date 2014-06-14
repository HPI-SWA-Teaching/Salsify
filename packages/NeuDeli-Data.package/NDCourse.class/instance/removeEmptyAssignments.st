removing
removeEmptyAssignments
	self assignments: (self assignments reject: [:each | each title = '']). 