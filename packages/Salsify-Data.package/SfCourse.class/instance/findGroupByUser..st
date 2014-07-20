searching
findGroupByUser: aUser
	^ self groups detect: [:each | each members includes: aUser ]