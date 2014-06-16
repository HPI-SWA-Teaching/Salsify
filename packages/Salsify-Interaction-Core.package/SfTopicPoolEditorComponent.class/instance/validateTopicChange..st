as yet unclassified
validateTopicChange: value
	self removePreviousTopic.
	self topic: value.
	value = '' 
		ifFalse: [self course addTopicToPool: value]