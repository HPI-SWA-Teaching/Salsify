as yet unclassified
validateGroupChange: aUser
	| ownGroup theirGroup previouslySelectedUser |
	
	previouslySelectedUser := self selectedUser.
	previouslySelectedUser = aUser
		ifTrue: [^false].
	
	self parent isStateStillConsistent ifFalse: [^false].
	
	ownGroup := self course findGroupByUser: self session user.
	
	previouslySelectedUser = self nullUser
		ifFalse: [ownGroup removeMember: previouslySelectedUser.
					self course addGroup: (NDGroup new addMember: previouslySelectedUser)].

	aUser = self nullUser
		ifFalse: [self mergeGroupOf: aUser into: ownGroup]