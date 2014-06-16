as yet unclassified
addUserToList: aUser
	(self userList select: [:each | each = aUser])
	ifEmpty: [self userList add: aUser]