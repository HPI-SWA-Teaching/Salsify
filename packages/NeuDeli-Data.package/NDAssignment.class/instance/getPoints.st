submissionManaging
getPoints 
	^self assignmentParts inject: 0 into: [ :sum :each | sum + each points] 