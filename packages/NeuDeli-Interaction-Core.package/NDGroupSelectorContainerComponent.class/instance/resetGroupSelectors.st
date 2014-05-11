initialization
resetGroupSelectors
	| myGroup |
	self groupSelectors: OrderedCollection new.
	
	myGroup := self session user findGroupByCourse: self course.
	(myGroup members select: [:each | each ~= self session user]) 
		do: [:each | self addGroupSelector selectedUser: each].
	
	(self groupSelectors size < (self course maximumGroupSize -1))
		ifTrue: [self addGroupSelector].
	
	self saveOldSelectedUsers