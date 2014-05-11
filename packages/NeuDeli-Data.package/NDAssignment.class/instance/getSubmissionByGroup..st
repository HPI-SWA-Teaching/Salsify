as yet unclassified
getSubmissionByGroup: aGroup
	^self submissionsByGroup at: aGroup ifAbsent: [nil]