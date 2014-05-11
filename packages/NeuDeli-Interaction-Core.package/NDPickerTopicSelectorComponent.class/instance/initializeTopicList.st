initialization
initializeTopicList
	self topicList: OrderedCollection new. 
	self nullTopic: ''.
	self topicList add: self nullTopic.

	self initializeSelectedTopic.
	self topicList addAll: (self parent course topicPool select: [:each | (self group topicWishesContain: each) = false])