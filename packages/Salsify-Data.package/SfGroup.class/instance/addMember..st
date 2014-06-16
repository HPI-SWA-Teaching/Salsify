adding
addMember: aUser
	self members detect: [:each | each = aUser] 
		ifNone: [self members add: aUser]