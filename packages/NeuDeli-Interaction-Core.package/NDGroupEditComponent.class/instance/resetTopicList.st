as yet unclassified
resetTopicList
	self topicList: OrderedCollection new.
	self topicList add: '';
		addAll: self course topicPool