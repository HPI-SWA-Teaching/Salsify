as yet unclassified
testRemoveEmptyAssignment
	self course removeEmptyAssignments.
	self course assignments select: [:each | each title = ''].
	self assert: self course assignments isEmpty