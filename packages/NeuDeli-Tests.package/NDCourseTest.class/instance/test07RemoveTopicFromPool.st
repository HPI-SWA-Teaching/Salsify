as yet unclassified
test07RemoveTopicFromPool
	self course removeTopicFromPool: 'ein Thema'.
	self assert: (self course topicPool includes: 'ein Thema') not