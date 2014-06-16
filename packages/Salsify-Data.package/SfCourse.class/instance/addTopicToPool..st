adding
addTopicToPool: aTopicString
	self topicPool detect: [:each | each = aTopicString]
					ifNone: [self topicPool add: aTopicString]