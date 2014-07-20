adding
addTopicToPool: aString
	(self topicPool includes: aString) not
		ifTrue: [self topicPool add: aString]