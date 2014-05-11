as yet unclassified
testAddAssignment
	self course addAssignment: self aAssignment.
	self assert: (self course assignments includes: self aAssignment)