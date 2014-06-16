as yet unclassified
mergeGroupOf: aUser into: ownGroup
	| theirGroup |
	theirGroup := self course findGroupByUser: aUser.
	
	(ownGroup size + (theirGroup size) > self course maximumGroupSize)
		ifFalse: [theirGroup members do: [: each | ownGroup addMember: each].
				theirGroup removeAllMembers.
				self course removeGroup: theirGroup]