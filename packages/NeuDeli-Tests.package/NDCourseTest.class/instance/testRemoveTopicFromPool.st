as yet unclassified
testRemoveTopicFromPool
	self course removeTopicFromPool: 'ein Thema'.
	self assert: (self course topicPool includes: 'ein Thema') not