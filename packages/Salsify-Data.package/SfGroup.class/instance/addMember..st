adding
addMember: aUser
	(self members includes: aUser) not
		ifTrue: [ self members add: aUser]