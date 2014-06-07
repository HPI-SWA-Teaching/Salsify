testing
test02addAndRetrieveSubmission
	| submission group|
	submission := NDSubmission new.
	group := NDGroup new.
	self assignment addSubmission: submission forGroup: group.
	self assert: ((self assignment submissionsByGroup at: group) = submission).
	self assert: ((self assignment getSubmissionByGroup: group) = submission)