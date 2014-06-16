submissionManaging
getSubmissionByGroup: aGroup
	^self submissionsByGroup at: aGroup ifAbsent: [nil]