searching
getNextAssignmentFor: aGroup
	| minDate minAssignment |
	
	minDate := Date fromString: '9999-01-01'.
	self removeEmptyAssignments.
	self assignments 
		do: [:each | | deadline |
					deadline := each getDeadlineFor: aGroup.
					deadline 
						ifNotNil: [((deadline  < minDate) & (deadline >= Date current)) 
									ifTrue: [minDate := deadline. 
											minAssignment := each]]].
	^minAssignment