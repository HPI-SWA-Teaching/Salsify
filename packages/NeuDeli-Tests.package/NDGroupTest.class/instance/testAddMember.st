as yet unclassified
testAddMember
	self group addMember: self aUser.
	self assert: (self group members includes: self aUser)