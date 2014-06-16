tests
test07addAndRemoveTopic
	| course |
	course := SfCourse new.
	course addTopicToPool: 'Course Management System'.
	self assert: (course topicPool includes: 'Course Management System').
	course addTopicToPool: 'Course Management System'.
	self assert: (course topicPool size = 1).
	course removeTopicFromPool: 'Course Management System'.
	self assert:(course topicPool isEmpty)