as yet unclassified
test04RemoveAssignment
	self course removeAssignment: self aAssignment.
	self assert: (self course assignments includes: self aAssignment) not