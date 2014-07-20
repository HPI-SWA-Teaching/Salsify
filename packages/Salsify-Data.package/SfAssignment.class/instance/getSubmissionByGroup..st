submissionManaging
getSubmissionByGroup: aSfGroup
	^self submissionsByGroup at: aSfGroup ifAbsent: [nil]