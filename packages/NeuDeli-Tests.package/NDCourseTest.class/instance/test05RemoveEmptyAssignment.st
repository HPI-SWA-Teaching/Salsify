as yet unclassified
test05RemoveEmptyAssignment
	self course removeEmptyAssignments.
	self course assignments select: [:each | each title = ''].
	self assert: self course assignments isEmpty