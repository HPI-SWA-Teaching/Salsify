as yet unclassified
findGroupByUser: aUser
	self groups
			do: [:eachGroup | eachGroup members 
											do: [:eachUser | eachUser = aUser 
																ifTrue: [^eachGroup]]].
	^nil