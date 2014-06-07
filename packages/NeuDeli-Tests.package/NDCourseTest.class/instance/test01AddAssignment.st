as yet unclassified
test01AddAssignment
	self course addAssignment: self aAssignment.
	self assert: (self course assignments includes: self aAssignment)