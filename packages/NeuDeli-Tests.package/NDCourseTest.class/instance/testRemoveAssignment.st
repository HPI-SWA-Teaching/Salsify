as yet unclassified
testRemoveAssignment
	self course removeAssignment: self aAssignment.
	self assert: (self course assignments includes: self aAssignment) not