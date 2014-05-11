as yet unclassified
testRemoveMember
	self group members add: self aUser.
	self group removeMember: self aUser.
	self assert: (self group members includes: self aUser) not