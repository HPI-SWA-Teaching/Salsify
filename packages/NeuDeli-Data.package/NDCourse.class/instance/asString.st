as yet unclassified
asString
	| season |
	self isInSummer
		ifTrue: [season := 'Sommer']
		ifFalse: [season := 'Winter'].
	^self title, ' ', season, ' ', self year asString