submissionManaging
getPoints 
	^self assignmentParts inject: 0 into: [ :sum :each | each ifNotNil: [sum + each points]]