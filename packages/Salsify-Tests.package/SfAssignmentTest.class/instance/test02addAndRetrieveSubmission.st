tests
test02addAndRetrieveSubmission
	| submission group|
	submission := SfSubmission new.
	group := SfGroup new.
	self assignment addSubmission: submission forGroup: group.
	self assert: ((self assignment submissionsByGroup at: group) = submission).
	self assert: ((self assignment getSubmissionByGroup: group) = submission)