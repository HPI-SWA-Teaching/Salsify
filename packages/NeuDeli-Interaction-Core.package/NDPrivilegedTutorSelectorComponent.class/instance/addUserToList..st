undefined
addUserToList: aUser
	(self userList select: [:each | each = aUser])
		ifEmpty: [self userList add: aUser]