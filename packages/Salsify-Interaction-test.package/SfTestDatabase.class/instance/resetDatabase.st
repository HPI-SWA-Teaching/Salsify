as yet unclassified
resetDatabase
	| tutors |
	tutors := self createFakeUsers.
	self createFakeCourses: tutors.
	